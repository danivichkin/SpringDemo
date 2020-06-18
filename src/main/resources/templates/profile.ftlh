<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container lll">
        <h5>Изменение данных, пользователя ${username}</h5>
    </div>

    <div class="container lll">
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Изменение данных</strong> Просим заметить что изменения ваших учётных данных может занимать
            некоторое
            время
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </div>

    <div class="container lll">
        ${message!}
        <form method="post">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label-lg">Password:</label>
                <div class="col-sm-6">
                    <input type="password" name="password" class="form-control" placeholder="Password"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-3 col-form-label-lg">Email:</label>
                <div class="col-sm-6">
                    <input type="email" name="email" class="form-control" placeholder="some@some.com"
                           value="${email!''}"/>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary" type="submit">Save</button>
        </form>
    </div>

    <div class="container lll">
        <ul class="list-unstyled">
            <li class="media">
                <img src="/static/img/person%20.png" class="mr-3" alt="...">
                <div class="media-body">
                    <h5 class="mt-0 mb-1">Этот анекдот одобрил модератор</h5>
                    - Дорогая, давай не будем ссориться, а обсудим всё спокойно... - Нет! Каждый раз, когда мы что-то
                    спокойно обсуждаем, ты оказываешься прав.
                </div>
            </li>
            <li class="media my-4">
                <img src="/static/img/person%20.png" class="mr-3" alt="...">
                <div class="media-body">
                    <h5 class="mt-0 mb-1">Этот анектод одобрил админ</h5>
                    Конькобежец из Анголы принёс своей сборной две олимпийские медали... Где он их взял, никто не знает.
                </div>
            </li>
            <li class="media">
                <img src="/static/img/person%20.png" class="mr-3" alt="...">
                <div class="media-body">
                    <h5 class="mt-0 mb-1">Этот анекдот одобрила вся наша компания</h5>
                    Если человек не берёт кредиты под нынешние проценты, значит полученное им образование можно считать
                    качественным.
                </div>
            </li>
        </ul>
    </div>
</@c.page>