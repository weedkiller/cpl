﻿var UserDashboard = {
    init: function () {
        UserDashboard.loadHistoryDatatable();
        UserDashboard.loadSlider();
    },
    loadSlider: function () {
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
            auto: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1024: {
                    items: 1
                },
                1440: {
                    items: 2
                },
                2560: {
                    items: 3
                }
            }
        });
    },
    loadHistoryDatatable: function () {
        $('#dt-history').DataTable({
            "processing": true,
            "serverSide": true,
            "autoWidth": false,
            "ajax": {
                url: "/Admin/SearchUserGameHistory",
                type: 'POST',
                data: {
                    userId: $("#Id").val()
                }
            },
            "language": DTLang.getLang(),
            "columns": [
                {
                    "data": "CreatedDate",
                    "render": function (data, type, full, meta) {
                        return full.createdDateInString;
                    }
                },
                {
                    "data": "CreatedTimeInString",
                    "render": function (data, type, full, meta) {
                        return full.createdTimeInString;
                    }
                },
                {
                    "data": "GameType",
                    "render": function (data, type, full, meta) {
                        if (full.gameType == "LOTTERY")
                            return "Lottery";
                        else
                            return "Price Prediction"
                    }
                },
                {
                    "data": "Amount",
                    "render": function (data, type, full, meta) {
                        return "<i class='cpl-token-grey-sm'></i> " + full.amountInString;
                    }
                },
                {
                    "data": "Result",
                    "render": function (data, type, full, meta) {
                        if (full.result == "WIN")
                            return "<div class='badge badge-success'>Win</div>";
                        else if (full.result == "LOSE")
                            return "<div class='badge badge-danger'>Lose</div>";
                        else if (full.result == "KYC_PENDING")
                            return "<div class='badge badge-warning'>KYC Pending</div>";
                        else
                            return "";
                    }
                },
                {
                    "data": "Award",
                    "render": function (data, type, full, meta) {
                        return full.awardInString;
                    }
                },
                {
                    "data": "Balance",
                    "render": function (data, type, full, meta) {
                        return full.balanceInString;
                    }
                }
            ],
        });
    }
}

$(document).ready(function () {
    UserDashboard.init();
});