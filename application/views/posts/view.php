<h2><?php echo $post['title']; ?></h2>

<div class="post-body">
	<small class="post-date mt-3">Posted on: <?php echo $post['created_at']; ?></small><br>
	<img class=" thumbnail" src="<?php echo site_url(); ?>img/posts/<?php echo $post['post_image']; ?>"><br><br><br>
	<?php echo $post['body']; ?>
</div>

<?php if($this->session->userdata('user_id') == $post['user_id']): ?>
<hr>
<?php echo form_open('/posts/delete/'.$post['id']); ?>
	<input type="submit" name="deleteBtn" value="Delete" class="btn btn-danger">
	<a href="edit/<?php echo $post['slug'];?>" class="ml-2 btn btn-primary">Edit</a>
</form>
<?php endif; ?>
<hr>
<h3>Comments</h3><br>
<?php if($comments) : ?>
	<?php foreach ($comments as $comment) : ?>
		<div class="card card-body bg-light">
			<h6><?php echo $comment['body']; ?> [by <strong><?php echo $comment['name']; ?></strong>]</h6>
		</div><br>
	<?php endforeach; ?>
<?php else : ?>
	<p>No comments to display.</p>
<?php endif; ?>

<hr>
<h3>Add Comments</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control">
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="email" name="email" class="form-control">
	</div>
	<div class="form-group">
		<label>Body</label>
		<textarea name="body" class="form-control"></textarea>
	</div>
	<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
	<button class="btn btn-success">Submit</button>
</form>