<{if !empty($block)}>
<ul style="list-style-type: none;">
<{foreach from=$block.cat item=cat}>
  <li><a href="<{$cat.link}>"><{$cat.title}></a></li>
<{/foreach}>
</ul>
<{/if}>
