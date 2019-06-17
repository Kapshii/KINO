<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring/>
<@c.page>
    <h3><@spring.message "app.lang.imageg"/></h3>
    <#if isCurrentUser>
    <#--<#include "parts/messageDelete.ftl" />-->
        <#include "parts/messageEdit.ftl" />

    </#if>
    <#if tagError??>
        <div class="invalid-feedback">
            ${tagError}
        </div>
    </#if>
    <#include "parts/messageList.ftl" />
</@c.page>

