<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>${fns:getConfig('productName')}</title>
</head>
<body>
<div id="aside_container">
</div>
<div id="section_container">
    <section id="login_section" class="active">
        <header>
            <h1 class="title">${fns:getConfig('productName')}</h1>
            <!-- <nav class="right">
                <a data-target="section" data-icon="info" href="#about_section"></a>
            </nav> -->
        </header>
        <article data-scroll="true" id="login_article">
            <div class="indented">
                <form id="loginForm" action="${ctx}/login" method="post">
                    <div>&nbsp;</div>
                    <div class="input-group">
                        <div class="input-row">
                            <label for="username">账号</label>
                            <input type="text" name="username" id="username" placeholder="请填写登录账号">
                        </div>
                        <div class="input-row">
                            <label for="password">密码</label>
                            <input type="password" name="password" id="password" placeholder="请填写登录密码">
                        </div>
                    </div>
                    <%--<c:if test="${isValidateCodeLogin}">--%>
                        <div class="input-group" id="validateCodeDiv" style="display:block;">
                            <div class="input-row">
                                <label class="input-label mid" for="validateCode">验证码</label>
                                <sys:validateCode name="validateCode" inputCssStyle="margin-bottom:0;"
                                                  imageCssStyle="padding-top:7px;"/>
                            </div>
                        </div>
                    <%--</c:if>--%>
                    <div>&nbsp;</div>
                    <input type="hidden" name="mobileLogin" value="true">
                    <button id="btn" class="submit block" data-icon="key">登录</button>
                </form>
            </div>
        </article>
    </section>
</div>
<%@ include file="/WEB-INF/views/mobile/include/head.jsp" %>
<script type="text/javascript">
    var sessionid = '${not empty fns:getPrincipal() ? fns:getPrincipal().sessionid : ""}';
    $('body').delegate('#login_section', 'pageinit', function () {
        $("#loginForm").submit(function () {
            if ($('#username').val() == '') {
                J.showToast('请填写账号', 'info');
            } else if ($('#password').val() == '') {
                J.showToast('请填写密码', 'info');
            } else if ($('#validateCodeDiv').is(':visible') && $('#validateCode').val() == '') {
                J.showToast('请填写验证码', 'info');
            } else {
                var loginForm = $("#loginForm");
                $.post(loginForm.attr('action'), loginForm.serializeArray(), function (data) {
                    console.log(data);
                    console.log(data.sessionid);
                    console.log(data.message);
                    console.log(data.shiroLoginFailure);
//                    if (data && data.sessionid) {
                    if (!data.message) {
//                        sessionid = data.sessionid;
//                        J.showToast('登录成功！', 'success');
//                        J.Router.goTo('#index_section?index');
                        location.href="${ctx}"
                    } else {
                        J.showToast(data.message, 'error');
                        if (data.shiroLoginFailure == 'org.apache.shiro.authc.AuthenticationException') {
                            $('#validateCodeDiv').show();
                        }
                        $('#validateCodeDiv a').click();
                    }
                });
            }
            return false;
        });
    });
    $('body').delegate('#login_section', 'pageshow', function () {
        if (sessionid != '') {
            var targetHash = location.hash;
            if (targetHash == '#login_section') {
                J.showToast('你已经登录！', 'success');
                J.Router.goTo('#index_section?index');
            }
        } else {
            $('#login_article').addClass('active');
        }
    });
</script>
</body>
</html>