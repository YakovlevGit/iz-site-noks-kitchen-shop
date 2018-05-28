<div class="container">
    <nav class="z-depth-0 nav">
        <div class="nav-wrapper">
            {if {field name=id} == {config name=site_start}}
                <span class="brand-logo hide-on-med-and-up">
                <i class="material-icons">menu</i>">Кухни из массива</span>
            {else}
                <a href="{$modx->makeUrl({config name=site_start})}" class="brand-logo hide-on-med-and-up">
            {/if}
            <a href="#" data-target="mobile-menu" class="sidenav-trigger hide-on-med-and-up">
                <i class="material-icons">menu</i>
            </a>
            {include file="components/menu/main.tpl"}
        </div>
    </nav>

</div>