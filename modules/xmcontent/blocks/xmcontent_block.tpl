<{if $block.template}>
	<{if $block.dotitle == 1}>
	<h2><{$block.title}></h2>
	<{/if}>
	<{foreach item=b_template from=$block.template}>
		<{includeq file="$b_template"}>
	<{/foreach}>
<{else}>
	<div class="row">
		<div class="col-sm-12">
			<{if $block.dotitle == 1}>
			<h3 class="into-sub-title"><{$block.title}></h2>
			<{/if}>
			<p>
				<{$block.text|truncate:190:'...'}>
			</p>
		</div>
	</div>
<{/if}>
	<a href="https://erenyumak.com/ato/modules/xmcontent/viewcontent.php?content_id=1">
		<button type="button" class="btn btn-primary btn-xs"><{$smarty.const._MD_XMCONTENT_INDEX_MORE}></button>
	</a>