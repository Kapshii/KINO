<#import "parts/common.ftl" as c>
<#--<#import "profile.ftl"as p>-->
<#import "/spring.ftl" as spring/>
<h3><@spring.message "app.lang.edituser"/></h3>
<@c.page>

<form action="/user" method="post">
    <divclass="col-sm-4" >
    <input  class="col-sm-2 col-form-label" type="text" name="username" value="${user.username}"></div>
    <#list roles as role>
    <div>
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit"><@spring.message "app.lang.save"/></button>
<#--<button type="submit">Save</button>-->
</form>

</@c.page>