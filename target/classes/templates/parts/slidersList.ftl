<#include "security.ftl">
<#import "/spring.ftl" as spring/>

<div class="card-columns" >
    <#list sliderss as sliders>
        <div class="card my-3" data-id="${sliders.id}">
            <#if sliders.filename??>
                <img src="/img/sliders/${sliders.filename}" class="img-rounded card-img-top" alt="Cinque Terre"width="220" height="180" />
            </#if>
            <div class="m-2">


                <p class="card-text">${sliders.opis}</p>
                <p class="card-text">${sliders.tag}</p>
                <p class="card-text">${sliders.rok}</p>
                <p class="card-text">${sliders.text}</p>
            </div>
            <div class="card-footer text-muted container">
                <div class="row">
                    <a class="col align-self-center" href="/sliders-image/${sliders.authors.id}">${sliders.authorsName}</a>

                    <#if sliders.authors.id == currentUserId>
                        <a class="col btn btn-primary" href="/sliders-image/${sliders.authors.id}?image=${sliders.id}">
                            <@spring.message "app.lang.edit"/></a>
                        </a> </#if>
                    <#if isAdmin>
                        <a class="btn btn-outline-danger" href="/sliders/delete/${sliders.id}"><@spring.message "app.lang.delete"/></a>

                    </#if>

                </div>
            </div>
        </div>
    <#else>
        <div><@spring.message "app.lang.message"/></div>
    </#list>
</div>

