<#include "security.ftl">
<#import "/spring.ftl" as spring/>

<div class="card-columns" >
    <#list messages as message>
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
            <div class="card-footer text-muted container">
                <div class="row">
                    <a class="col align-self-center" href="/user-image/${message.author.id}">${message.authorName}</a>

                    <#if message.author.id == currentUserId>
                        <a class="col btn btn-primary" href="/user-image/${message.author.id}?image=${message.id}">
                            <@spring.message "app.lang.edit"/></a>
                        </a> </#if>
                    <#if isAdmin>
                        <a class="btn btn-outline-danger" href="/delete/${message.id}"><@spring.message "app.lang.delete"/></a>

                    </#if>

                </div>
            </div>
        </div>
    <#else>
        <div><@spring.message "app.lang.message"/></div>
    </#list>
</div>

