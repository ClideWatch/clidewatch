# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


var CURSOR_BLINK_IVL = 750 ;


var BlinkToggle = true ;


window.setInterval(function()
{
  var promptCursorSpan = document.getElementById('promptCursorSpan') ;

  if (promptCursorSpan)
    promptCursorSpan.style.visibility = (BlinkToggle = !BlinkToggle)?
                                        'visible' : 'hidden'  ;
} , CURSOR_BLINK_IVL) ;
