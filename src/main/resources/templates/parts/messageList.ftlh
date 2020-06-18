<#include "security.ftlh">

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                        Перейти к заявкам
                    </a>
                </#if>
                <#if isAdmin>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                        Перейти к пользователю
                    </a>
                </#if>
            </div>
        </div>
    <#else>
    </#list>

</div>

<div class="alert alert-danger" role="alert">
    <h4 class="alert-heading">Внимание!</h4>
    <p>Правила изменения сообщения:</p>
    <p>1. Следовать документации</p>
    <p>2. Документировать изменения</p>
    <p>3. В случае индивидуальной ситуации связаться с кодерами</p>
    <hr>
    <p class="mb-0">Все данные сохраняются в нашей базе данных, в случае случайного удаления, напишите админу!</p>
</div>

<div class="alert alert-success" role="alert">
    <h4 class="alert-heading">Внимание!</h4>
    <p>Все сообщения которые вы редактируете будут сохранены без модерации! Так же автоматически будет отправленно письмо владельцу сообщения с пометкой об изменении его сообщения!</p>
    <hr>
    <p class="mb-0">Все данные сохраняются в нашей базе данных, в случае случайного удаления, напишите админу!</p>
</div>