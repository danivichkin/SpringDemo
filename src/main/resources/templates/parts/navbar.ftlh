<#include "security.ftlh">
<#import "login.ftlh" as l>
<header>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/">
            <img src="/static/img/icons8-worker-id-card-48.png" width="48" height="48" alt="">
        </a>


        <a class="navbar-brand" href="/">Букер.Поддержка</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Главная страница</a>
                </li>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/main">Заявки</a>
                    </li>

                </#if>
                <#if isAdmin>
                    <li class="nav-item">
                        <a class="nav-link" href="/user">Список пользователей</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/user-messages/${currentUserId}">Мои сообщения</a>
                    </li>
                </#if>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/user/profile">Профиль</a>
                    </li>
                </#if>
            </ul>

            <div class="navbar-text mr-3"><#if user??>${name}<#else></#if></div>
            <div class=" row">
                <div class="col-lg-3 col-md-3">
                    <form action="/logout" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <button class="btn btn-primary" type="submit"><#if user??>Выйти<#else>Войти</#if> </button>
                    </form>
                </div>
                    <div class="col-lg-6 col-md-6">
                        <form action="/registration">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button class="btn btn-primary"
                                    type="submit"><#if user??>Зарегистрироваться<#else>Зарегистрироваться</#if> </button>
                        </form>
                    </div>
            </div>
            <@l.logout />
        </div>
    </nav>

</header>

