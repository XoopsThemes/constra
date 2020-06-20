<div class="page_headline"><h1 style="margin-top: 1em;"><{$smarty.const._MD_XOOPSFAQ_FAQ}></h1></div>
<br>
<div class="outer">
    <h3 class="txtleft" style="margin-bottom: 1em;"><{$smarty.const._MD_XOOPSFAQ_TOC}></h3>
    <!-- start category loop -->
    <{foreach item=category from=$categories}>
        <p><a href="index.php?cat_id=<{$category.id}>"><img class="page_image" src="<{$cat_image_url}>" style="width: 16px; height: 16px; border-width: 0px; padding-right: 1em;" alt="<{$category.name}>" title="<{$category.name}>"><strong><{$category.name}></strong></a>
            (<{$category.questions|@count}>)</p>
        <{foreachelse}>
        <div class="center"><span class="bold italic"><{$smarty.const._MD_XOOPSFAQ_NO_CATS}></span></div>
    <{/foreach}>
    <!-- end category loop -->
    <div style="margin-top: 10px;">
        <!-- start comments loop -->
        <{if $comment_mode == "flat"}>
            <{include file="db:system_comments_flat.tpl"}>
        <{elseif $comment_mode == "thread"}>
            <{include file="db:system_comments_thread.tpl"}>
        <{elseif $comment_mode == "nest"}>
            <{include file="db:system_comments_nest.tpl"}>
        <{/if}>
        <!-- end comments loop -->
    </div>
    <{include file='db:system_notification_select.tpl'}>
