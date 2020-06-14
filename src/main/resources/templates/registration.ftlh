<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div class="mb-1">Зарегестрирвоатся </div>
    ${message!}
    <@l.login "/registration" true />
</@c.page>