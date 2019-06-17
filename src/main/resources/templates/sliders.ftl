<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring/>
<@c.page>
    <h3><@spring.message "app.lang.imagei"/></h3>

    <#--<div class="form-row">-->
        <#--<div class="form-group col-md-6">-->
            <#--<form method="get" action="/logo" class="form-inline">-->
                <#--<input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by logo" />-->
                <#--<button type="submit" class="btn btn-primary ml-2">Search</button>-->
            <#--</form>-->
        <#--</div>-->
    <#--</div>-->

    <#include "parts/slidersEdit.ftl" />

    <#include "parts/slidersList.ftl" />

</@c.page>