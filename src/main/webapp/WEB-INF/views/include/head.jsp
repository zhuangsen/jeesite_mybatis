<%@ page contentType="text/html;charset=UTF-8" %>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<meta http-equiv="Cache-Control" content="no-store"/>
<%--<meta http-equiv="Cache-Control" content="no-cache">--%>
<meta http-equiv="Pragma" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta name="author" content="http://jeesite.com/"/>
<%--content的取值为webkit,ie-comp,ie-stand之一，区分大小写，分别代表用webkit内核，IE兼容内核，IE标准内核。
若页面需默认用极速核，增加标签：<meta name="renderer" content="webkit">
若页面需默认用ie兼容内核，增加标签：<meta name="renderer" content="ie-comp">
若页面需默认用ie标准内核，增加标签：<meta name="renderer" content="ie-stand">--%>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=7,IE=9,IE=10"/>

<script src="${ctxStatic}/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<link href="${ctxStatic}/jquery-select2/3.4/select2.min.css" rel="stylesheet"/>
<script src="${ctxStatic}/jquery-select2/3.4/select2.min.js" type="text/javascript"></script>
<link href="${ctxStatic}/jquery-validation/1.11.0/jquery.validate.min.css" type="text/css" rel="stylesheet"/>
<script src="${ctxStatic}/jquery-validation/1.11.0/jquery.validate.min.js" type="text/javascript"></script>
<link href="${ctxStatic}/jquery-jbox/2.3/Skins/Bootstrap/jbox.min.css" rel="stylesheet"/>
<script src="${ctxStatic}/jquery-jbox/2.3/jquery.jBox-2.3.min.js" type="text/javascript"></script>
<link href="${ctxStatic}/bootstrap/2.3.1/css_${not empty cookie.theme.value ? cookie.theme.value : 'default'}/bootstrap.min.css"
      type="text/css" rel="stylesheet"/>
<script src="${ctxStatic}/bootstrap/2.3.1/js/bootstrap.min.js" type="text/javascript"></script>
<link href="${ctxStatic}/bootstrap/2.3.1/awesome/font-awesome.min.css" type="text/css" rel="stylesheet"/>
<!--[if lte IE 7]><link href="${ctxStatic}/bootstrap/2.3.1/awesome/font-awesome-ie7.min.css" type="text/css" rel="stylesheet" /><![endif]-->
<!--[if lte IE 6]><link href="${ctxStatic}/bootstrap/bsie/css/bootstrap-ie6.min.css" type="text/css" rel="stylesheet" />
<script src="${ctxStatic}/bootstrap/bsie/js/bootstrap-ie.min.js" type="text/javascript"></script><![endif]-->
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]> <script src="${ctxStatic}/common/html5.js"></script><![endif]-->
<script src="${ctxStatic}/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="${ctxStatic}/common/mustache.min.js" type="text/javascript"></script>
<link href="${ctxStatic}/common/jeesite.css" type="text/css" rel="stylesheet"/>
<script src="${ctxStatic}/common/jeesite.js" type="text/javascript"></script>
<script type="text/javascript">var ctx = '${ctx}', ctxStatic = '${ctxStatic}';</script>