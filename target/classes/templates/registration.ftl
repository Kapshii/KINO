<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<#import "/spring.ftl" as spring/>
<@c.page>
<div >
    <p class="font-weight-bold"><@spring.message "app.lang.addnewuser"/></p>
</div>
    ${message?ifExists}
<@l.login "/registration" true />
</@c.page>