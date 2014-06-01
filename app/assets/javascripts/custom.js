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