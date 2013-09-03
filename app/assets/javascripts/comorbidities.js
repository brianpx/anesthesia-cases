$(document).ready(function() {
  var caseForm      = $("#caseForm");
  var ageDropdown   = caseForm.find("#ageDropdown");
  var ageTextField  = caseForm.find("#ageText");

  ageDropdown.change(function() {
    if (ageDropdown.val() == "Random")
      { ageTextField.slideUp(); }
    else
      { ageTextField.slideDown(); }
  });
});
