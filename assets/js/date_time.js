/*
Design and Developed By Inventivekeys
Date 11/4/2018 Date_Time Js.
*/

//For showing current DATE
var d = new Date(); 
var m_names = ["January", "February", "March", 
"April", "May", "June", "July", "August", "September", 
"October", "November", "December"]; 

var curr_date = d.getDate(); 
var curr_month = d.getMonth(); 
var curr_year = d.getFullYear(); 

var todayDate=curr_date + " - " + m_names[curr_month] + " - " + curr_year;
console.log(todayDate);

//For showing current TIME

var h=d.getHours();
var amPM = (h > 11) ? "pm" : "am";


      if(h>12)
	  {
		
	    h=h-12;
	  }
var min=d.getMinutes();
var sec=d.getSeconds();

var todayTime=(("0"+h).slice(-2)) +":"+ (("0"+min).slice(-2))+amPM;
$("#datetime").text(todayDate + "    " + todayTime);

//