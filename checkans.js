<SCRIPT language="JavaScript"
        type="text/javascript">
<!--

function checkAnswer(myform,
                     theAnswer,
                     urlRight,
                     urlWrong)
{
  var s = "?";
  var i = 0;
  for(;i<myform.elements.length;i++)
  {
    if(("3" ==
        myform.elements[i].name) &&
       (myform.elements[i].checked))
    {
      s = myform.elements[i].value;
    }
  }

  // no choice was selected
  //
  if(s == "?")
  {
    alert("Please make a selection.");
    return false;
  }

  // check if we have the correct
  // choice selected
  //
  if(s == 3)
  {
    alert("'"+s+"' is correct!");
 
    
    document.location.href = correct.html;
   
  }
  else
  {
    alert("'"+s+"' is incorrect.");
    
    document.location.href = wrong.html;
    
  }

  return false;
}
//-->
</SCRIPT>