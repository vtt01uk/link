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
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
    <link href="/assets/css/main.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/assets/css/starter-template.css" rel="stylesheet">
    <link href="/assets/css/signin.css" rel="stylesheet">
    <link href="/assets/css/dashboard.css" rel="stylesheet">
    <link href="/assets/css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

  <div class= "container">
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
            <li><a id = "new_event" href="/events/create">Create Event</a></li>
            <li><a href="#">Dashboard</a></li>
            <li><a href="/users/teams">Teams</a></li>
            <li><a href="#">Events</a></li>
            <li><a href="#">Members</a></li>
            <li><a href="/messages">Messages</a></li>
            <li><a href="#">Log Off</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>

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
          <h3>Thread Subject started mm/dd/yyyy @ 5:30pm</h3>
        </div>
        <div class="thread-body">
          <h4>Message thread</h4>
<?php
// This will only show incoming messages, not outgoing messages
      foreach($this->session->userdata('msg_array') as $message)
      {
        echo "<p> ".$message['body']."</p>";
      }
?>
        </div> <!-- End div.thread-body -->
        <form action="/messages/send_message" method="post">
 <!--            <h4>Who to message?</h4>
            <input type="text" name="username" placeholder="enter user name">
            <h4>Subject</h4>
            <input type="text" name="subject" placeholder="Message subject"> -->
            <h4>Message</h4>
            <input type='text' id='message' class='form-control' placeholder='Type your message' name='message' required>
<!--             <h4>Priority</h4>
            <input type="text" name="priority" placeholder="0-2">     -->
            <input class="btn btn-default" type="submit" value="Send">
          </form>
      </div> <!-- End div.right column -->
    </div> <!-- End div.row -->
  </div> <!-- End div.container -->

  <footer class="footer">
    <div class="container">
      <p class="text-muted">Place sticky footer content here.</p>
    </div>
  </footer>
</body>
</html>