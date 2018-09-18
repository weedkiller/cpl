﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CPL.Models
{
    public class PieChartViewComponentViewModel
    {
        public string SeriesName { get; set; }
        public List<PieChartData> Data { get; set; }
    }

    public class PieChartData
    {
        public string Label { get; set; }
        public decimal Value { get; set; }
        public string Color { get; set; }
    }
}
