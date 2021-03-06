﻿using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CPL.Models
{
    public class SliderDetailAdminViewModel
    {
        public int Id { get; set; }
        public string DesktopImage { get; set; }
        public string MobileImage { get; set; }
        public int LangId { get; set; }
        public int SliderId { get; set; }

        public LangViewModel Lang { get; set; }
        public IFormFile DesktopImageFile { get; set; }
        public IFormFile MobileImageFile { get; set; }
    }
}
