<div class="xmnews">
	<{if $cat}>
		<div class="media">
			<div class="media-left">
				<{if $category_logo != ''}>
				<img class="media-object" src="<{$category_logo}>" alt="<{$category_name}>" style="max-width:150px">
				<{/if}>
			</div>
			<div class="media-body">
				<h2 class="media-heading"><{$category_name}></h2>
				<{$category_description}>
			</div>
		</div>
		<br>		
		<br>	
	<{/if}>
	<{if $news_count != 0}>
		<{foreach item=news from=$news}>
					<div class="post">
						<div class="post-media post-image">
						<{if $news.logo != ''}>
							<img src="<{$news.logo}>" class="img-responsive" alt="<{$news.title}>">
						<{/if}>	
						</div>

						<div class="post-body">
							<div class="entry-header">
					 			<div class="post-meta">
								<{if $news.douser == 1}>
								<span class="post-author">
										<i class="fa fa-user"></i><{$smarty.const._MA_XMNEWS_NEWS_PUBLISHEDBY}> <{$news.author}>
   								</span>
								<{/if}>
								<{if $news.dodate == 1}>
								<span class="post-cat">
										<i class="fa fa-folder-open"></i><{$smarty.const._MA_XMNEWS_NEWS_ON}> <{$news.date}>
   								</span>
								<{/if}>
								<{if $news.dohits == 1}>
   								<span class="post-meta-date"><i class="fa fa-calendar"></i> <{$smarty.const._MA_XMNEWS_NEWS_READING}> <{$news.counter}></span>
								<{/if}>
								</div>
								<h2 class="entry-title">
					 				<a href="article.php?news_id=<{$news.id}>"><{$news.title}></a>
					 			</h2>
							</div><!-- header end -->

							<div class="entry-content">
								<p><{$news.description}></p>
							</div>

							<div class="post-footer">
								<a href="article.php?news_id=<{$news.id}>" class="btn btn-primary"><{$smarty.const._MA_XMNEWS_NEWS_MORE}></a>
							</div>

						</div><!-- post-body end -->
					</div><!-- 1st post end -->

		<{/foreach}>
		<div class="clear spacer"></div>
		<{if $nav_menu}>
			<div class="floatright"><{$nav_menu}></div>
			<div class="clear spacer"></div>
		<{/if}>
	<{else}>
		<div class="alert alert-danger alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<{$smarty.const._MA_XMNEWS_ERROR_NONEWS}>
		</div>
	<{/if}>	
	<div style="margin:3px; padding: 3px;">
		<{include file='db:system_notification_select.tpl'}>
    </div>
</div><!-- .xmnews -->