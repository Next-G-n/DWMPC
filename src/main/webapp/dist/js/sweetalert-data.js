/*SweetAlert Init*/

$(function() {
	"use strict";
	
	var SweetAlert = function() {};

    //examples 
    SweetAlert.prototype.init = function() {
        
    //Basic
    $('#sa-basic').on('click',function(e){
	    swal({   
			title: "Here's a message!",   
            confirmButtonColor: "#2196F3",   
        });
		return false;
    });

    //A title with a text under
    $('#sa-title').on('click',function(e){
	    swal({   
			title: "Here's a message!",   
            text: "Lorem ipsum dolor sit amet",
			confirmButtonColor: "#2196F3",
        });
		return false;
    });

    //Success Message
	$('#sa-success').on('click',function(e){
        swal({   
			title: "You Have Successful Registered a Company!",
             type: "success", 
			text: "Please Register All The Company's Employees",
			confirmButtonColor: "#8BC34A",
            confirmButtonText: "Go Employee Page",
        },function (){
           // window.open('Employees.jsp', '_parent');
            document.getElementById("Employee_info").submit();
        });
		return false;
    });



        $('#employee-alert').on('click',function(e){
            swal({
                title: "Company Registered Successful!",
                text: "Please Register All The Company's Employees",
                type: "success",
                showCancelButton: true,
                confirmButtonColor: "#487C5F",
                confirmButtonText: "Yes, Register Now!",
                cancelButtonText: "No, Register Later!",
                closeOnCancel: true
            }, function(){
                    //document.getElementById("Employee_info").submit();
                    window.open('Employee-Table.jsp', '_parent');
            });
            return false;
        });

    //Warning Message
    $('#sa-warning,.sa-warning').on('click',function(e){
	    swal({   
            title: "Are you sure?",   
            text: "You will not be able to recover this imaginary file!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#f8b32d",   
            confirmButtonText: "Yes, delete it!",   
            closeOnConfirm: false 
        }, function(){   
            swal("Deleted!", "Your imaginary file has been deleted.", "success"); 
        });
		return false;
    });

    //Parameter
	$('#sa-paramssss').on('click',function(e){
        swal({   
            title: "Are you sure?",   
            text: "You will not be able to recover this imaginary file!",   
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#f8b32d",   
            confirmButtonText: "Yes, delete it!",   
            cancelButtonText: "No, cancel plx!",   
            closeOnConfirm: false,   
            closeOnCancel: false 
        }, function(isConfirm){   
            if (isConfirm) {     
                swal("Deleted!", "Your imaginary file has been deleted.", "success");   
            } else {     
                swal("Cancelled", "Your imaginary file is safe :)", "error");   
            } 
        });
		return false;
    });

    //Custom Image
	$('#sa-image').on('click',function(e){
		swal({   
            title: "John!",   
            text: "Recently joined twitter",   
            imageUrl: "dist/img/user.png" ,
			confirmButtonColor: "#f33923",   
			
        });
		return false;
    });

    //Auto Close Timer
	$('#sa-close').on('click',function(e){
        swal({   
            title: "Auto close alert!",   
            text: "I will close in 2 seconds.",   
            timer: 2000,   
            showConfirmButton: false 
        });
		return false;
    });


    },
    //init
    $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert;
	
	$.SweetAlert.init();
});