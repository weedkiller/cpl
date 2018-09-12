﻿var PurchasedLotteryHistoryViewComponent = {
    lotteryHistoryDataTable: null,
    init: function () {
        PurchasedLotteryHistoryViewComponent.loadLotteryHistoryDataTable()
    },
    loadLotteryHistoryDataTable: function () {
        return $("#dt-purchased-lottery-history").DataTable({
            "processing": true,
            "serverSide": true,
            "autoWidth": false,
            "ajax": {
                url: "/Admin/SearchPurchasedLotteryHistory",
                type: 'POST',
                data: {
                    lotteryCategoryId: $("#lottery-category-Id").val(), // To be assigned later
                }
            },
            "language": DTLang.getLang(),
            "columns": [
                {
                    "data": "UserName",
                    "render": function (data, type, full, meta) {
                        return full.userName;
                    }
                },
                {
                    "data": "Status",
                    "render": function (data, type, full, meta) {
                        return full.status;
                    }
                },
                {
                    "data": "NumberOfTicket",
                    "render": function (data, type, full, meta) {
                        return full.numberOfTicket;
                    }
                },
                {
                    "data": "NumberOfTicketInString",
                    "render": function (data, type, full, meta) {
                        return full.totalPurchasePrice;
                    }
                },
                {
                    "data": "Title",
                    "render": function (data, type, full, meta) {
                        return full.title;
                    }
                },
                {
                    "data": "PurchaseDateTimeInString",
                    "render": function (data, type, full, meta) {
                        return full.purchaseDateTimeInString;
                    }
                },
            ],
        });
    },
};

$(document).ready(function () {
    PurchasedLotteryHistoryViewComponent.init();
});
