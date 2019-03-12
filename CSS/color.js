// OBJECT
var Body = {
  setColor:function(color) {
    // document.querySelector('body').style.color = color;
    $('body').css('color', color);
      },  // important to write comma(,) between properties
      setBackgroundColor:function(color) {
        // document.querySelector('body').style.backgroundColor = color;
        $('body').css('backgroundColor', color);
      }
    }
    var Links = {
      setColor:function(color) {
      //   var selectorList = document.querySelectorAll('a');
      //   for(var i = 0; i < selectorList.length; i++)
      //   {
      //   // console.log(selectorList[i]);
      //   selectorList[i].style.color = color;
      // }
      $('a').css('color', color);
    }
  }

// FUNCTION
function changeBasicColor(curVal) {
  if(curVal.value === 'night')
  {
    Body.setBackgroundColor('#99ffcc');
    Body.setColor('white');
    Links.setColor('green');
    curVal.value = "day";
  }
  else
  {
    Body.setBackgroundColor('#ff4d94');
    Body.setColor('white');
    Links.setColor('powderblue');
    curVal.value = "night";
  }
}