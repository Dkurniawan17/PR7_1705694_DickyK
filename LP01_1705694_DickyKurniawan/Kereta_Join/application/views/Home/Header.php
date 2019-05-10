<!doctype html>
<html lang="id">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Kereta</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-succes sticky-top">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item active">
            <a class="nav-link text-white" href="<?php echo base_url(). 'Controller/Left'; ?>">
                <h3>Left Join</h3>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="<?php echo base_url(). 'Controller/Index'; ?>">
                <h3>Inner Join</h3>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="<?php echo base_url(). 'Controller/Right'; ?>">
                <h3>Right Join</h3>
            </a>
          </li>
        </ul>
      </div>
    </nav>
