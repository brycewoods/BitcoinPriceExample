// Basic error url check

var urlParams = new URLSearchParams(window.location.search);

if(urlParams.getAll('error') == "NoUser")
{
	alert("Username or password is incorrect!");
}

