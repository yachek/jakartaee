<!DOCTYPE html>
<html>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap');

    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    body{
        font-family: 'Poppins', sans-serif;
    }
    .about-wrapper{
        height: 100vh;
    }
    .about-left{
        background-color: #FFFFFF;
        background-image: linear-gradient(11deg, #21D4FD 0%, #B70000 100%);
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: right;
        height: 175vh;
        color:#fff
    }
    .about-left-content > div{
        background: #590658;
        padding: 4rem 4rem 2.5rem 5rem;
        text-align: center;

        border-radius: 12px 12px 0 0;
    }
    .about-left-content{
        box-shadow: 0px 0px 18px -1px rgba(0, 0, 0, 0.39);
        -webkit-box-shadow: 0px 0px 18px -1px rgba(0, 0, 0, 0.39);
        -moz-box-shadow: 0px 0px 18px -1px rgba(0, 0, 0, 0.39);
        border-radius: 12px;
        width:80%;
    }
    .about-img img{
        display: block;
        width: 400px;
    }
    .about-img{
        width: 200px;
        height: 200px;
        overflow: hidden;
        border-radius: 75%;
        transition: all 0.9s ease-in-out;
    }
    .shadow{
        margin-left: auto;
        margin-right: auto;
        border-radius: 50%;
        width: 200px;
        height: 200px;
    }



    .about-left-content h2{
        font-size: 2rem;
        margin: 2.2rem 0 0.6rem 0;
        line-height: 1.2;
        padding-bottom: 1rem;
        border-bottom: 2px solid #FFFFFF;
    }
    .about-left-content h3{
        text-transform: uppercase;
        font-weight: 300;
        letter-spacing: 5px;
        margin-top: 1.2rem;
    }
    .icons{
        background: #12192c;
        display: flex;
        justify-content: center;
        padding: 0.8rem 0;
        border-radius: 0 0 12px 12px;
    }
    .icons li{
        list-style-type: none;
        background: #B721FF;
        color: #fff;
        width: 40px;
        height: 40px;
        margin: 0 0.5rem;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 1.2rem;
        cursor: pointer;
        transition: all 0.5s ease-in-out;
    }
    .icons li:hover{
        background: #edffec;
        color: #000;
    }
    .about-right{
        background: #1a44c4;
        height: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 0 5rem;
        text-align: center;
        color:#decd37
    }
    .about-right h1{
        font-size: 5rem;
        text-transform: uppercase;
    }
    .about-right h1 span{
        color: #B721FF;
    }
    .about-right h2{
        font-weight: 600;
    }
    .about-btns{
        display: flex;
        margin: 2rem 0;
    }
    .btn{
        border: none;
        font-size: 0.9rem;
        text-transform: uppercase;
        border: 2px solid #fff;
        border-radius: 20px;
        padding: 0.55rem 0;
        width: 130px;
        font-weight: 600;
        background: transparent;
        margin: 0 0.5rem;
        cursor: pointer;
        color:#fff
    }
    .btn.btn-pink{
        background: #28b073;
        color: #fff;
        border-color: #28b073;
        transition: all 0.5s ease-in-out;
    }
    .btn.btn-pink:hover{
        background: transparent;
        border-color: #decd37;
        color: #fff;
    }
    .btn.btn-white{
        transition: all 0.5s ease-in-out;
    }
    .btn.btn-white:hover{
        background: #28b073;
        border-color: #28b073;
        color: #fff;
    }
    .about-para p{
        font-weight: 300;
        padding: 0.5rem;
        opacity: 0.8;
    }

    @media screen and (min-width: 992px){
        .about-wrapper{
            display: grid;
            grid-template-columns: repeat(2, 2fr);
        }

.about-left{
            position: relative;
        }
        .about-left-content{
            position: absolute;
            width:80%

        }
    }
    .credit{
        text-align: center;
        color: #fff;
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }
    .credit a{
        text-decoration: none;
        color:#28b073;
        font-weight: bold;
    } 
  </style>

  <body>
    
    <div class = "about-wrapper">
      <div class = "about-left">
        <div class = "about-left-content">
          <div>
            <div class = "shadow">
              <div class = "about-img">
                <img src = "https://media.proglib.io/wp-uploads/2018/06/og_og_148879361322373683.jpg" alt = "about image">
              </div>
            </div>

            <h2>Igor Lishchuk</h2>
            <h3>Web developer</h3>
          </div>
        </div>
        
      </div>

      <div class = "about-right">
        <h1>Hello!<span>!</span></h1>
        <h2>My contacts</h2>
        <div class = "about-btns">
          <button onclick="window.location.href='https://t.me/Igor_Lish'" type = "button" class = "btn btn-pink">Telegram</button>
          <button onclick="window.location.href='https://github.com/LishchukI'" type = "button" class = "btn btn-white">Git hub</button>
        </div>

        <div class = "about-para">
            <h2>My skills:</h2>
        <p><a href="#P6">Go to sixth number</a></p>
        <h2>1</h2>
        <p>I can do it</p>
        <h2>2</h2>
        <p>I can do it</p>
        <h2>3</h2>
        <p>I can do it</p>
        <h2>4</h2>
        <p>I can do it</p>
        <h2 id="P6">5</h2>
        <p>I can do it</p>
        <h2>6</h2>
        <p>I can do it</p>
        <h2>7</h2>
        <p>I can do it</p>
        <h2>8</h2>
        <p>I can do it</p>
        </div>
      </div>
    </div>
  </body>
</html>