/*FooTable Init*/
$(function () {
    "use strict";

    /*Init FooTable*/
    $('#footable_1,#footable_3').footable();

    /*Editing FooTable*/


    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();

    var future = new Date();
    future.setDate(future.getDate() + 30);
    var dd1 = String(future.getDate()).padStart(2, '0');
    var mm1 = String(future.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy1 = future.getFullYear();

    today = mm + '/' + dd + '/' + yyyy;
    future= mm1 + '/' + dd1 + '/' + yyyy1;
    var date=today+" - "+future;


    $("#startedOn").val(date);

    var $modal = $('#editor-modal'),
        $editor = $('#editor'),
        $editorTitle = $('#editor-title'),
        ft = FooTable.init('#footable_2', {
            editing: {
                enabled: true,
                addRow: function(){
                    $modal.removeData('row');
                    $editor[0].reset();
                    $editorTitle.text('Add a new row');
                    $editor.find('#action_id').val("Registration");
                    $editor.find('#yes').hide();
                    $("#WasteType").selectpicker("refresh");
                    document.getElementById("startedOn").value=date;
                    $modal.modal('show');
                },
                editRow: function(row){
                    var values = row.val();
                    $editor.find('#id').val(values.id);
                    $editor.find('#WasteType').val(values.WasteType);
                    $editor.find('#GeneratedQuantity').val(values.GeneratedQuantity);
                    $editor.find('#AmountShipped').val(values.AmountShipped);
                    $editor.find('#action_id').val("Editing");
                    $editor.find('#Returns').val(values.Returns);

                    var today = new Date(values.startedOn);
                    var dd = String(today.getDate()).padStart(2, '0');
                    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                    var yyyy = today.getFullYear();

                    var future = new Date(values.dob);
                    var dd1 = String(future.getDate()).padStart(2, '0');
                    var mm1 = String(future.getMonth() + 1).padStart(2, '0'); //January is 0!
                    var yyyy1 = future.getFullYear();

                    today = mm + '/' + dd + '/' + yyyy;
                    future= mm1 + '/' + dd1 + '/' + yyyy1;
                    var date=today+" - "+future;

                    $editor.find('#startedOn').val(date);

                    if(values.WasteType==="Ferrous Metal" ||
                        values.WasteType==="Brass" ||
                        values.WasteType==="Copper" ||
                        values.WasteType==="Aluminium" ||
                        values.WasteType==="Scrap Batteries" ||
                        values.WasteType==="Cans" ||
                        values.WasteType==="Paper" ||
                        values.WasteType==="Plastics" ||
                        values.WasteType==="Used Oil" ||
                        values.WasteType==="Glass"){

                        $editor.find('#yess').val("");
                        $editor.find('#yes').hide();
                        $("#WasteType").selectpicker("refresh");
                    } else{

                        $('#WasteType').val('yes');
                        $editor.find('#yes').show();
                        $editor.find('#yess').val(values.WasteType);
                        $("#WasteType").selectpicker("refresh");
                    }


                    $modal.data('row', row);
                    $editorTitle.text('Edit row #' + values.id);
                    $modal.modal('show');
                },
                deleteRow: function(row){
                    if (confirm('Are you sure you want to delete the row?')){
                        row.delete();
                    }
                }
            }
        }),
        uid = document.getElementById("Report_id").value;

    $editor.on('submit', function(e){
        if (this.checkValidity && !this.checkValidity()) return;
        e.preventDefault();

        var row = $modal.data('row'),

            values = {
                id: $editor.find('#id').val(),
                WasteType: $editor.find('#WasteType').val(),
                GeneratedQuantity: $editor.find('#GeneratedQuantity').val(),
                AmountShipped: $editor.find('#AmountShipped').val(),
                Returns: $editor.find('#Returns').val(),
                Date: $editor.find('#startedOn').val(),
                startedOn: moment($editor.find('#startedOn').val(), 'DD-MM-YYYY'),
                dob: moment($editor.find('#dob').val(), 'DD-MM-YYYY')
            };

        if (row instanceof FooTable.Row){
            if(values.WasteType==="yes"){
                values.WasteType=$editor.find('#yess').val();
                $editor.find('#yes').hide();
            } else{
                values.WasteType=$editor.find('#WasteType').val();
            }
            const splitDate=$editor.find('#startedOn').val();
            var date2=splitDate.split(" - ");
            values.startedOn=moment(date2[0], 'MM-DD-YYYY');
            values.dob=moment(date2[1], 'MM-DD-YYYY');
            $("#WasteType").selectpicker("refresh");
            row.val(values);
        } else {
            if(values.WasteType==="yes"){
                values.WasteType=$editor.find('#yess').val();
                $editor.find('#yes').hide();
            } else{
                values.WasteType=$editor.find('#WasteType').val();
            }
            const splitDate=$editor.find('#startedOn').val();
            var date=splitDate.split(" - ");
            values.startedOn=moment(date[0], 'MM-DD-YYYY');
            values.dob=moment(date[1], 'MM-DD-YYYY');
            values.id = uid++;
            $("#WasteType").selectpicker("refresh");
            ft.rows.add(values);

        }
        $modal.modal('hide');
    });
});
