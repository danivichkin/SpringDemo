<#import "parts/common.ftlh" as c>

<@c.page>

    <h1>Список зарегистрированных пользователей</h1>

    <div class="alert alert-success" role="alert">
        <h4 class="alert-heading">Внимание! </h4>
        <p>Изменени данных пользователя производится только через email направленный от пользователя</p>
        <hr>
        <p class="mb-0">Когда необходимо, используйте связь с пользователем через email.</p>
    </div>

    <div class="row">
        <div class="container lll">

            <div class="card-deck">
                <#list users as user>
                <div class="card" style="width: 18rem">
                    <img class="card-img-top" src="/static/img/user.jpg" alt="Card image cap" width="200" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Пользователь</h5>
                        <p class="card-text">Тут отображаются заметки пользователя, похоже что пользователь их ещё не
                            добавил</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Name: ${user.username}</small>
                        <small class="text-muted">Email: ${user.email}</small>
                        <small class="text-muted">Role: <#list user.roles as role>${role}<#sep>, </#list></small>
                    </div>
                </div>
                </#list>
            </div>
        </div>
    </div>
</@c.page>