<#import "parts/common.ftlh" as c>

<@c.page>

    <h1 align="center">Привет, это сайт поддержки компании Букер</h1>
    <p class="lead" align="center">Ниже вы можете наблюдать ответы на самые часто задаваемые вопросы</p>

    <div class="col-md-8">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/static/img/32266.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Всегда качетсвенно</h1>
                        <h3>Качество является нашим приоритетом</h3>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="/static/img/32266.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Быстры как Флэш</h1>
                        <h3>Комманда наших суппортов пополняется каждый день!</h3>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="/static/img/32266.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Дружный коллектив</h1>
                        <h3>Чем дружнее коллектив, тем лучше выполняется работа </h3>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <div id="list-example" class="list-group">
        <a class="list-group-item list-group-item-action" href="#list-item-1">Что мы за компания</a>
        <a class="list-group-item list-group-item-action" href="#list-item-2">Наши цены:</a>
        <a class="list-group-item list-group-item-action" href="#list-item-3">Каковы наши преимущества?</a>
        <a class="list-group-item list-group-item-action" href="#list-item-4">У меня упал сервер, что делать?</a>
        <a class="list-group-item list-group-item-action" href="#list-item-5">Что делать если я потерял доступ к
            аккаунту?</a>
        <a class="list-group-item list-group-item-action" href="#list-item-6">Как попасть к вам работать?</a>
        <a class="list-group-item list-group-item-action" href="#list-item-7">Остались вопросы?</a>
    </div>

    <div data-spy="scroll" data-target="#list-example" data-offset="0" class="scrollspy-example">
        <h4 id="list-item-1">Что мы за компания</h4>
        <p>Букер - универсальная компания по разработке web приложений</p>
        <h4 id="list-item-2">Наши цены:</h4>
        <p>Всё происходит по личной договорнённости</p>
        <h4 id="list-item-3">Каковы наши преимущества?</h4>
        <p>Собственный хостинг, собственаня поддеркжа и многое другое!</p>
        <h4 id="list-item-4">У меня упал сервер, что делать?</h4>
        <p> Свяжитесь с нашими админами по <a href="mailto:#">email@buker.ru</a>
        </p>
        <h4 id="list-item-5">Потерял доступ к аккаунту, что делать?</h4>
        <p> Мы не даём восстанавливать данные вручную, так как ващи данные очень важны для нас,
            пожалуйста напишите на <a href="mailto:#">account@buker.ru</a></p>
        <h4 id="list-item-6">Как попасть к вам работать?</h4>
        <p> Все вакансии размещаются на <a href="mailto:#">hh.ru</a></p>
        <h4 id="list-item-7">Остались вопросы?</h4>
        <p> Зарегестрируйтесь и задайте его в онлайн режиме!</p>
    </div>



</@c.page>