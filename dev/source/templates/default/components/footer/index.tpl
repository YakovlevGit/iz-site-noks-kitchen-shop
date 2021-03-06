<footer class="footer">
    <div class="container">
        <div class="row row--grid">
            <div class="col s12 m6 l3">
                {include file="components/menu/index.tpl" title="Покупателю" ids="80,2,3,4,5,12,328,339" parent="0"}
                {include file="components/menu/index.tpl" title="Сервис" ids="20, 81, 78" parent="0"}
            </div>
            <div class="col s12 m6 l3">
                {include file="components/menu/index.tpl" title="Каталоги" ids="24, 41, 42, 44, 45, 46" parent="23"}
                {include file="components/menu/index.tpl" title="Акции и спецпредложения" ids="38" parent="0"}
            </div>
            <div class="col s12 m6 l3">
                {include file="components/menu/index.tpl" title="О нас" ids="6, 18, 17, 19" parent="0"}
                {include file="components/menu/index.tpl" title="Сотрудничество" ids="222" parent="0"}
                <div class="menu__title">Выгодные условия</div>
                <ul class="menu">
                    <li class="first"><a href="{$modx->makeUrl(345)}"><img src="{$template_url}img/tinkoff.png"></a></li>
                    <li class="first"><a href="{$modx->makeUrl(344)}"><img src="{$template_url}img/halva.png"></a></li>
                </ul>
            </div>
            <div class="col s12 m6 l3">
                <div class="menu__title">Связаться с нами</div>
                <ul>
                    <li><a class="call-phone" href="tel:84952088802">8 (495) 208-88-02</a></li>
                    <li><a class="call-phone" href="tel:84951085696">8 (495) 108-56-96</a></li>
                </ul>
                <ul class="menu">
                    <li><a href="#modal-callback" class="modal-trigger">Заказать обратный звонок</a></li>
                    <li><a href="#modal-feedback" class="modal-trigger">Написать сообщение</a></li>
                    <li><a href="#modal-order-project" class="modal-trigger">Заказать проект</a></li>
                </ul>
                <div class="menu__title">Наши соц. сети</div>
                <a href="https://www.instagram.com/noks_mebel/" class="link__social" target="_blank">
                    <img src="{$template_url}img/insta.png">
                </a>
                <!--noindex-->
                <div class="menu__title">Другие наши сайты</div>
                <ul class="menu">
                    <li>
                <a class="centertext" rel="nofollow" href="https://noks.ru" target="_blank">
                    <img src="{$template_url}img/logo-min.png"> <div>Корпусная мебель на заказ</div>
                </a>
                    </li>
                </ul>
                <!--/noindex-->
            </div>
        </div>
        <hr>
    </div>
    <div class="footer__copyright">
        <div class="container">
            © {$smarty.now|date_format:"%Y"} | NOKS ООО «НОКС МЕБЕЛЬ» ИНН 5032296487, ОГРН 1185053011989
            <small class="right">
                Любое копирование информации не для нашего промо запрещены без письменного разрешения. <br>
                <a href="/policy.doc">Политика в отношении обработки персональных данных</a>
            </small>

        </div>
    </div>
</footer>