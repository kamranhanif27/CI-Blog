<h2><?= $title; ?></h2><br>

<?php foreach ($posts as $post) : ?>
	<h3 class="mt-3"><?php echo $post['title']; ?></h3>
	<div class="row">
		<div class="col-md-3">
			<img class="post-thumb thumbnail" src="<?php echo site_url(); ?>img/posts/<?php echo $post['post_image']; ?>">
		</div>
		<div class="col-md-9">
			<small class="post-date mt-3">Posted on: <?php echo $post['created_at']; ?> in <strong><?php echo $post['name']; ?></strong></small><br>
			<?php echo word_limiter($post['body'], 60); ?>
			<p><a class="btn btn-success btn-sm mt-2" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More</a></p>
		</div>
	</div>
	
<?php endforeach; ?>
<div class="pagination-link">
	<?php echo $this->pagination->create_links(); ?>
</div>