
<#import "/spring.ftl" as spring/>
<#if sliders??><#else>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        <@spring.message "app.lang.add"/>

    </a>

</#if>
<div class="collapse <#if sliders??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control${(tagError??)?string('is-invalid', '')}"
                       value="<#if sliders??>${sliders.tag}</#if>" name="tag" placeholder="<@spring.message "app.lang.nazwa"/>">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input placeholder="<@spring.message "app.lang.rok"/>" type="text" onfocus="(this.type='date')" id="date" class="form-control${(rokError??)?string('is-invalid', '')}"
                       value="<#if sliders??>${sliders.rok}</#if>" name="rok"  >
                <#if rokError??>
                    <div class="invalid-feedback">
                        ${rokError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" class="form-control${(opisError??)?string('is-invalid', '')}"
                       value="<#if sliders??>${sliders.text}</#if>" name="text" placeholder="<@spring.message "app.lang.text"/>">
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group">


                <textarea  type="text" id="exampleFormControlTextarea1" rows="3" class="form-control${(textError??)?string('is-invalid', '')}"
                           value="<#if sliders??>${sliders.opis}</#if>" name="opis" placeholder="<@spring.message "app.lang.opis"/>"></textarea>
                <#if opisError??>
                    <div class="invalid-feedback">
                        ${opisError}
                    </div>
                </#if>
            </div>
            <div class="form-group">

                <div class="custom-file">
                    <input type="file" name="file" id="customFile" />
                    <label class="custom-file-label" for="customFile"><@spring.message "app.lang.viewfile"/></label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="hidden" name="id" value="<#if sliders??>${sliders.id}</#if>" />
            <div class="form-group">
                <button type="submit" class="btn btn-primary"><@spring.message "app.lang.save"/></button>
            </div>
        </form>
    </div>
</div>

