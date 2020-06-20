<div class="page_headline"><h1><{$smarty.const._MD_XOOPSFAQ_FAQ}></h1></div>
<br>
<!--  start Breadcrumb -->
<ol class="breadcrumb">
    <li><a href="index.php"><{$smarty.const._XO_LA_XOOPSFAQ}></a></li>
    <li><a href="index.php"><{$smarty.const._XO_LA_MAIN}></a></li>
    <li><a href="#"><{$category_name}></a></li>
</ol>
<!--  end Breadcrumb -->
<{*
<a id="top" name="top"><a href="index.php"><{$smarty.const._MD_XOOPSFAQ_MAIN}></a>&nbsp;<span style="font-weight:bold;">&raquo;&raquo;</span>&nbsp;<strong><{$category_name}></strong><br><br>
*}>
<!-- start question and answer loop -->
<div id="accordion">
    <{foreach item=question from=$questions}>
        <h3><{$question.title}></h3>
        <div><p><{$question.answer}></p></div>
        <{foreachelse}>
        <div class="center"><span class="bold italic"><{$smarty.const._MD_XOOPSFAQ_NO_FAQS}></span></div>
    <{/foreach}>
</div>
<!-- end question and answer loop -->
<div class="center pad3 marg3">
    <{$commentsnav}>
    <{$lang_notice}><br><a href="index.php"><{$smarty.const._MD_XOOPSFAQ_BACK_TO_INDEX}></a>
</div>
<div class="marg3 pad3">
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
<script>
    $("#accordion").accordion({collapsible: true, active: false});
</script>
