﻿using ScraBoy.Features.CMS.Comments;
using ScraBoy.Features.CMS.Interest;
using ScraBoy.Features.CMS.Topic;
using ScraBoy.Features.CMS.User;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ScraBoy.Features.CMS.Blog
{
    public class Post
    {
        [Display(Name = "Slug")]
        public string Id { get; set; }

        [Display(Name = "Title")]
        [Required]
        [StringLength(80,MinimumLength = 3,ErrorMessage = "Cant be empty")]
        public string Title { get; set; }

        [AllowHtml]
        [Display(Name = "Post Content")]
        [Required]
        [StringLength(int.MaxValue,MinimumLength = 7)]
        public string Content { get; set; }
        [Required]
        public DateTime Created { get; set; }
        [Required]
        public DateTime Updated { get; set; }

        [Required(ErrorMessage ="Please Set Date")]
        public DateTime Published { get; set; }
        private IList<string> _tags = new List<String>();

        public IList<string> Tags
        {
            get { return _tags; }
            set { _tags = value; }
        }
        [Required(ErrorMessage ="Tag can't be empty")]
        public string CombinedTags
        {
            get
            {
                return string.Join(",",_tags).TrimEnd(',');
            }
            set
            {
                _tags = value.Split(',').Select(s => s.Trim()).ToList();
            }
        }
        public string AuthorId { get; set; }
        [ForeignKey("AuthorId")]
        public virtual CMSUser Author { get; set; }
        public int CategoryId { get; set; }
        [ForeignKey("CategoryId")]
        public virtual Category Category { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual ICollection<Voting> Votings { get; set; }
        [Display(Name = "Upload Image")]
        public string UrlImage { get; set; }

        [NotMapped]
        public HttpPostedFileBase ImageFile { get; set; }
    }
    public class ViewPost
    {
        [Key]
        public int id { get; set; }
        [Required]
        public string ViewId { get; set; }
        public int Count { get; set; }
        public string PostId  { get; set; }
        [ForeignKey("PostId")]
        public virtual Post Post { get; set; }
        public DateTime LastViewed { get; set; }
    }
}