
var up = document.getElementById('GFG_UP');
var down = document.getElementById('GFG_DOWN');

var prevDate = new Date();

function conversion(ms) {

    // Calculating Seconds
    var sec = (ms / 1000).toFixed(0);

    // Calculating Minutes
    var min = (ms / (1000 * 60)).toFixed(0);

    // Calculating hours
    var hrs = (ms / (1000 * 60 * 60)).toFixed(0);

    // Calculating days
    var days = (ms / (1000 * 60 * 60 * 24)).toFixed(0);
    if (sec < 60) {
        return sec + " Sec ago";
    } else if (min < 60) {
        return min + " Min ago";
    } else if (hrs < 24) {
        return hrs + " Hrs ago";
    } else {
        return days + " Days ago"
    }

}

function TimeStamp_function() {
    var count=document.getElementById("Count_date").value;
    var i;
    for (i=1;i<=count;i++){
        prevDate =document.getElementById("CompanyDate"+i).value;
        var date = new Date();
        $('#GFG_DOWN'+i).html(conversion(date.getTime() - prevDate))
        document.getElementById("delayTime"+i).value=conversion(date.getTime() - prevDate);
        //$('#GFG_DOWN').html(date.getTime())
        var min=(date.getTime() - prevDate)
        var days = ( min/ (1000 * 60 * 60 * 24)).toFixed(0);
        var element = document.getElementById("element"+i);
        if(days>=2 && days<=6){
            element.classList.remove("panel-warning");
            element.classList.add("panel-waring-yellow");
            //element.classList.add("panel-danger");

        }else if(days>=6){
            element.classList.remove("panel-warning");
            element.classList.add("panel-danger");
        }
    }


}
function timeConverter(UNIX_timestamp){
    var a = new Date(UNIX_timestamp);
    var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
    var year = a.getFullYear();
    var month = months[a.getMonth()];
    var date = a.getDate();
    var hour = a.getHours();
    var min = a.getMinutes();
    var sec = a.getSeconds();
    var time = date + ' ' + month + ' ' + year + ' ' + hour + ':' + min + ':' + sec ;
    return time;
}

function printDate(){
    var count=document.getElementById("Count_date").value;
    var i;
    for (i=1;i<=count;i++){
      var prevDate3 =document.getElementById("CompanyDate"+i).value;
        var prevDate2=parseInt(prevDate3)
        $('#Date_time'+i).html(timeConverter(prevDate2))

        }


}