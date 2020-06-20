<{if $images_list}>
<{foreach item=image from=$images_list}>
	<div class="col-md-4 col-sm-6 col-xs-12 commercial isotope-item">
		<div class="isotope-img-container">
			<a class="gallery-popup" href="<{$image.thumb}>">
				<img class="img-responsive" src="<{$image.thumb}>" alt="<{$image.title}>">
				<span class="gallery-icon"><i class="fa fa-plus"></i></span>
			</a>
			<div class="project-item-info">
				<div class="project-item-info-content">
					<h3 class="project-item-title">
						<a href="<{$wggallery_url}>/index.php"><{$image.title}></a>
					</h3>
					<p class="project-cat"><{$image.desc}></p>
				</div>
			</div>
		</div>
	</div>
<{/foreach}>
<{/if}>
