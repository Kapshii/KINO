<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring/>

<@c.page>
    <h3><@spring.message "app.lang.forspwd"/></h3>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"><@spring.message "app.lang.podapasswd"/></label>
            <div class="col-sm-4">
                <input type="password" name="password" class="form-control" placeholder="<@spring.message "app.lang.haslo"/>"/>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary" type="submit"><@spring.message "app.lang.save"/></button>
        </div>
    </form>

</@c.page>
