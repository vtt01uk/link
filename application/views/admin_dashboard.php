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
            <li><a href>Hello, <?= $this->session->userdata('first_name') ?></a></li>
            <li><a href="/users/dashboard">Dashboard</a></li>
            <li><a href="/users/teams">Teams</a></li>
            <li><a href="/events">Events</a></li>
            <li><a href="#">Members</a></li>
            <li><a href="/messages">Messages</a></li>
            <li><a href="/users/logoff">Log Off</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <hr>
    <hr>
    <hr>
    <hr>

    <div class="container-fluid" id = "wrapper">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Teams</a></li>
            <li><a href="#">Events</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Locations</a></li>
            <li><a href="">Waiting for Approval</a></li>
          </ul>
        </div>
        <div class="container col-md-8 main_content">
          <h2>Latest Events</h2>
          <hr>
          <h2>Waiting for Approval</h2>
          <table class= "table table-striped ">
          <thead>
            <tr>
              <th>Name</th>
              <th>Institution</th>
              <th>Motivation</th>
              <th>Team</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
<?
        foreach ($requests as $request)
        {
            echo "<tr>";
            echo "<td>".$request['first_name']. ' '. $request['last_name']."</td>";
            echo "<td>".$request['institution']."</td>";
            echo "<td>".$request['motivation']."</td>";
            echo "<td><a href ='/users/approve/{$request['id']}'>Approve</a></td>";
            echo "<td><a href ='/users/edit/{$request['id']}'>Edit</a></td>";
            echo "</tr>";
        } 
?>
          </tbody>
        </table>
        </div>
        
        
      </div>
    </div>
       
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="/assets/js/bootstrap.min.js"></script>
  <script src="/assets/js/bootstrap.min.js"></script>
  </body>
</html>