function toggle_alt_contact_visibility() {
  // AltContactName
  if (document.getElementById("AltContactName").style.display == "none"){
    document.getElementById("AltContactName").style.display = "inline";          
  }
  else {
    document.getElementById("AltContactName").style.display = "none"; 
  }

  // AltContactOrganization
  if (document.getElementById("AltContactOrganization").style.display == "none"){
    document.getElementById("AltContactOrganization").style.display = "inline";          
  }
  else {
    document.getElementById("AltContactOrganization").style.display = "none"; 
  }

  // AltContactPhone
  if (document.getElementById("AltContactPhone").style.display == "none"){
    document.getElementById("AltContactPhone").style.display = "inline";          
  }
  else {
    document.getElementById("AltContactPhone").style.display = "none"; 
  }

  // AltContactEmail
  if (document.getElementById("AltContactEmail").style.display == "none"){
    document.getElementById("AltContactEmail").style.display = "inline";          
  }
  else {
    document.getElementById("AltContactEmail").style.display = "none"; 
  }
}

$('#date1').datepicker();
$('#date2').datepicker();

<!--initiate slider-->
$(".slider").slider();

$(".enabler").click(function() {
  var varID = event.target.id;
  var parsedID = varID.replace('checked', '');
  if(this.checked) {
    $("#"+parsedID).slider("enable");
  }
  else {
    $("#"+parsedID).slider("disable");
  }
});

$("#mon").on('slide slideStop', function(slideEvt) {
  var slideVal = slideEvt.value;
  var database_format = database_format(slideVal);
  var human_format = human_format(database_format);
  // var slideStr = slideVal.toString();
  // $("#monsliderval").text(slideVal);
  // var monStart= slideStr.substr(0, slideStr.indexOf(',')); 
  // var monEnd=slideStr.substring(slideStr.indexOf(',') +1);
      
  function database_format(string) {
    alert("called");
    split = string.split(",");
    return split;
  }
      
  //this fuction takes an array of 2 numbers, the number should be from 0 to 24 with .5 as the only acceptable floating value
  //this fuction can take output from database_format()
  function human_format(value) {
    var correct_format = new Array();
    var i = 0;
    var pm = false;
    while(i < value.length) {
      var value_num = parseFloat(value[i]);
      if(value_num > 12)
      {
        if(value_num != 24)
        {
          pm = true;
          value_num = value_num - 12;
        }
        else if (value_num == 12)
          pm = true;
        if(value_num == 0)
          value_num = 12;
        else if(value_num == 0.5)
          value_num = 12.5;
        
        var string_num = value_num.toString();
        var split = string_num.split('.');
        
        if(split.length == 1)
          correct_format[i] = split[0] + ":" + "00";
        else if(split.length > 1)
          correct_format[i] = split[0] + ":" + "30";

        if(pm == true)
          correct_format[i] += "pm";
        else
          correct_format[i] += "am";
        
        i++;
      }
      return correct_format;
    }
    $("#monstarthuman").text(human_format[0]);
    $("#monendhuman").text(human_format[1]);
    $("#monstartform").text(database_format[0]);
    $("#monendform").text(database_format[1]);
  });

$("#tues").on('slide slideStop', function(slideEvt) {
  $("#tuessliderval").text(slideEvt.value);
});

$("#wed").on('slide slideStop', function(slideEvt) {
  $("#wedsliderval").text(slideEvt.value);
});

$("#thurs").on('slide slideStop', function(slideEvt) {
  $("#thurssliderval").text(slideEvt.value);
});

$("#fri").on('slide slideStop', function(slideEvt) {
  $("#frisliderval").text(slideEvt.value);
});

$("#sat").on('slide slideStop', function(slideEvt) {
  $("#satsliderval").text(slideEvt.value);
});

$("#sun").on('slide slideStop', function(slideEvt) {
  $("#sunsliderval").text(slideEvt.value);
});
