$('form .login').on('click', loginClickHandler)

FB.Event.subscribe('auth.authResponseChange', function(response) {
  if (response.status === 'connected') {
    loggedInHandler();
  } else if (response.status === 'not_authorized') {
    FB.login();
  } else {
    FB.login();
  }
});

var loginClickHandler = function(event){
  event.preventDefault()
  FB.login();
}

var loggedInHandler = function(){
  FB.api('/me', {fields: 'last_name'}, function(response) {
    console.log(response);
  })
}
