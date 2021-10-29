<div class="header">
    <nav class="header-contener">
        <div class="contener">
            <div class="side-left">
                <span>
                    <a href="${pageContext.request.contextPath}" class="logo"><img id="logo_home" src="${pageContext.request.contextPath}/Resource/img/logo.svg" alt="logo" /></a>
                    <div id="DuckEdu">
                        DUCK EDU
                    </div>
                </span>
                <span>
                    <div class="search">
                        <form action="#" method="GET">
                            <button class="icon btn-search " id="searchIcon" type="submit"><img src="Resource/img/search.png" alt=""></button>
                            <input type="text" id="searchInput" placeholder="Search">
                        </form>
                        <div class="list-result-search">
                            <div class="result-search" id="a1" role="button" ><data>abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc</data></div>
                            <div class="result-search" id="a2" role="button" >abc</div>
                            <div class="result-search" id="a3" role="button" >abc</div>
                            <div class="result-search" id="a4" role="button" >abc</div>
                            <div class="result-search" id="a5" role="button" >abc</div>
                            <div class="result-search" id="a6" role="button" >abc</div>
                        </div>
                    </div>
                </span>
            </div>
            <div class="side-right">
                <span>
                    <button type="submit" class="button-38 btn btn-primary btn-lg" value="login" name="button-control" onclick="sendRedirect(this)">Login</button>
                </span>
                <span>
                    <button type="submit" class="button-38 btn btn-primary btn-lg" value="signup" name="button-control" onclick="sendRedirect(this)">Sign Up</button>
                </span>
            </div>
        </div>
    </nav>
</div>