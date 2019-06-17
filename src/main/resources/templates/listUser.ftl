<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring/>
<@c.page>
  <h3><@spring.message "app.lang.edituser"/></h3>
<form action="/user" method="post">
    <div><h3>${user.username}</h3></div>

<input id="fname" type="text" name="username" value="${user.username}">
    <#list roles as role>
    <div>
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button class="btn btn-primary" type="submit"><@spring.message "app.lang.save"/></button>
<#--<button type="submit">Save</button>-->
</form>

</@c.page>
