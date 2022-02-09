/*SweetAlert Init*/

$(function() {
	"use strict";
	
	var SweetAlert = function() {};

    //examples 
    SweetAlert.prototype.init = function() {
        
    //Basic
    $('#sa-basic1').on('click',function(e){
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

    $('#Approving-Officer').on('click',function(e){
            swal({
                title: "Are are you sure?",
                type: "success",
                text: "You are about to approving this Company's Vehicle",
                showCancelButton: true,
                confirmButtonColor: "#8BC34A",
                confirmButtonText: "Yes, Approve",
                closeOnCancel: true
            },function (){
                // window.open('Employees.jsp', '_parent');
                document.getElementById("Approving").submit();
            });
            return false;
        });


    $('#Declining-Officer').on('click',function(e){
            swal({
                title: "Are are you sure?",
                type: "warning",
                text: "You are about to Decline this Company's Vehicle",
                showCancelButton: true,
                confirmButtonColor: "red",
                confirmButtonText: "Yes, Decline",
                closeOnCancel: true
            },function (){
                // window.open('Employees.jsp', '_parent');
                document.getElementById("Declining").submit();
            });
            return false;
        });
        $('#Error-Email').on('click',function(e){
            swal({
                title: "Failed to Register",
                type: "warning",
                text: "The Email you used Exist",
                timer: 3000,
                showConfirmButton: false
            });
            return false;
        });


        $('#vehicle-ID-error').on('click',function(e){
            swal({
                title: "Vehicle Register Fail",
                type: "warning",
                text: "The Chassis Number you used Exist",
                timer: 3000,
                showConfirmButton: false
            });
            return false;
        });

        $('#Registration-Number-error').on('click',function(e){
            swal({
                title: "Vehicle Register Fail",
                type: "warning",
                text: "The Register Number you used Exist",
                timer: 3000,
                showConfirmButton: false
            });
            return false;
        });

        $('#Error-CompanyName').on('click',function(e){
            swal({
                title: "Failed to Register",
                type: "warning",
                text: "The  Company Name you used Exist",
                timer: 2000,
                showConfirmButton: false
            });
            return false;
        });



    $('#Revoking-Officer').on('click',function(e){
            swal({
                title: "Are are you sure?",
                type: "warning",
                text: "You are about to Revoke this Company's Vehicle",
                showCancelButton: true,
                confirmButtonColor: "#8BC34A",
                confirmButtonText: "Yes, Approve",
                closeOnCancel: true
            },function (){
                // window.open('Employees.jsp', '_parent');
                document.getElementById("Revoking").submit();
            });
            return false;
        });
        $('#alert-Sent').on('click',function(e){
            swal({
                title: "Email Successful Sent",
                type: "success",
                text: "Go to your email to reset your Password",
                confirmButtonColor: "#8BC34A",
                confirmButtonText: "Login"
            },function (){
                // window.open('Employees.jsp', '_parent');
                window.open('login.jsp', '_parent');
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
        //Warning LoginError
        $('#sa-warning1,.sa-warning1').on('click',function(e){
            swal({
                title: "Are you sure?",
                text: "You will not be able to recover this imaginary file!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#f8b32d",
                confirmButtonText: "Sign Up",
                cancelButtonText: "Try again",
                closeOnCancel: true,
                closeOnConfirm: false
            }, function(){
                window.open('signup.jsp', '_parent');
            });
            return false;
        });

    //Warning Message
    $('#Error-Login').on('click',function(e){
	    swal({   
            title: "Failed to Login",
            text: "Incorrect Email or Password!",
            type: "warning",   
            showCancelButton: true,
            confirmButtonColor: "#f8b32d",
            confirmButtonText: "Sign Up",
            cancelButtonText: "Try again",
            closeOnConfirm: false 
        }, function(){
            window.open('signup.jsp', '_parent');
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