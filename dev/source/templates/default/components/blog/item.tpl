<div class="card box-product blog">
        <div class="card-image">
            <span class="card-title">{$object.name}</span>
            <div class="product__params-reveal">
                <ul>
                {if $object.res|is_array}
                        {foreach from=$object.res item="item"}
                            <li><a href="{$modx->makeUrl({$item})}">{snippet name="pdoField" params=['id' => {$item} ,'field' => 'pagetitle']}</a></li>
                        {/foreach}
                {else if $object.res}
                    <li><a href="{$modx->makeUrl({$object.res})}">{snippet name="pdoField" params=['id' => {$object.res} ,'field' => 'pagetitle']}</a></li>
                {/if}
                </ul>
            </div>
        </div>
</div>