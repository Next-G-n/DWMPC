/* global $ */
/* this is an example for validation and change events */
$.fn.numericInputExample = function () {
    'use strict';
    var element = $(this),
        footer = element.find('tfoot tr'),
        dataRows = element.find('tbody tr'),
        initialTotal = function () {
            var column, total;
            for (column = 1; column < footer.children().size(); column++) {
                total = 0;
                dataRows.each(function () {
                    var row = $(this);
                    total += parseFloat(row.children().eq(column).text());

                });
                footer.children().eq(column).text(total);
            }
        };
    element.find('td').on('change', function (evt) {
        var cell = $(this),
            column = cell.index(),
            total = 0;

        if (column === 0) {
            return;
        }
        var i=1;
        element.find('tbody tr').each(function () {

            var row = $(this);
            total += parseFloat(row.children().eq(column).text());
            var convertedIntoArray = [];

            $('table#edit_datable_1 tr').each(function () {
                var actualData = $(this).find('td');
                if (actualData.length > 0) {
                    var rowDataArray = [];
                    actualData.each(function() {
                        rowDataArray.push($(this).text());
                    });
                    i+=1;
                    convertedIntoArray.push(rowDataArray);
                }
            });
            for(i=0; i<=convertedIntoArray.length;++i){
                var t=i;
                t+=1;
                for(var x=1;x<=convertedIntoArray[i].length; ++x){

                    switch (x){
                        case 1:
                            $('#C_Male'+t).val(convertedIntoArray[i][x]);
                            break;
                        case 2:
                            $('#C_Female'+t).val(convertedIntoArray[i][x]);
                            break;
                        case 3:
                            $('#N_Male'+t).val(convertedIntoArray[i][x]);
                            break;
                        case 4:
                            $('#N_Female'+t).val(convertedIntoArray[i][x]);
                            break;
                        case 5:
                            $('#Salary'+t).val(convertedIntoArray[i][x]);
                            break;
                    }



                }


            }


        });

        if (column === 1 && total > 5000) {
            $('.alert').show();
            return false; // changes can be rejected
        } else {
            $('.alert').hide();
            footer.children().eq(column).text(total);

        }
    }).on('validate', function (evt, value) {
        var cell = $(this),
            column = cell.index();
        if (column === 0) {
            return !!value && value.trim().length > 0;
        } else {
            return !isNaN(parseFloat(value)) && isFinite(value) && $('#goo').val(column);

        }

    });
    initialTotal();
    return this;
};
