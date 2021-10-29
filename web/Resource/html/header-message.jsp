<div class="header">
    <nav class="header-contener">
        <div class="contener">
            <div class="side-left">
                <span>
                    <a href="${pageContext.request.contextPath}/${applicationScope['role']}" class="logo"><img id="logo_home" src="${pageContext.request.contextPath}/Resource/img/logo.svg" alt="logo" /></a>
                    <div id="DuckEdu">DUCK EDU</div>
                </span>
                <span>
                    <div class="search">
                        <form action="#" method="GET">
                            <button class="icon btn-search" id="searchIcon" type="submit">
                                <img src="${pageContext.request.contextPath}/Resource/img/search.png" alt="" />
                            </button>
                            <input type="text" id="searchInput" placeholder="Search" />
                        </form>
                        <div class="list-result-search">
                            <div class="result-search" id="a1" role="button">
                                <data>abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc</data>
                            </div>
                            <div class="result-search" id="a2" role="button">abc</div>
                            <div class="result-search" id="a3" role="button">abc</div>
                            <div class="result-search" id="a4" role="button">abc</div>
                            <div class="result-search" id="a5" role="button">abc</div>
                            <div class="result-search" id="a6" role="button">abc</div>
                        </div>
                    </div>
                </span>
            </div>
            <div class="side-right">
                <div class="option">
                    <nav>
                        <ul class="header_ul">
                            <li>
                                <img class="icon" src="${pageContext.request.contextPath}/Resource/img/bell.png" alt="" />
                                <ul class="drop">
                                    <li>
                                        <img style="width: 50px; padding-right: 10px" src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" /> some thing content there, Im handsome guy
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <img class="icon" src="${pageContext.request.contextPath}/Resource/img/setting.png" alt="" />
                                <ul class="drop setting">
                                    <a style="width: 100%" href="${pageContext.request.contextPath}/control?button-control=user">
                                        <li>
                                            <img style="width: 50px; padding-right: 10px" src="https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50" /> User
                                        </li>
                                    </a>
                                    <a style="width: 100%" href="${pageContext.request.contextPath}/control?button-control=setting">
                                        <li>Setting page</li>
                                    </a>
                                    <a style="width: 100%" href="${pageContext.request.contextPath}/control?button-control=logout">
                                        <li>Logout</li>
                                    </a>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </nav>
</div>