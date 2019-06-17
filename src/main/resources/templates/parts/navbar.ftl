<#include "security.ftl">
<#import "login.ftl" as l>
<#import "common.ftl" as c>
<#import "/spring.ftl" as spring>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-end">

    <a class="navbar-brand" href="/"><font color="white"><@spring.message "app.lang.cms"/></font></a>

    <a class="nav-link" href="?lang=en">
    <img src="/static/eng.png" width="40" height="25" >
    </a>

    <a class="nav-link" href="?lang=pl">
        <img src="/static/pl.png" width="40" height="25" >
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar navbarSupportedContent">

        <ul class="nav navbar-nav">

             <#if user??>
                <li class="nav-item">



                 <li class="nav-item">
                <a class="nav-link" href="/main"><@spring.message "app.lang.gwww"/></a>
            </li>
                 <li class="nav-item">
                     <a class="nav-link" href="/sliders"><@spring.message "app.lang.sliders"/></a>
                 </li>
</#if>
<#if user??>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <@spring.message "app.lang.manegge"/>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                    <a class="dropdown-item" href="/user/profile"><@spring.message "app.lang.profile"/></a>
</#if> <#if isAdmin>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/user"><@spring.message "app.lang.users"/></a></#if>
                </div>
            </li>
            <div class="nav navbar-text mr-3"><a><#if user??>${name}<#else><@spring.message "app.lang.lpeaslogin"/></a></#if></div>

            <@l.logout />
        </ul>
    </div>

</nav>

