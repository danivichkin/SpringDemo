<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    ${message!}
    <@l.login "/login" false />
</@c.page>