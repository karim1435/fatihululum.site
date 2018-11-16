﻿using ScraBoy.Features.CMS.ModelBinders;
using ScraBoy.Features.CMS.Topic;
using ScraBoy.Features.CMS.Upload;
using ScraBoy.Features.CMS.User;
using ScraBoy.Features.Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace ScraBoy.Features.CMS.Blog
{
    [RoutePrefix("Post")]
    [Authorize]
    public class PostController : UploadController
    {
        private readonly string pathFolder = "~/Image/post/";
        private readonly IPostRepository postRepository;
        private readonly IUserRepository userRepository;
        private readonly ICategoryRepository categoryRepositoriy;
        public PostController(IPostRepository postRepo,IUserRepository userRepo,ICategoryRepository categoryRepository)
        {
            this.postRepository = postRepo;
            this.userRepository = userRepo;
            this.categoryRepositoriy = categoryRepository;
        }
        public PostController() : this(new PostRepository(),new UserRepository(),new CategoryRepository()) { }

        [Route("")]
        public async Task<ActionResult> Index(int? page,string currentFilter)
        {
            int pageNumber = (page ?? 1);

            if(!User.IsInRole("author"))
            {
                return View("Index","",this.postRepository.GetPagedList(currentFilter,pageNumber,null));
            }

            var user = await GetLoggedInUser();

            return View("Index","",this.postRepository.GetPagedList(currentFilter,pageNumber,user.Id));
        }
        public async Task<ViewResult> Search(string search)
        {
            ViewBag.Filter = search;

            if(!User.IsInRole("author"))
            {
                return View("Index","",this.postRepository.GetPagedList(search,1,null));
            }

            var user = await GetLoggedInUser();

            return View("Index","",this.postRepository.GetPagedList(search,1,user.Id));
        }
        private async Task SetViewBag()
        {
            var catRepository = new CategoryRepository();
            var user = await GetLoggedInUser();
            ViewBag.Categories = await categoryRepositoriy.GetByUser(user.Id);
        }

        [HttpGet]
        [Route("create")]
        public async Task<ActionResult> Create()
        {
            await SetViewBag();
            return View(new Post());
        }

        [HttpPost]
        [Route("create")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create(Post model)
        {
            if(!ModelState.IsValid)
            {
                await SetViewBag();
                return View(model);
            }
            if(model.ImageFile == null)
            {
                ModelState.AddModelError(String.Empty,"Please Upload image to continue");
                await SetViewBag();
                return View(model);
            }
            var filePath = GetFullFile(model.ImageFile.FileName);

            if(!CheckFileType(filePath))
            {
                ModelState.AddModelError(string.Empty,"Please upload image");
                await SetViewBag();
                return View(model);
            }

            model.UrlImage = pathFolder + filePath;

            var user = await GetLoggedInUser();

            model.Tags = model.Tags.Select(tag => tag.MakeUrlFriednly()).ToList();
            model.Created = DateTime.Now;
            model.Updated = DateTime.Now;
            model.AuthorId = user.Id;
            model.Id = string.Join(model.AuthorId,model.Tags.Distinct()) + "iqro" + "fatihululum" + model.Created.ToString("yymmddss") + model.Title;
            model.Id = model.Id.MakeUrlFriednly();

            try
            {
                await postRepository.Create(model);
                SaveImage(model.ImageFile,pathFolder,filePath);

                return RedirectToAction("Index");
            }
            catch(Exception e)
            {
                ModelState.AddModelError("key",e);
                await SetViewBag();
                return View(model);
            }

        }

        [HttpGet]
        [Route("View/{postId}")]
        [Authorize]
        public async Task<ActionResult> Details(string postId)
        {
            var post = await this.postRepository.GetAsync(postId);
            if(post == null)
            {
                return HttpNotFound();
            }
            if(User.IsInRole("author"))
            {
                var user = await GetLoggedInUser();

                if(post.AuthorId != user.Id)
                {
                    return new HttpUnauthorizedResult();
                }
            }
            return View(post);
        }
        [HttpGet]
        [Route("edit/{postId}")]
        public async Task<ActionResult> Edit(string postId)
        {
            await SetViewBag();

            var post = await postRepository.GetAsync(postId);

            if(post == null)
            {
                return HttpNotFound();
            }
            if(User.IsInRole("author"))
            {
                var user = await GetLoggedInUser();

                if(post.AuthorId != user.Id)
                {
                    return new HttpUnauthorizedResult();
                }
            }

            return View(post);
        }

        [HttpPost]
        [Route("edit/{postId}")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit(Post model,string postId)
        {
            if(!ModelState.IsValid)
            {
                await SetViewBag();
                return View(model);
            }
            var user = await GetLoggedInUser();

            var post = await postRepository.GetAsync(postId);

            if(User.IsInRole("author"))
            {
                try
                {
                    if(post.AuthorId != user.Id)
                    {
                        return new HttpUnauthorizedResult();
                    }
                }
                catch { }

            }

            if(model.ImageFile != null)
            {
                DeleteOldImage(post.UrlImage);

                var filePath = GetFullFile(model.ImageFile.FileName);

                if(!CheckFileType(filePath))
                {
                    ModelState.AddModelError(string.Empty,"Please upload image");
                    await SetViewBag();
                    return View(model);
                }

                SaveImage(model.ImageFile,pathFolder,filePath);

                model.UrlImage = pathFolder + filePath;
            }
            else
            {
                model.UrlImage = post.UrlImage;
            }

            model.Tags = model.Tags.Select(tag => tag.MakeUrlFriednly()).ToList();

            try
            {
                postRepository.Edit(postId,model);

                return RedirectToAction("Index");
            }
            catch(KeyNotFoundException e)
            {
                return HttpNotFound();
            }
            catch(Exception e)
            {
                ModelState.AddModelError("",e.Message);
                await SetViewBag();
                return View(model);
            }
        }

        [HttpGet]
        [Route("delete/{postId}")]
        [Authorize]
        public async Task<ActionResult> Delete(string postId)
        {
            var post = await postRepository.GetAsync(postId);

            if(post == null)
            {
                return HttpNotFound();
            }

            return View(post);
        }

        [HttpPost]
        [Route("delete/{postId}")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Delete(string postId,string foo)
        {
            try
            {
                var post = await postRepository.GetAsync(postId);
                DeleteOldImage(post.UrlImage);

                postRepository.Delete(postId);

                return RedirectToAction("Index");
            }
            catch(KeyNotFoundException e)
            {
                return HttpNotFound();
            }
        }
        private async Task<CMSUser> GetLoggedInUser()
        {
            return await userRepository.GetUserByNameAsync(User.Identity.Name);
        }

        private bool _isDisposed;
        protected override void Dispose(bool disposing)
        {

            if(!_isDisposed)
            {
                userRepository.Dispose();
            }
            _isDisposed = true;

            base.Dispose(disposing);
        }
    }
}