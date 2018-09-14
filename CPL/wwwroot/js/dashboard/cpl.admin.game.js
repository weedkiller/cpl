﻿var AdminGameManagement = {
    init: function () {
        AdminGameManagement.loadStatisticChart();
        AdminGameManagement.bindSelectTimeRange();
        AdminGameManagement.loadHoldingRevenuePercentage();
        AdminGameManagement.loadHoldingTerminalPercentage();
    },
    bindSelectTimeRange: function () {
        $("#Category").on("changed.bs.select",
            function (e, clickedIndex, newValue, oldValue) {
                AdminGameManagement.loadStatisticChart(this.value);
                $("#GameSummaryStatistic").load("/ViewComponent/GetGameSummaryStatisticViewComponent?periodInDay=" + this.value);
            });
    },
    loadStatisticChart: function (period) {
        $.ajax({
            url: '/Admin/GetDataGameSummaryStatisticChart',
            type: "POST",
            data: {
                periodInDay: period
            },
            chartData: {},
            success: function (chartData) {
                if (chartData.success) {
                    var a = chartData.message;

                    Highcharts.setOptions({
                        global: {
                            useUTC: false
                        }
                    });
                    Highcharts.setOptions({
                        lang: DTLang.getHighChartLang()
                    });
                    options = {
                        chart: {
                            type: 'spline'
                        },
                        title: {
                            text: null
                        },
                        subtitle: {
                            text: null
                        },
                        exporting: {
                            enabled: false
                        },
                        xAxis: {
                            type: 'datetime',
                            dateTimeLabelFormats: { // don't display the dummy year
                                month: '%e. %b',
                                year: '%b'
                            },
                        },
                        yAxis: {
                            title: {
                                text: ''
                            },
                        },
                        tooltip: {
                            headerFormat: '<b>{series.name}</b><br>',
                            pointFormat: '{point.x:%e. %b}: {point.y}'
                        },

                        plotOptions: {
                            spline: {
                                marker: {
                                    enabled: true
                                }
                            }
                        },

                        series: []

                    };

                    var revenue = { data: [], name: $("#TotalRevenue").val(), color: '#4267b2' };
                    var sale = { data: [], name: $("#TotalSale").val(), color: '#f7931a' };
                    var pageView = { data: [], name: $("#PageView").val(), color: '#828384' };
                    var totalPlayers = { data: [], name: $("#TotalPlayers").val(), color: '#F69BF9' };

                    if (JSON.parse(a).TotalSaleChanges.length != 0) {
                        $.each(JSON.parse(a).TotalSaleChanges, function (index, value) {
                            now = moment(value.Date).valueOf();
                            val = value.Value;
                            sale.data.push([now, val]);
                        });
                    }
                    else {
                        now = moment().valueOf();
                        val = 0;
                        sale.data.push([now, val]);
                    }
                    sale.data.sort();

                    if (JSON.parse(a).TotalRevenueChanges.length != 0) {
                        $.each(JSON.parse(a).TotalRevenueChanges, function (index, value) {
                            now = moment(value.Date).valueOf();
                            val = value.Value;
                            revenue.data.push([now, val]);
                        });
                    }
                    else {
                        now = moment().valueOf();
                        val = 0;
                        revenue.data.push([now, val]);
                    }
                    revenue.data.sort();

                    if (JSON.parse(a).PageViewChanges.length != 0) {
                        $.each(JSON.parse(a).PageViewChanges, function (index, value) {
                            now = moment(value.Date).valueOf();
                            val = value.Count;
                            pageView.data.push([now, val]);
                        });
                    }
                    else {
                        now = moment().valueOf();
                        val = 0;
                        pageView.data.push([now, val]);
                    }
                    pageView.data.sort();

                    if (JSON.parse(a).TotalPlayersChanges.length != 0) {
                        $.each(JSON.parse(a).TotalPlayersChanges, function (index, value) {
                            now = moment(value.Date).valueOf();
                            val = value.Value;
                            totalPlayers.data.push([now, val]);
                        });
                    }
                    else {
                        now = moment().valueOf();
                        val = 0;
                        totalPlayers.data.push([now, val]);
                    }
                    totalPlayers.data.sort();

                    // Push the completed series
                    options.series.push(revenue, sale, pageView, totalPlayers);

                    // Create the plot
                    new Highcharts.Chart("statistic-chart", options);
                }
            }
        });
    },
    loadHoldingRevenuePercentage: function () {
        $.ajax({
            url: '/Admin/GetDataRevenuePercentagePieChart',
            type: "POST",
            data: {},
            success: function (data) {
                if (data.success && (data.revenueLotteryGame > 0 || data.revenuePricePredictionGame > 0)) {
                    Highcharts.chart('holding-revenue-percentage-chart', {
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: null
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.y:.1f} CPL</b>'
                        },
                        exporting: {
                            enabled: false
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: false,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.percentage:.1f} %',
                                    distance: -50,
                                },
                                showInLegend: true
                            }
                        },
                        series: [{
                            name: $("#revenue").val(),
                            colorByPoint: true,
                            data: [{
                                name: $("#lottery").val(),
                                y: data.revenueLotteryGame,
                                sliced: false,
                                selected: false,
                                color: '#ff0000'
                            }, {
                                name: $("#pricePrediction").val(),
                                y: data.revenuePricePredictionGame,
                                color: '#0092cd'
                            }]
                        }]
                    });
                }
                else {
                    $("#holding-revenue-percentage-chart").addClass("d-none");
                    $("#holding-revenue-percentage-no-assets").removeClass("d-none");
                }
            }
        });
    },
    loadHoldingTerminalPercentage: function () {
        $.ajax({
            url: '/Admin/GetDataTeminalPercentagePieChart',
            type: "POST",
            data: {},
            success: function (data) {
                debugger;
                if (data.success && (data.pc > 0 || data.mobile > 0 || data.table > 0)) {
                    Highcharts.chart('holding-terminal-percentage-chart', {
                        chart: {
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false,
                            type: 'pie'
                        },
                        title: {
                            text: null
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.y:.1f}</b>'
                        },
                        exporting: {
                            enabled: false
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: false,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    format: '<b>{point.percentage:.1f} %',
                                    distance: -50,
                                },
                                showInLegend: true
                            }
                        },
                        series: [{
                            name: $("#terminal").val(),
                            colorByPoint: true,
                            data: [{
                                name: "PC",
                                y: data.pc,
                                sliced: false,
                                selected: false,
                                color: '#4267b2'
                            }, {
                                name: "Mobile",
                                y: data.mobile,
                                color: '#f7931a'
                            }, {
                                name: "Tablel",
                                y: data.table,
                                color: '#828384'
                            }]
                        }]
                    });
                }
                else {
                    $("#holding-terminal-percentage-chart").addClass("d-none");
                    $("#holding-terminal-percentage-no-assets").removeClass("d-none");
                }
            }
        });
    },
}

$(document).ready(function () {
    AdminGameManagement.init();
});