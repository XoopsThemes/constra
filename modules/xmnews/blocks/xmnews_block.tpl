<{foreach item=blocknews from=$block.news}>
	<{if $block.full == 0}>
	<div class="col-md-4 col-xs-12">
		<div class="latest-post">
			<div class="latest-post-media">
				<a href="<{$xoops_url}>/modules/xmnews/article.php?news_id=<{$blocknews.id}>" class="latest-post-img">
					<{if $blocknews.logo != ''}>
					<img class="img-responsive img-thumbnail" src="<{$blocknews.logo}>" alt="<{$blocknews.title}>">
					<{/if}>
				</a>
			</div>
			<div class="post-body">
				<h4 class="post-title">
					<a href="<{$xoops_url}>/modules/xmnews/article.php?news_id=<{$blocknews.id}>"><{$blocknews.title|truncate:100:'...'}></a>
				</h4>
				<div class="latest-post-meta">
				<{if $blocknews.type == "date" || $blocknews.type == "random"}>
					<span class="post-item-date">
						<i class="fa fa-clock-o"></i> <{$smarty.const._MA_XMNEWS_BLOCKS_DATE}>: <{$blocknews.date}>
					</span>
				<{/if}>	
				</div>
			</div>
		</div>
	</div>
	<{else}>
    <div class="media">
        <div class="media-left">
			<{if $blocknews.logo != ''}>
            <img class="media-object" src="<{$blocknews.logo}>" alt="<{$blocknews.title}>">
			<{/if}>
        </div>
        <div class="media-body">
            <h2 class="media-heading"><{$blocknews.title}></h2>
        </div>
    </div>
	<div>
		<{$blocknews.news}>
	</div>
    <br>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><{$smarty.const._MA_XMNEWS_GENINFORMATION}></h3>
        </div>
        <div class="panel-body">
			<div class="row xmnews-general">
				<{if $blocknews.dodate == 1}>
				<div class="col-xs-12 col-sm-6 col-md-6"><span class="glyphicon glyphicon-calendar" title="<{$smarty.const._MA_XMNEWS_NEWS_DATE}>"></span>
					<{$smarty.const._MA_XMNEWS_NEWS_DATE}>: <{$blocknews.date}>
				</div>
				<{/if}>
				<{if $blocknews.douser == 1}>
				<div class="col-xs-12 col-sm-6 col-md-6"><span class="glyphicon glyphicon-user" title="<{$smarty.const._MA_XMNEWS_NEWS_AUTHOR}>"></span>
					<{$smarty.const._MA_XMNEWS_NEWS_AUTHOR}>: <{$blocknews.author}>
				</div>
				<{/if}>
			</div>
			<{if $blocknews.domdate == 1}>
			<{if $blocknews.mdate}>
			<div class="row xmnews-general">
				<div class="col-xs-12 col-sm-6 col-md-6"><span class="glyphicon glyphicon-calendar" title="<{$smarty.const._MA_XMNEWS_NEWS_MDATE}>"></span>
					<{$smarty.const._MA_XMNEWS_NEWS_MDATE}>: <{$blocknews.mdate}>
				</div>
			</div>
			<{/if}>
			<{/if}>
			<div class="row xmnews-general">
				<{if $blocknews.dohits == 1}>
				<div class="col-xs-12 col-sm-6 col-md-6"><span class="glyphicon glyphicon-repeat" title="<{$smarty.const._MA_XMNEWS_NEWS_READING}>"></span>
					<{$smarty.const._MA_XMNEWS_NEWS_READING}>: <{$blocknews.hits}>
				</div>
				<{/if}>
				<{if $blocknews.dorating == 1}>
				<{if $block.xmsocial == true}>
				<div class="col-xs-12 col-sm-6 col-md-6"><span class="glyphicon glyphicon-star-empty" title="<{$smarty.const._MA_XMNEWS_NEWS_RATING}>"></span>
					<{$smarty.const._MA_XMNEWS_NEWS_RATING}>: <{$blocknews.rating}>
				</div>
				<{/if}>
				<{/if}>
			</div>
			<div class="xmnews-general-button">
				<div class="btn-group" role="group" aria-label="...">
					<{if $blocknews.perm_clone == true}>
					<a href="<{$xoops_url}>/modules/xmnews/action.php?op=clone&amp;news_id=<{$blocknews.id}>">
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-duplicate"></span> <{$smarty.const._MA_XMNEWS_CLONE}></button>
                    </a>
					<{/if}>
					<{if $blocknews.perm_edit == true}>
                    <a href="<{$xoops_url}>/modules/xmnews/action.php?op=edit&amp;news_id=<{$blocknews.id}>">
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span> <{$smarty.const._MA_XMNEWS_EDIT}></button>
                    </a>
					<{/if}>
					<{if $blocknews.perm_del == true}>
                    <a href="<{$xoops_url}>/modules/xmnews/action.php?op=del&amp;news_id=<{$blocknews.id}>">
                        <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-remove"></span> <{$smarty.const._MA_XMNEWS_DEL}></button>
                    </a>
					<{/if}>
				</div>
			</div>

        </div>
    </div>
	<{/if}>
<{/foreach}>
<div class="clearfix"></div>