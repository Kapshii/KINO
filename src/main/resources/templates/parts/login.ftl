<#import "/spring.ftl" as spring>
<#import "common.ftl" as c>
<#include "security.ftl">
<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <#if isRegisterForm>
    <div  class="form-group row justify-content-center">
        <#--<label class="col-sm-2 col-form-label">Podaj Hasło</label>-->

        <div class="col-sm-5">
            <input  type="text" name="firstname" value="<#if user??></#if>"
                    class="form-control ${(usernameError??)?string('is-invalid', '')}"
                    placeholder="<@spring.message "app.lang.firstname"/>" />
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row justify-content-center " >
        <#--<label class="col-sm-2 col-form-label">Podaj imię </label>-->
        <div class="col-sm-5">
            <input  type="text" name="lastname" value="<#if user??></#if>"
                    class="form-control ${(usernameError??)?string('is-invalid', '')}"
                    placeholder="<@spring.message "app.lang.lastname"/>" />
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    </#if>
    <div class="form-group row justify-content-center">

        <div class="col-sm-5">
            <input  type="text" name="username" value="<#if user??></#if>"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   placeholder="<@spring.message "app.lang.podajlogin"/>" />
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    <div  class="form-group row justify-content-center">
    <#--<label class="col-sm-2 col-form-label">Podaj Hasło</label>-->

        <div class="col-sm-5">
            <input type="password" name="password"
                   class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="<@spring.message "app.lang.podapasswd"/>" />
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
    </div>

    <#if isRegisterForm>
        <div  class="form-group row justify-content-center">
        <div class="col-sm-5">
            <input type="password" name="password2"
                   class="form-control ${(password2Error??)?string('is-invalid', '')}"
                   placeholder="<@spring.message "app.lang.retrypasswd"/>" />
            <#if password2Error??>
                <div class="invalid-feedback">
                    ${password2Error}
                </div>
            </#if>
        </div>
        </div>

        <div class="form-group row justify-content-center">
            <div class="col-sm-5">
            <label for="exampleFormControlSelect1"><@spring.message "app.lang.ulgi"/></label>
            <select class="form-control" id="exampleFormControlSelect1">
                <option><@spring.message "app.lang.nostudent"/></option>
                <option><@spring.message "app.lang.student"/></option>

            </select>
        </div>
        </div>


        <div  class="form-group row justify-content-center">
        <#--<label class="col-sm-2 col-form-label">Podaj mail</label>-->

            <div class="col-sm-5">
                <input type="email" name="email" value="<#if user??></#if>"
                       class="form-control ${(emailError??)?string('is-invalid', '')}"
                       placeholder="some@some.com" />
                <#if emailError??>
                    <div class="invalid-feedback">
                        ${emailError}
                    </div>
                </#if>
            </div>

        </div>

        <div class="form-group row justify-content-center "><div class="g-recaptcha" data-sitekey="6LfNQ2gUAAAAAP2-CihqmMtvNN036KVDN9QmKTJy">
        </div>
            <#if captchaError??>
                <div class="alert alert-danger" role="alert">
                    ${captchaError}
                </div>
            </#if>
        </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <div class="align-middle">
        <div  class="form-group row justify-content-center">
            <#if !isRegisterForm>
                <a href="/registration" class="btn btn-primary" role="button" >Add new user</a>
            </#if>
            &nbsp; &nbsp
            <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>
        </div>

    </div>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
<#--    <#if user??>-->
    <button class="btn btn-primary" type="submit"><#if user??><@spring.message "app.lang.outin"/><#else><@spring.message "app.lang.singin"/></#if>

<#--    </#if>-->
<#--<button class="btn btn-primary" type="submit"><#if user??>Sign out<#else>Sign In</#if></button>-->

</form>
</#macro>
