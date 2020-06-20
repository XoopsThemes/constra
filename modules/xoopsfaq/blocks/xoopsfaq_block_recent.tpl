
						<{if !empty($block)}>
						<div class="panel-group" id="accordion">
						<{foreach from=$block.faq item=faq}>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><{$faq.title}></a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in">
									<div class="panel-body">
										<p><{$faq.ans}></p>
									</div>
								</div>
							</div>
						<{/foreach}>
						</div>
						<{/if}>



