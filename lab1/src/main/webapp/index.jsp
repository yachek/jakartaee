<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
</head>
<body>

<div class="about-section">
  <h1>About Us Page</h1>
  <p>Lab1 Tomcat 9 NetBeans 14</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="https://www.meme-arsenal.com/memes/dd2d25cb5a518d3bcb8c58bd57fd692c.jpg" alt="Jane" style="width:100%"/>
      <div class="container">
        <h2>Igor Lishchuk</h2>
        <p class="title">Main architector</p>
        <p>IP-13mp</p>
        <p><form action="/lab1/igor"><input class="button" type="submit" value="Contact"></form></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://www.meme-arsenal.com/memes/dd2d25cb5a518d3bcb8c58bd57fd692c.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Yaroslav Chekotun</h2>
        <p class="title">Main programmer</p>
        <p>IP-13mp</p>
        <p><form action="/lab1/yaroslave"><input class="button" type="submit" value="Contact"></form></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="https://www.meme-arsenal.com/memes/dd2d25cb5a518d3bcb8c58bd57fd692c.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Denis Shkurko</h2>
        <p class="title">Main engineer</p>
        <p>IP-13mp</p>
        <p><form action="/lab1/denis"><input class="button" type="submit" value="Contact"></form></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
