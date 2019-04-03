"use strict";

function change1()
{
    var sb = document.getElementById("b1");
    console.log( typeof sb );

    if ( sb.style.border == "none" )
    {
    	console.log( "border is none" );
    	sb.style.border = "4px solid #3bf74e";
    	sb.style.color = "#3bf74e";
    }
    else
    {
    	console.log( "could not distinguish border" );
    	sb.style.border = "none";
    	sb.style.color = "white";
    }
}

//shows/hides navbar
function toggleNavBar()
{
	var menuButton = document.getElementById("mb");
	var buttonColor = menuButton.style.background;
	console.log( document.getElementById("mb").style.background );

	//buttonColor = 'red';

	if( buttonColor == 'white' )
	{
		console.log( "menu is hidden" );
		document.getElementById("nBar").style.display = 'block';
		document.getElementById("mb").style.background = "#6B6F77";
		document.getElementById("mb").style.color = "white";
	}
	else
	{
		console.log( "menu is shown" );
		document.getElementById("nBar").style.display = 'none';
		document.getElementById("mb").style.background = "white";
		document.getElementById("mb").style.color = "#6B6F77";
	}
}