<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <style>
        @import url("https://fonts.googleapis.com/css?family=Lato:400,700");
        #bg {
          background-image: url(https://ns-plus.com.ua/wp-content/uploads/2019/12/Screenshot_6-2-1104x552.jpg);
          position: fixed;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          background-size: cover;
          filter: blur(5px);
        }

        body {
          font-family: 'Lato', sans-serif;
          color: #4A4A4A;
          display: flex;
          justify-content: center;
          align-items: center;
          min-height: 100vh;
          overflow: hidden;
          margin: 0;
          padding: 0;
        }

        form {
          width: 350px;
          position: relative;
        }

        form .form-field {
          display: -webkit-box;
          display: -ms-flexbox;
          display: flex;
          -webkit-box-pack: justify;
          -ms-flex-pack: justify;
          justify-content: space-between;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          margin-bottom: 1rem;
          position: relative;
        }
        form input {
          font-family: inherit;
          width: 100%;
          outline: none;
          background-color: #fff;
          border-radius: 4px;
          border: none;
          display: block;
          padding: 0.9rem 0.7rem;
          box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
          font-size: 17px;
          color: #4A4A4A;
          text-indent: 40px;
        }
        form .btn {
          outline: none;
          border: none;
          cursor: pointer;
          display: inline-block;
          margin: 0 auto;
          padding: 0.9rem 2.5rem;
          text-align: center;
          background-color: #47AB11;
          color: #fff;
          border-radius: 4px;
          box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
          font-size: 17px;
        }
    </style>
    <head>
      <meta charset="UTF-8">
      <title>Login Page</title>
      <link rel="stylesheet" href="./style.css">

    </head>
    <body>
    <!-- partial:index.partial.html -->
    <div id="bg"></div>

    <form>
      <div class="form-field">
        <input type="email" placeholder="Email / Username" required/>
      </div>

      <div class="form-field">
        <input type="password" placeholder="Password" required/>
      </div>

      <div class="form-field">
        <button class="btn" type="submit">Log in</button>
      </div>
    </form>
    <!-- partial -->

    </body>
</html>
