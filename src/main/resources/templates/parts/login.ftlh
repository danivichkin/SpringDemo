<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Имя пользователя:</label>
            <div class="col-sm-6">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="Имя пользователя"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Пароль:</label>
            <div class="col-sm-6">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="пароль"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Password:</label>
                <div class="col-sm-6">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"
                           placeholder="Retype password"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-6">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           placeholder="some@some.com"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="g-recaptcha" data-sitekey="6LdOlvUUAAAAAMnhtF5n_7MiNpeLfh_GwVbGjejQ"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Создать<#else>Войти</#if></button>
        <#if !isRegisterForm><a href="/registration">Зарегистрироваться</a></#if>
    </form>

    <div class="container slider">
        <div class="col-md-12">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" align="left">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/static/img/29498.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Всегда качетсвенно</h1>
                            <h3>Качество является нашим приоритетом</h3>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="/static/img/29498.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Быстры как Флэш</h1>
                            <h3>Комманда наших суппортов пополняется каждый день!</h3>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="/static/img/29498.png" class="d-block w-100" alt="...">
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
    </div>

</#macro>

<#macro logout>
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
                <button class="btn btn-primary" type="submit"><#if user??><#else>Зарегистрироваться</#if> </button>
            </form>
        </div>
    </div>
</#macro>