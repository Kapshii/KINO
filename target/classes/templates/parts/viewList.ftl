

<div class="card-columns" >
    <#list messages as message >
        <div class="card my-3" data-id="${message.id}">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="img-rounded card-img-top" alt="Cinque Terre"width="220" height="180" />
            </#if>
            <div class="m-2">


                <p class="card-text">${message.tag}</p>
                <p class="card-text">${message.opis}</p>
                <p class="card-text">${message.rok}</p>
                <p class="card-text">${message.text}</p>
            </div>

            </div>
        </div>
    <#else>
        <div><@spring.message "app.lang.message"/></div>
    </#list>
</div>

