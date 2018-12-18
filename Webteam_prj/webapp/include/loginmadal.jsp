<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
     content="467969851194-d927d4s9ugp8jeu4tdng7a3ioftknufu.apps.googleusercontent.com">
     
       <script>
      //google callback. This function will redirect to our login servlet
      function onSignIn(googleUser) {
         var profile = googleUser.getBasicProfile();
         console.log('ID: ' + profile.getId());
         console.log('Name: ' + profile.getName());
         console.log('Image URL: ' + profile.getImageUrl());
         console.log('Email: ' + profile.getEmail());
         console.log('id_token: ' + googleUser.getAuthResponse().id_token);
         $("#Gid").val(profile.getId());
         $("#Gname").val(profile.getName());
         $("#ImageURL").val(profile.getImageUrl());
        $("#Email").val(profile.getEmail());
         $("#id_token").val(googleUser.getAuthResponse().id_token);
         //do not post all above info to the server because that is not secure.
         //just send the id_token

        var redirectUrl = '/LoginLogoutServlet';

         //using jquery to post data dynamically
var form = $('<form action="' + redirectUrl + '" method="post">' +
                          '<input type="text" name="id_token" value="' +
                           googleUser.getAuthResponse().id_token + '" />' +
                           '<input type="text" name="Gid" value="' +
                           profile.getId() + '" />' +
                           '<input type="text" name="Gname" value="' +
                           profile.getName()+ '" />' +
                           '<input type="text" name="ImageURL" value="' +
                           profile.getImageUrl() + '" />' +
                           '<input type="text" name="Email" value="' +
                           profile.getEmail()+ '" />' + 
                                                                '</form>'); 
          $('body').append(form);
         form.submit();
      }

   </script>
  <!-- Login Modal-->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">Customer Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">X</span></button>
            </div>
            <div class="modal-body">
              <form action="customer-orders.html" method="get">
              <input type="hidden" name="Gname" id="Gname">
               <input type="hidden" name="ImageURL" id="ImageURL">
                <input type="hidden" name="Gid" id="Gid">
                 <input type="hidden" name="Email" id="Email">
                  <input type="hidden" name="id_token" id="id_token">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="email" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" placeholder="password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> Log in</button>
                  <div class="g-signin2" data-onsuccess="onSignIn"></div>
                 
                </p>
              </form>
              <p class="text-center text-muted">Not registered yet?</p>
              <p class="text-center text-muted"><a href="customer-register.html"><strong>Register now</strong></a>! It is easy and done in 1Â minute and gives you access to special discounts and much more!</p>
            </div>
          </div>
        </div>
      </div>
      <!-- Login modal end-->