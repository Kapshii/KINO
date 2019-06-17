<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<#import "/spring.ftl" as spring/>
<@c.page>
<#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
    <div class="alert alert-danger" role="alert">
        <@spring.message "app.lang.falsepwd"/>
    </div>
</#if>
    <#if message??>
    <div class="alert alert-${messageType}" role="alert">
        ${message}
    </div>
    </#if>
    <@l.login "/login" false/>
</@c.page>
