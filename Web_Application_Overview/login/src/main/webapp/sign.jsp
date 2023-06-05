<%@ page contentType="text/html" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="./style.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Alkatra:wght@400;600;700&family=Fira+Sans:ital,wght@0,200;0,300;1,200&family=Geologica:wght@100;200;400&family=Merriweather:ital,wght@0,300;0,400;1,300;1,400&family=Raleway:ital,wght@0,300;0,500;1,200;1,300;1,400&family=Roboto+Slab:wght@700;800&display=swap');
  </style>
</head>
<body>
<div class="container" id="container">
  <div class="form-container sign-up-container">
    <form action="/sign" method="POST">
      <h1>Create Account</h1>
      <div class="social-container">
      </div>
      <span>use your email for registration</span>
      <input type="text" name="userName" placeholder="User Name" />
      <input type="password" name="passWord" placeholder="Password" />
      <input type="password" name="rePassWord" placeholder="Password" />
      <button name="btn_save" type="submit">Sign Up</button>
    </form>
  </div>
  <div class="form-container sign-in-container">
    <form action="/sign" method="POST">
      <h1>Sign in</h1>
      <div class="social-container">
      </div>
      <span>Use your account</span>
      <input type="text" name="username" placeholder="User Name" />
      <input type="password" name="password" placeholder="Password" />
      <a href="#">Forgot your password?</a>
      <button name="btn_submit" type="submit">Sign In</button>
    </form>
  </div>
  <div class="overlay-container">
    <div class="overlay">
      <div class="overlay-panel overlay-left">
        <h1>Welcome Back!</h1>
        <p>To keep connected with us please login with your personal info</p>
        <button class="ghost" id="signIn">Sign In</button>
      </div>
      <div class="overlay-panel overlay-right">
        <h1>Hello, Friend!</h1>
        <p>Enter your personal details and start journey with us</p>
        <button class="ghost" id="signUp">Sign Up</button>
      </div>
    </div>
  </div>
</div>
<script src="sign.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</body>
</html>