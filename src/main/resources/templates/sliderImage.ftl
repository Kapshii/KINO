<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring/>

<@c.page>
    <h3><@spring.message "app.lang.imagei"/></h3>
    <#if isCurrentUser>
    <#--<#include "parts/logoDelleteAll.ftl" />-->
        <#include "parts/slidersEdit.ftl" />
    </#if>

    <#include "parts/slidersList.ftl" />
</@c.page>