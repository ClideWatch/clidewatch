
var CURSOR_BLINK_IVL = 750 ;


var BlinkToggle = true ;


window.setInterval(function()
{
  var promptCursorSpan = document.getElementById('promptCursorSpan') ;

  if (promptCursorSpan)
    promptCursorSpan.style.visibility = (BlinkToggle = !BlinkToggle)?
                                        'visible' : 'hidden'  ;
} , CURSOR_BLINK_IVL) ;
