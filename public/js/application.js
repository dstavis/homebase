$(document).ready(function() {

	window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '839142646102346', // App ID
	      channelUrl : '//localhost:9393', // Channel File
	      cookie     : true, // enable cookies to allow the server to access the session
	      xfbml      : true  // parse XFBML
	    });

	    FB.Event.subscribe('auth.login', function(response) {
	    	console.log("Something is happeniiiiing")
		  if (response.status === 'connected') {
		    loggedInHandler(response);
		  } else if (response.status === 'not_authorized') {
		    FB.login()
		  } else {
		    FB.login();
		  }
		});
	};

  // Load the SDK Asynchronously
  (function(d){
     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement('script'); js.id = id; js.async = true;
     js.src = "//connect.facebook.net/en_US/all.js";
     ref.parentNode.insertBefore(js, ref);
   }(document));

});


var loggedInHandler = function(response){
  FB.api('/me', function(response) {
    console.log(response.id);
  })
  FB.api('/me', {fields: 'picture'}, function(response) {
    console.log(response);
  })
}

var 

var sendInvite = function(){
	groupURL = "/join/group/"+current_user().group_id

	FB.ui({
  		method: 'send',
  		link: groupURL,
	});
}

var grabUserpic = function(userID){
FB.api(userID, {fields: 'picture'}, function(response) {
     picUrl = response.picture.data.url
     userPic = $("<img src=''>").attr("src", picUrl)
  })
}

var appendUserPic = function(parentNode, userID){
	$(parentNode).append(grabUserpic(userID))
}