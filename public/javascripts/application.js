// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// All ajax requests will trigger the format.xml block
// of +respond_to do |format|+ declarations
$.ajaxSetup({
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/xml")}
})