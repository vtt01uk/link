<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liberty in Notth Korea</title>
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/css/main.css" rel="stylesheet">
  </head>
  <body>
   <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
             <a class="navbar-brand" href="/"><img  id ="logo" src = "/assets/img/logo.png"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
          <li><a href="users/login">Log In</a></li>
            <li><a href="users/signup">Sign Up</a></li>
            <li><a href="/users/teams">Teams</a></li>
             <li><a href="/events">Events</a></li>
            <li><a href="#">About Link</a></li>
          </ul>
        </div>
      </div>
    </nav>
  <div class= "container" id = "wrapper">
    <div class= "container text-center">
      <h1>Landing page</h1>
      <div style="position: absolute; left: 0; right: 0; bottom: 5px; padding: 10px 0 15px 0; background: rgba(255,255,255,.8);text-align: center;z-index:1;">
          <label style="margin: 0 15px 0 0;">Adjust Curve: </label>
          <input class="chart-input" style="display: inline-block; height: 10px; width: 200px;" data-property="arc" type="range" min="-0.9" max="0.9" value="-0.7" step="0.002"/>
          <label style="margin: 0 15px 0 15px;">Arrow position:</label>
          <label style="margin: 0 15px 0 0;">
        <input class="chart-input" data-property="arrow" type="radio" name="arrow" value="middle" checked /> Middle</label>
        <label><input class="chart-input" data-property="arrow" type="radio" name="arrow" value="end"/> End</label>
    </div>
    <div id="chartdiv"></div> 
    </div>
  </div>

   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="/assets/js/bootstrap.min.js"></script>
  <script src="http://www.amcharts.com/lib/3/ammap.js"></script>
  <script src="http://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>
  <script src="http://www.amcharts.com/lib/3/themes/light.js"></script>
  <script src="/assets/js/main.js"></script>
  </body>
</html>