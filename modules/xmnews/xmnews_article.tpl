<div class="xmmews">
    <ol class="breadcrumb">
        <li><a href="index.php"><{$index_module}></a></li>
        <li><a href="index.php?news_cid=<{$category_id}>"><{$category_name}></a></li>
        <li class="active"><{$title}></li>
    </ol>
	<{if $status == 2}>
		<div class="alert alert-warning" role="alert">
			<{$smarty.const._MA_XMNEWS_INFO_NEWSWAITING}>
		</div>
	<{/if}>
	<{if $status == 0}>
		<div class="alert alert-danger" role="alert">
			<{$smarty.const._MA_XMNEWS_INFO_NEWSDISABLE}>
		</div>
	<{/if}>
	<{if $warning_date}>
		<div class="alert alert-warning" role="alert">
			<{$smarty.const._MA_XMNEWS_INFO_NEWSNOTPUBLISHED}>
		</div>
	<{/if}>
	<{if $xmdoc_viewdocs == true}>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><{$smarty.const._MA_XMNEWS_NEWS_XMDOC}></h3>
        </div>
        <div class="panel-body">
            <{include file="db:xmdoc_viewdoc.tpl"}>
        </div>
    </div>
    <{/if}>
					<div class="post">
						<div class="post-media post-image">
						<{if $logo != ''}>
							<img src="<{$logo}>" class="img-responsive" alt="<{$title}>">
						<{/if}>	
						</div>

						<div class="post-body">
							<div class="entry-header">
					 			<div class="post-meta">
								<{if $douser == 1}>
								<span class="post-author">
										<i class="fa fa-user"></i><{$smarty.const._MA_XMNEWS_NEWS_AUTHOR}>: <{$author}>
   								</span>
								<{/if}>
								<{if $dodate == 1}>
								<span class="post-cat">
										<i class="fa fa-folder-open"></i><{$smarty.const._MA_XMNEWS_NEWS_DATE}>: <{$date}>
   								</span>
								<{/if}>
								<{if $dohits == 1}>
   								<span class="post-meta-date"><i class="fa fa-calendar"></i> <{$smarty.const._MA_XMNEWS_NEWS_READING}>: <{$counter}></span>
								<{/if}>
								</div>
								<h2 class="entry-title">
					 				<a><{$title}></a>
					 			</h2>
							</div><!-- header end -->

							<div class="entry-content">
								<p><{$news}></p>
							</div>
						</div><!-- post-body end -->
					</div><!-- 1st post end -->
	<{if $docomment == 1}>
	<div style="text-align: center; padding: 3px; margin:3px;">
        <{$commentsnav}>
        <{$lang_notice}>
    </div>
    <div style="margin:3px; padding: 3px;">
        <{if $comment_mode == "flat"}>
        <{include file="db:system_comments_flat.tpl"}>
        <{elseif $comment_mode == "thread"}>
        <{include file="db:system_comments_thread.tpl"}>
        <{elseif $comment_mode == "nest"}>
        <{include file="db:system_comments_nest.tpl"}>
        <{/if}>
    </div>
	<{/if}>
	<div style="margin:3px; padding: 3px;">
		<{include file='db:system_notification_select.tpl'}>
    </div>
</div><!-- .xmarticle -->