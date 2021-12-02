/*FooTable Init*/
$(function () {
	"use strict";
	var number=document.getElementById("count_Employees").value;
	var number2=Number(number)+Number(1);

	/*Init FooTable*/
	$('#footable_1,#footable_3').footable();

	/*Editing FooTable*/

	var $modal = $('#editor-modal'),
		$editor = $('#editor'),
		$editorTitle = $('#editor-title'),
		$Action = $('#action'),
		ft = FooTable.init('#footable_2', {
			editing: {
				enabled: true,
				addRow: function(){
					$modal.removeData('row');
					$editor[0].reset();
					$editorTitle.text('Add a New Employee');
					$modal.modal('show');
					$Action.val('RegisteringEmployee');
				},
				editRow: function(row){
					var values = row.val();
					$editor.find('#id').val(values.id);
					$editor.find('#action').val("EditingEmployee");
					$editor.find('#firstName').val(values.firstName);
					$editor.find('#lastName').val(values.lastName);
					$editor.find('#jobTitle').val(values.jobTitle);
					$editor.find('#Qualification').val(values.Qualification);
					$editor.find('#Training').val(values.Training);
					$("#Training").selectpicker("refresh");
					$editor.find('#Employee_Id').val(values.Employee_Id);
					$modal.data('row', row);
					$editorTitle.text('Edit Employee #' + values.id);
					$modal.modal('show');
				},
				deleteRow: function(row){
					if (confirm('Are you sure you want to delete this Employee?')){
						row.delete();
					}
				}
			}
		}),



	uid = number2;

	$editor.on('submit', function(e){
		if (this.checkValidity && !this.checkValidity()) return;
		e.preventDefault();
		var row = $modal.data('row'),
			values = {
				id: $editor.find('#id').val(),
				firstName: $editor.find('#firstName').val(),
				lastName: $editor.find('#lastName').val(),
				jobTitle: $editor.find('#jobTitle').val(),
				Qualification: $editor.find('#Qualification').val(),
				Training: $editor.find('#Training').val(),
				Employee_Id: $editor.find('#Employee_Id').val()
			};

		if (row instanceof FooTable.Row){
			row.val(values);
		} else {
			alert("this boy"+uid)
			values.id = uid++;
			ft.rows.add(values);
		}
		$modal.modal('hide');
	});
});
		