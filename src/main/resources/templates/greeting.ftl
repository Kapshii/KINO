<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring/>

<@c.page>

<div class="container">

    <#list messages as message>

    <div class="mySlides" id="image-gallery" >

        <img src="/img/${message.filename}" width="1024" height="768">

    </div>
    </#list>

    <a class="prev" onclick="plusSlides(-1)">❮</a>
    <a class="next" onclick="plusSlides(1)">❯</a>


    <div class="row">
      <#assign x = 0>
        <#list messages as message>
            <#assign x++>
            <div class="column">
                <img src="/img/${message.filename}" class="demo cursor" width="240" height="180" onclick="currentSlide(${x})">
            </div>
        </#list>
    </div>


</div>


</@c.page>



<#--<div class="favorites-slider">-->
<#--    <div class="container">-->
<#--        <div id="favorites" class="slider">-->
<#--            <i class="buttons prev icon-sliderLeft"></i>-->
<#--            <div class="viewport">-->
<#--                <ul class="overview" style="width: 4320px; left: -320px;">-->
<#--                    <li>-->
<#--                        <a href="https://filmix.co/fantastika/129876-film-kapitan-marvel-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/film-kapitan-marvel-2019_129876_0.jpg" class="film-poster poster-tooltip" alt="Капитан Марвел, 2019" title="Капитан Марвел"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Капитан Марвел</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/dramy/129699-film-snegouborschik-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/film-snegouborschik-2019_129699_0.jpg" class="film-poster poster-tooltip" alt="Снегоуборщик, 2019" title="Снегоуборщик"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Снегоуборщик</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/dramy/132342-fis-geniy-i-bezumec-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/fis-geniy-i-bezumec-2019_132342_0.jpg" class="film-poster poster-tooltip" alt="Гений и безумец, 2019" title="Гений и безумец"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Гений и безумец</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/semejnyj/132338-domovoy-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/domovoy-2019_132338_0.jpg" class="film-poster poster-tooltip" alt="Домовой, 2019" title="Домовой"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Домовой</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/kriminal/133808-otmschenie-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/otmschenie-2019_133808_0.jpg" class="film-poster poster-tooltip" alt="Отмщение, 2019" title="Отмщение"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Отмщение</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/trillery/132022-dzhon-uik3-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/dzhon-uik3-2019_132022_0.jpg" class="film-poster poster-tooltip" alt="Джон Уик&nbsp;3, 2019" title="Джон Уик&nbsp;3"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Джон Уик&nbsp;3</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/dramy/133332-krasivyy-plohoy-zloy-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/krasivyy-plohoy-zloy-2019_133332_0.jpg" class="film-poster poster-tooltip" alt="Красивый, плохой, злой, 2019" title="Красивый, плохой, злой"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Красивый, плохой, злой</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/fantastika/131557-bluzhdayuschaya-zemlya-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/bluzhdayuschaya-zemlya-2019_131557_0.jpg" class="film-poster poster-tooltip" alt="Блуждающая Земля, 2019" title="Блуждающая Земля"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Блуждающая Земля</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/semejnyj/132023-pokemon-detektiv-pikachu-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/pokemon-detektiv-pikachu-2019_132023_0.jpg" class="film-poster poster-tooltip" alt="Покемон. Детектив Пикачу, 2019" title="Покемон. Детектив Пикачу"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Покемон. Детектив Пикачу</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/trillery/133704-ditya-robota-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/ditya-robota-2019_133704_0.jpg" class="film-poster poster-tooltip" alt="Дитя робота, 2019" title="Дитя робота"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Дитя робота</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/dramy/132017-bratstvo-2018.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/bratstvo-2018_132017_0.jpg" class="film-poster poster-tooltip" alt="Братство, 2018" title="Братство"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Братство</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/muzkl/132024-aladdin-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/aladdin-2019_132024_0.jpg" class="film-poster poster-tooltip" alt="Аладдин, 2019" title="Аладдин"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Аладдин</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/dramy/131520-smotri-v-metre-drug-ot-druga-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/smotri-v-metre-drug-ot-druga-2019_131520_0.jpg" class="film-poster poster-tooltip" alt="В метре друг от друга, 2019" title="В метре друг от друга"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">В метре друг от друга</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/komedii/132331-100-veschey-i-nichego-lishnego-2018.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/100-veschey-i-nichego-lishnego-2018_132331_0.jpg" class="film-poster poster-tooltip" alt="100 вещей и ничего лишнего, 2018" title="100 вещей и ничего лишнего"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">100 вещей и ничего лишнего</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/music/133669-evrovidenie-2019-final-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/evrovidenie-2019-final-2019_133669_0.jpg" class="film-poster poster-tooltip" alt="Евровидение 2019. Финал, 2019" title="Евровидение 2019. Финал"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Евровидение 2019. Финал</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/dramy/133490-polaroid-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/polaroid-2019_133490_0.jpg" class="film-poster poster-tooltip" alt="Полароид, 2019" title="Полароид"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Полароид</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/trillery/132931-stalnaya-strana-2018.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/stalnaya-strana-2018_132931_0.jpg" class="film-poster poster-tooltip" alt="Стальная страна, 2018" title="Стальная страна"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Стальная страна</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/uzhasy/132027-godzilla-2-korol-monstrov-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/godzilla-2-korol-monstrov-2019_132027_0.jpg" class="film-poster poster-tooltip" alt="Годзилла 2: Король монстров, 2019" title="Годзилла 2: Король монстров"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Годзилла 2: Король монстров</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/dramy/131306-v-obyatiyah-lzhi-2018.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/v-obyatiyah-lzhi-2018_131306_0.jpg" class="film-poster poster-tooltip" alt="В объятиях лжи, 2018" title="В объятиях лжи"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">В объятиях лжи</div>-->
<#--                        </a>-->
<#--                    </li><li>-->
<#--                        <a href="https://filmix.co/semejnyj/132028-taynaya-zhizn-domashnih-zhivotnyh2-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/taynaya-zhizn-domashnih-zhivotnyh2-2019_132028_0.jpg" class="film-poster poster-tooltip" alt="Тайная жизнь домашних животных&nbsp;2, 2019" title="Тайная жизнь домашних животных&nbsp;2"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Тайная ...</div>-->
<#--                        </a>-->
<#--                    </li>-->
<#--                    <li class="mirrored">-->
<#--                        <a href="https://filmix.co/fantastika/129876-film-kapitan-marvel-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/film-kapitan-marvel-2019_129876_0.jpg" class="film-poster poster-tooltip" alt="Капитан Марвел, 2019" title="Капитан Марвел"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Капитан Марвел</div>-->
<#--                        </a>-->
<#--                    </li><li class="mirrored">-->
<#--                        <a href="https://filmix.co/dramy/129699-film-snegouborschik-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/film-snegouborschik-2019_129699_0.jpg" class="film-poster poster-tooltip" alt="Снегоуборщик, 2019" title="Снегоуборщик"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Снегоуборщик</div>-->
<#--                        </a>-->
<#--                    </li><li class="mirrored">-->
<#--                        <a href="https://filmix.co/dramy/132342-fis-geniy-i-bezumec-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/fis-geniy-i-bezumec-2019_132342_0.jpg" class="film-poster poster-tooltip" alt="Гений и безумец, 2019" title="Гений и безумец"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Гений и безумец</div>-->
<#--                        </a>-->
<#--                    </li><li class="mirrored">-->
<#--                        <a href="https://filmix.co/semejnyj/132338-domovoy-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/domovoy-2019_132338_0.jpg" class="film-poster poster-tooltip" alt="Домовой, 2019" title="Домовой"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Домовой</div>-->
<#--                        </a>-->
<#--                    </li><li class="mirrored">-->
<#--                        <a href="https://filmix.co/kriminal/133808-otmschenie-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/otmschenie-2019_133808_0.jpg" class="film-poster poster-tooltip" alt="Отмщение, 2019" title="Отмщение"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Отмщение</div>-->
<#--                        </a>-->
<#--                    </li><li class="mirrored">-->
<#--                        <a href="https://filmix.co/trillery/132022-dzhon-uik3-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/dzhon-uik3-2019_132022_0.jpg" class="film-poster poster-tooltip" alt="Джон Уик&nbsp;3, 2019" title="Джон Уик&nbsp;3"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Джон Уик&nbsp;3</div>-->
<#--                        </a>-->
<#--                    </li><li class="mirrored">-->
<#--                        <a href="https://filmix.co/dramy/133332-krasivyy-plohoy-zloy-2019.html">-->
<#--                            <span class=" icon-noimage"><img src="https://filmix.co/uploads/posters/thumbs/w160/krasivyy-plohoy-zloy-2019_133332_0.jpg" class="film-poster poster-tooltip" alt="Красивый, плохой, злой, 2019" title="Красивый, плохой, злой"></span>-->
<#--                            <i class="fa ico-play"></i>-->

<#--                            <div class="film-name">Красивый, плохой, злой</div>-->
<#--                        </a>-->
<#--                    </li></ul>-->
<#--            </div>-->
<#--            <i class="buttons next icon-sliderRight"></i>-->
<#--        </div>-->
<#--    </div>-->
<#--</div>-->