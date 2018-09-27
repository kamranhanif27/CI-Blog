<html>
	<head>
		<title>CI Blog</title>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/style.css'); ?>">
		
		<link rel="stylesheet" type="text/css" href="<?php echo base_url('css/bootstrap.css'); ?>">
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="<?php echo base_url();?>">CI Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url();?>">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url();?>about">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url();?>posts">Blog</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url();?>categories">Categories</a>
      </li>
      
    </ul>
    <ul class="navbar-nav ml-auto">
      <?php if (!$this->session->userdata('logged_in')): ?>
          <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url();?>users/login">Log In</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url();?>users/register">Register</a>
          </li>
      <?php endif; ?>
      <?php if ($this->session->userdata('logged_in')): ?>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url();?>posts/create">Create Post</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url();?>categories/create">Create Category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo base_url();?>users/logout">Log Out</a>
        </li>
      <?php endif; ?>
    </ul>
  </div>
</nav><br>

<div class="container">
  <!-- Flash message -->
  <?php if($this->session->flashdata('user_registered')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
  <?php endif; ?>
  <?php if ($this->session->flashdata('post_created')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>'; ?>
  <?php endif; ?>
  <?php if ($this->session->flashdata('post_updated')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>'; ?>
  <?php endif; ?>
  <?php if ($this->session->flashdata('category_created')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>'; ?>
  <?php endif; ?>
  <?php if ($this->session->flashdata('post_deleted')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>'; ?>
  <?php endif; ?>
  <?php if ($this->session->flashdata('login_failed')) : ?>
    <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>'; ?>
  <?php endif; ?>
  <?php if ($this->session->flashdata('user_loggedin')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>'; ?>
  <?php endif; ?>
  <?php if ($this->session->flashdata('user_loggedout')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>'; ?>
  <?php endif; ?>

  


  
	

