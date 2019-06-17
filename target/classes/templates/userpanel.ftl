<#include "parts/security.ftl">
<#--<#import "login.ftl"as l>-->
<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page>
    <h3><@spring.message "app.lang.editusers"/></h3>
    <table class="table table-dark table-striped">
        <thead>

        <tr>
            <th><@spring.message "app.lang.name"/></th>
            <th><@spring.message "app.lang.date"/></th>
            <th><@spring.message "app.lang.firstname"/></th>
            <th><@spring.message "app.lang.lastname"/></th>

            <th></th>
        </tr>
        </thead>
             </table>
<#--    <p>-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
<#--        <a class="btn btn-primary" type="submit" href="/registration"><@spring.message "app.lang.adduser"/></a>-->
<#--        &lt;#&ndash;<a type="button" class="btn btn-outline-danger" href="/user/deleteAll/${user.id}">Usunuć wszystkich</a>&ndash;&gt;-->
<#--    </p>-->


</@c.page>