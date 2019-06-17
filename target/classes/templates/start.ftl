<#import "parts/home.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page>
<#--    <h3>-->
<#--        <@spring.message "app.lang.welcomuser"/>-->
<#--      <h1>-->
<#--        <#if user??>${name}</#if>-->
<#--       </h1>-->
<#--    </h3>-->


    <div id="slide" class="carousel slide" data-ride="carousel">

        <!-- The slideshow -->
        <div class="carousel-inner">

            <div class="carousel-item active">
                <img src="/img/films.jpg">
                <div class="slider-block__carousel-caption carouselone-caption">
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <!-- add to wishlist begin -->

                            <!-- add to wishlist end -->
                            <a class="slider-block__movie-title" href="/movies/the-dark-phoenix/"> <span class="slider-block__movie-original-title"></span></a>
                            <br>

                        </div><div class="col-sm-6 col-xs-12">
                            <a class="slider-block__btn" data-showtimes="1" href="/movies/the-dark-phoenix/">Купити квиток</a>
                        </div>
                    </div>
                </div>
            </div><#list messages as message>
            <div class="carousel-item ">
                <img src="/img/${message.filename}">
                <div class="slider-block__carousel-caption carousell-caption">
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <!-- add to wishlist begin -->

                            <!-- add to wishlist end -->
                            <a class="slider-block__movie-title" href="/movies/the-dark-phoenix/"> <span class="slider-block__movie-original-title"></span></a>
                            <br>

                        </div><div class="col-sm-6 col-xs-12">
                            <a class="slider-block__btn" data-showtimes="1" href="/movies/the-dark-phoenix/"> <@spring.message "app.lang.ticket"/></a>
                        </div>
                    </div>
                </div>
                </#list>

        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#slide" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#slide" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>
    </div>

    <div class="osr mt-3" ><h3></h3><@spring.message "app.lang.polecf"/></div>
    <div class="osrs mt-3">

        <div class="cards-columns ">
            <#list sliderss as sliders>
                <div class="cards osr " style="width:250px" data-id="${sliders.id}">
                    <#if sliders.filename??>
                        <img src="/img/sliders/${sliders.filename}" class="img-rounded card-img-top"   />
                    </#if>
                        <div class="m-3">

                            <p class="card-text">${sliders.tag}</p>

                            <p class="cards-text">${sliders.rok}</p>
                            <a class="col btn btn-primary" href="/user-image/${sliders.id}?image=${sliders.id}">
                                <@spring.message "app.lang.ticket"/></a>
                            </a>
                        </div>
                </div>

            </#list>
        </div>
        </div>





</@c.page>