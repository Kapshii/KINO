<#include "security.ftl">
<#import "/spring.ftl" as spring/>
<#if message??><#else>
    <a class="btn btn-outline-danger" href="/deleteAll"><@spring.message "app.lang.deleteAll"/>

    </a>
</#if>


