﻿var GameHistory = {
    init: function () {
        GameHistory.loadBetStatistic();
        GameHistory.loadHoldingPercentage();
    },
    loadBetStatistic: function () {
        $.ajax({
            url: '/History/GetDataLineChart',
            type: "POST",
            chartData: {},
            success: function (chartData) {
                if (chartData.success) {
                    var a = chartData.message;

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
                            title: {
                                text: 'Date'
                            }
                        },
                        yAxis: {
                            title: {
                                text: ''
                            },
                        },
                        tooltip: {
                            headerFormat: '<b>{series.name}</b><br>',
                            pointFormat: '{point.x:%e. %b}: {point.y:.2f} CPL'
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

                    var asset = { data: [], name: 'Asset Changes', color: '#4267b2' };
                    var invest = { data: [], name: 'Monthly Invests', color: '#f7931a' };
                    var prize = { data: [], name: 'Prizes', color: '#828384' };

                    $.each(JSON.parse(a).AssetChange, function (index, value) {
                        date = new Date(value.Date);
                        now_utc = Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate());
                        val = value.Amount;
                        asset.data.push([now_utc, val]);
                    });
                    asset.data.sort();

                    $.each(JSON.parse(a).MonthlyInvest, function (index, value) {
                        date = new Date(value.Date);
                        now_utc = Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate());
                        val = value.Amount;

                        invest.data.push([now_utc, val]);
                    });
                    invest.data.sort();

                    $.each(JSON.parse(a).BonusChange, function (index, value) {
                        date = new Date(value.Date);
                        now_utc = Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate());
                        val = value.Amount;

                        prize.data.push([now_utc, val]);
                    });
                    prize.data.sort();

                    // Push the completed series
                    options.series.push(asset, invest, prize);

                    // Create the plot
                    new Highcharts.Chart("bet-statistic-chart", options);
                }
            }
        });
    },
    loadHoldingPercentage: function () {
        $.ajax({
            url: '/History/GetDataPieChart',
            type: "POST",
            data: {},
            success: function (data) {
                if (data.success) {
                    var a = data.message;
                    Highcharts.chart('holding-percentage-chart', {
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
                            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        exporting: {
                            enabled: false
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: false
                                },
                                showInLegend: true
                            }
                        },
                        series: [{
                            name: 'Balance',
                            colorByPoint: true,
                            data: [{
                                name: 'CPL',
                                y: JSON.parse(a).CPLPercentage,
                                sliced: true,
                                selected: true,
                                color: '#4267b2'
                            }, {
                                name: 'BTC',
                                y: JSON.parse(a).BTCPercentage,
                                color: '#f7931a'
                            }, {
                                name: 'ETH',
                                y: JSON.parse(a).ETHPercentage,
                                color: '#828384'
                            }]
                        }]
                    });
                }
            }
        });
    },
}

$(document).ready(function () {
    GameHistory.init();
});