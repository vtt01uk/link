<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="LINK">
    <meta name="author" content="IHL">
    <title>Compose a New Message</title>
    <!-- Bootstrap core CSS -->
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
    <link href="/assets/css/main.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/assets/css/starter-template.css" rel="stylesheet">
    <link href="/assets/css/signin.css" rel="stylesheet">
    <link href="/assets/css/dashboard.css" rel="stylesheet">
    <link href="/assets/css/sticky-footer-navbar.css" rel="stylesheet">
    <link href="/assets/css/chosen/chosen.css" rel="stylesheet">
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
          <h2>Start a New Conversation!</h2>
        </div>

        <div class="col-md-6">
          <form action="/messages/send_message" method="post">
            <input type='hidden' name='product_id' value='<?= $product['id'] ?>'>
            <h4>Who to message?</h4>
            <select data-placeholder="Who to message" style="width:300px;" multiple class='chosen-select form-control' name='user_id' multiple>
              <option value=""></option>
              <optgroup label="Link HQ">
                <option value='1'>Justin</option>
                <option value='2'>Sarah</option>
                <option value='3'>Jason</option>
                <option value='4'>Nick</option>
              </optgroup>
              <optgroup label="Campus Teams">
                <option value='5'>UCSD</option>
                <option value='6'>UT Austin</option>
                <option value='7'>Syracuse</option>
                <option value='8'>Lee High School</option>
              </optgroup>
              <optgroup label="Your Team">
                <option value='9'>Jalal B</option>
                <option value='10'>Vince</option>
                <option value='11'>Ani</option>
                <option value='12'>Lan</option>
              </optgroup>
            </select>
            <h4>Subject</h4>
            <input type="text" name="subject" placeholder="Message subject">
            <h4>Message</h4>
            <textarea name="message" id="message" cols="60" rows="10"></textarea>
            <h4>Priority</h4>
            <input type="text" name="priority" placeholder="0-2">    
            <input class="btn btn-default" type="submit" value="Send">
          </form>
        </div> <!-- End div.thread-body -->
      </div> <!-- End div.right column -->
    </div> <!-- End div.row -->
  </div> <!-- End div.container -->

  <footer class="footer">
    <div class="container">
      <p class="text-muted">Place sticky footer content here.</p>
    </div>
  </footer>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="/assets/js/chosen.jquery.js" type="text/javascript"></script>
  <script src="/assets/js/docsupport/prism.js" type="text/javascript" charset="utf-8"></script>
  <script type="text/javascript">
    var config = {
      '.chosen-select'           : {},
      '.chosen-select-deselect'  : {allow_single_deselect:true},
      '.chosen-select-no-single' : {disable_search_threshold:10},
      '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
      '.chosen-select-width'     : {width:"95%"}
    }
    for (var selector in config) {
      $(selector).chosen(config[selector]);
    }
  </script>
  <script src="/assets/js/chosen.jquery.js" type="text/javascript"></script>
  <script src="/assets/js/bootstrap.min.js"></script>
  <script src="/assets/js/main.js"></script>
</body>
</html>