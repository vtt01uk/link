<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="LINK">
    <meta name="author" content="IHL">
<!--     <link rel="icon" href="../../favicon.ico">
 -->
    <title>Messages</title>

    <!-- Bootstrap core CSS -->
    <link href="/assets/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/assets/dist/css/starter-template.css" rel="stylesheet">
    <link href="/assets/dist/css/signin.css" rel="stylesheet">
    <link href="/assets/dist/css/dashboard.css" rel="stylesheet">
    <link href="/assets/dist/css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">LINK</a>
      </div>
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="">Home</a></li>
          <li><a href="">Teams</a></li>
          <li><a href="">Dashboard</a></li>
          <li class="active"><a href="/messages/home">Message Center</a></li>
          <li><a href="/logins/logoff">Log out</a></li>
        </ul>
        <form class="navbar-form navbar-right">
          <input type="text" class="form-control" placeholder="Search...">
        </form>
      </div><!--/.nav-collapse -->
    </div>
  </nav>

  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-3 col-md-2 sidebar">
        <ul class="nav nav-sidebar">
          <li class="active"><a href="/messages/new_message">New Message <span class="sr-only">(current)</span></a></li>
        </ul>
        <ul class="nav nav-sidebar">
          <li><a href="/messages/load_message">UTAustin Team Chat</a></li>
        </ul>
        <ul class="nav nav-sidebar">
          <li><a href="/messages/load_message">Jimmy Jun</a></li>
          <li><a href="/messages/load_message">Jalal B</a></li>
          <li><a href="/messages/load_message">Lan</a></li>
          <li><a href="/messages/load_message">Vince</a></li>
          <li><a href="/messages/load_message">Ani</a></li>
          <li><a href="/messages/load_message">Nick</a></li>
        </ul>
      </div>
      <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <div class="page-header">
          <h3>Recent Contacts</h3>
        </div>
        <div class="row">
          <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
              <img src="/assets/img/faces/1.jpg" alt="emmie" style="height: 150px; width: 150px; display: block;">
              <div class="caption">
                <h5>Latest chat</h5>
                <p>What up girl???</p>
                <p><a href="#" class="btn btn-primary" role="button">Chat!</a></p>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
              <img src="/assets/img/faces/5.png" alt="baby" style="height: 150px; width: 150px; display: block;">
              <div class="caption">
                <h5>Latest chat</h5>
                <p>I like pancakes</p>
                <p><a href="#" class="btn btn-primary" role="button">Chat!</a></p>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
              <img src="/assets/img/faces/3.png" alt="girl" style="height: 150px; width: 150px; display: block;">
              <div class="caption">
                <h5>Latest chat</h5>
                <p>Why is it so dark in here?</p>
                <p><a href="#" class="btn btn-primary" role="button">Chat!</a></p>
              </div>
            </div>
          </div>
        </div>
      </div> <!-- End div.maincontent --> 
    </div> <!-- End div.row -->
  </div> <!-- End div.container -->

  <footer class="footer">
    <div class="container">
      <p class="text-muted">Place sticky footer content here.</p>
    </div>
  </footer>
</body>
</html>