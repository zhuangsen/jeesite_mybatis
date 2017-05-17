/* cms table*/

SET SESSION FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS cms_article;
DROP TABLE IF EXISTS cms_article_data;
DROP TABLE IF EXISTS cms_category;
DROP TABLE IF EXISTS cms_comment;
DROP TABLE IF EXISTS cms_guestbook;
DROP TABLE IF EXISTS cms_link;
DROP TABLE IF EXISTS cms_site;
/* Create Tables */

CREATE TABLE cms_article
(
	id varchar(64) NOT NULL COMMENT '编号',
	category_id varchar(64) NOT NULL COMMENT '栏目编号',
	title varchar(255) NOT NULL COMMENT '标题',
	link varchar(255) COMMENT '文章链接',
	color varchar(50) COMMENT '标题颜色',
	image varchar(255) COMMENT '文章图片',
	keywords varchar(255) COMMENT '关键字',
	description varchar(255) COMMENT '描述、摘要',
	weight int DEFAULT 0 COMMENT '权重，越大越靠前',
	weight_date datetime COMMENT '权重期限',
	hits int DEFAULT 0 COMMENT '点击数',
	posid varchar(10) COMMENT '推荐位，多选',
	custom_content_view varchar(255) COMMENT '自定义内容视图',
	view_config text COMMENT '视图配置',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	update_by varchar(64) COMMENT '更新者',
	update_date datetime COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '文章表';



CREATE TABLE cms_article_data
(
	id varchar(64) NOT NULL COMMENT '编号',
	content text COMMENT '文章内容',
	copyfrom varchar(255) COMMENT '文章来源',
	relation varchar(255) COMMENT '相关文章',
	allow_comment char(1) COMMENT '是否允许评论',
	PRIMARY KEY (id)
) COMMENT = '文章详表';

BEGIN;
INSERT INTO cms_article_data VALUES ('1', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('2', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('3', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('4', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('5', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('6', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('7', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('8', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('9', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('10', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('11', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('12', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('13', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('14', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('15', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('16', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('17', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('18', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('19', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('20', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('21', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('22', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('23', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('24', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('25', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('26', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('27', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('28', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('29', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('30', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('31', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('32', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('33', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('34', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('35', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('36', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('37', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('38', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('39', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('40', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('41', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('42', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('43', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('44', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('45', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('46', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('47', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('48', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('49', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('50', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('51', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('52', '文章内容内容内容内容', '来源', '1,2,3', '1'), ('53', '文章内容内容内容内容', '来源', '1,2,3', '1');
COMMIT;

CREATE TABLE cms_category
(
	id varchar(64) NOT NULL COMMENT '编号',
	parent_id varchar(64) NOT NULL COMMENT '父级编号',
	parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
	site_id varchar(64) DEFAULT '1' COMMENT '站点编号',
	office_id varchar(64) COMMENT '归属机构',
	module varchar(20) COMMENT '栏目模块',
	name varchar(100) NOT NULL COMMENT '栏目名称',
	image varchar(255) COMMENT '栏目图片',
	href varchar(255) COMMENT '链接',
	target varchar(20) COMMENT '目标',
	description varchar(255) COMMENT '描述',
	keywords varchar(255) COMMENT '关键字',
	sort int DEFAULT 30 COMMENT '排序（升序）',
	in_menu char(1) DEFAULT '1' COMMENT '是否在导航中显示',
	in_list char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
	show_modes char(1) DEFAULT '0' COMMENT '展现方式',
	allow_comment char(1) COMMENT '是否允许评论',
	is_audit char(1) COMMENT '是否需要审核',
	custom_list_view varchar(255) COMMENT '自定义列表视图',
	custom_content_view varchar(255) COMMENT '自定义内容视图',
	view_config text COMMENT '视图配置',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	update_by varchar(64) COMMENT '更新者',
	update_date datetime COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '栏目表';

BEGIN;
INSERT INTO cms_category VALUES ('1', '0', '1', '0', '0,', '', '顶级栏目', '', '', '', '', '', '0', '1', '1', '0', '0', '1', '', '1', '41421', '1', '41421', '0'), ('2', '1', '3', '1', '0,1,', 'article', '组织机构', '', '', '', '', '', '10', '1', '1', '0', '0', '1', '', '1', '41421', '1', '41421', '0'), ('3', '1', '3', '2', '0,1,2,', 'article', '网站简介', '', '', '', '', '', '30', '1', '1', '0', '0', '1', '', '1', '41421', '1', '41421', '0'), ('4', '1', '3', '2', '0,1,2,', 'article', '内部机构', '', '', '', '', '', '40', '1', '1', '0', '0', '1', '', '1', '41421', '1', '41421', '0'), ('5', '1', '3', '2', '0,1,2,', 'article', '地方机构', '', '', '', '', '', '50', '1', '1', '0', '0', '1', '', '1', '41421', '1', '41421', '0'), ('6', '1', '3', '1', '0,1,', 'article', '质量检验', '', '', '', '', '', '20', '1', '1', '1', '1', '0', '', '1', '41421', '1', '41421', '0'), ('7', '1', '3', '6', '0,1,6,', 'article', '产品质量', '', '', '', '', '', '30', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('8', '1', '3', '6', '0,1,6,', 'article', '技术质量', '', '', '', '', '', '40', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('9', '1', '3', '6', '0,1,6,', 'article', '工程质量', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('10', '1', '4', '1', '0,1,', 'article', '软件介绍', '', '', '', '', '', '20', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('11', '1', '4', '10', '0,1,10,', 'article', '网络工具', '', '', '', '', '', '30', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('12', '1', '4', '10', '0,1,10,', 'article', '浏览工具', '', '', '', '', '', '40', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('13', '1', '4', '10', '0,1,10,', 'article', '浏览辅助', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('14', '1', '4', '10', '0,1,10,', 'article', '网络优化', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('15', '1', '4', '10', '0,1,10,', 'article', '邮件处理', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('16', '1', '4', '10', '0,1,10,', 'article', '下载工具', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('17', '1', '4', '10', '0,1,10,', 'article', '搜索工具', '', '', '', '', '', '50', '1', '1', '2', '1', '0', '', '1', '41421', '1', '41421', '0'), ('18', '1', '5', '1', '0,1,', 'link', '友情链接', '', '', '', '', '', '90', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('19', '1', '5', '18', '0,1,18,', 'link', '常用网站', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('20', '1', '5', '18', '0,1,18,', 'link', '门户网站', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('21', '1', '5', '18', '0,1,18,', 'link', '购物网站', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('22', '1', '5', '18', '0,1,18,', 'link', '交友社区', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('23', '1', '5', '18', '0,1,18,', 'link', '音乐视频', '', '', '', '', '', '50', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('24', '1', '6', '1', '0,1,', '', '百度一下', '', 'http://www.baidu.com', '_blank', '', '', '90', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('25', '1', '6', '1', '0,1,', '', '全文检索', '', '/search', '', '', '', '90', '0', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('26', '2', '6', '1', '0,1,', 'article', '测试栏目', '', '', '', '', '', '90', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0'), ('27', '1', '6', '1', '0,1,', '', '公共留言', '', '/guestbook', '', '', '', '90', '1', '1', '0', '1', '0', '', '1', '41421', '1', '41421', '0');
COMMIT;

CREATE TABLE cms_comment
(
	id varchar(64) NOT NULL COMMENT '编号',
	category_id varchar(64) NOT NULL COMMENT '栏目编号',
	content_id varchar(64) NOT NULL COMMENT '栏目内容的编号',
	title varchar(255) COMMENT '栏目内容的标题',
	content varchar(255) COMMENT '评论内容',
	name varchar(100) COMMENT '评论姓名',
	ip varchar(100) COMMENT '评论IP',
	create_date datetime NOT NULL COMMENT '评论时间',
	audit_user_id varchar(64) COMMENT '审核人',
	audit_date datetime COMMENT '审核时间',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '评论表';


CREATE TABLE cms_guestbook
(
	id varchar(64) NOT NULL COMMENT '编号',
	type char(1) NOT NULL COMMENT '留言分类',
	content varchar(255) NOT NULL COMMENT '留言内容',
	name varchar(100) NOT NULL COMMENT '姓名',
	email varchar(100) NOT NULL COMMENT '邮箱',
	phone varchar(100) NOT NULL COMMENT '电话',
	workunit varchar(100) NOT NULL COMMENT '单位',
	ip varchar(100) NOT NULL COMMENT 'IP',
	create_date datetime NOT NULL COMMENT '留言时间',
	re_user_id varchar(64) COMMENT '回复人',
	re_date datetime COMMENT '回复时间',
	re_content varchar(100) COMMENT '回复内容',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '留言板';


CREATE TABLE cms_link
(
	id varchar(64) NOT NULL COMMENT '编号',
	category_id varchar(64) NOT NULL COMMENT '栏目编号',
	title varchar(255) NOT NULL COMMENT '链接名称',
	color varchar(50) COMMENT '标题颜色',
	image varchar(255) COMMENT '链接图片',
	href varchar(255) COMMENT '链接地址',
	weight int DEFAULT 0 COMMENT '权重，越大越靠前',
	weight_date datetime COMMENT '权重期限',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	update_by varchar(64) COMMENT '更新者',
	update_date datetime COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '友情链接';

BEGIN;
INSERT INTO cms_link VALUES ('1', '19', 'JeeSite', '', '', 'http://thinkgem.github.com/jeesite', '0', '', '1', '41421', '1', '41421', '0'), ('2', '19', 'ThinkGem', '', '', 'http://thinkgem.iteye.com/', '0', '', '1', '41421', '1', '41421', '0'), ('3', '19', '百度一下', '', '', 'http://www.baidu.com', '0', '', '1', '41421', '1', '41421', '0'), ('4', '19', '谷歌搜索', '', '', 'http://www.google.com', '0', '', '1', '41421', '1', '41421', '0'), ('5', '20', '新浪网', '', '', 'http://www.sina.com.cn', '0', '', '1', '41421', '1', '41421', '0'), ('6', '20', '腾讯网', '', '', 'http://www.qq.com/', '0', '', '1', '41421', '1', '41421', '0'), ('7', '21', '淘宝网', '', '', 'http://www.taobao.com/', '0', '', '1', '41421', '1', '41421', '0'), ('8', '21', '新华网', '', '', 'http://www.xinhuanet.com/', '0', '', '1', '41421', '1', '41421', '0'), ('9', '22', '赶集网', '', '', 'http://www.ganji.com/', '0', '', '1', '41421', '1', '41421', '0'), ('10', '22', '58同城', '', '', 'http://www.58.com/', '0', '', '1', '41421', '1', '41421', '0'), ('11', '23', '视频大全', '', '', 'http://v.360.cn/', '0', '', '1', '41421', '1', '41421', '0'), ('12', '23', '凤凰网', '', '', 'http://www.ifeng.com/', '0', '', '1', '41421', '1', '41421', '0');
COMMIT;


CREATE TABLE cms_site
(
	id varchar(64) NOT NULL COMMENT '编号',
	name varchar(100) NOT NULL COMMENT '站点名称',
	title varchar(100) NOT NULL COMMENT '站点标题',
	logo varchar(255) COMMENT '站点Logo',
	domain varchar(255) COMMENT '站点域名',
	description varchar(255) COMMENT '描述',
	keywords varchar(255) COMMENT '关键字',
	theme varchar(255) DEFAULT 'default' COMMENT '主题',
	copyright text COMMENT '版权信息',
	custom_index_view varchar(255) COMMENT '自定义站点首页视图',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	update_by varchar(64) COMMENT '更新者',
	update_date datetime COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '站点表';

BEGIN;
INSERT INTO cms_site VALUES ('1', '默认站点', 'JeeSite Web', 'JeeSite', 'JeeSite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', '', '1', '41421', '1', '41421', '0'), ('2', '子站点测试', 'JeeSite Subsite', 'JeeSite subsite', 'JeeSite subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', '', '1', '41421', '1', '41421', '0');
COMMIT;

/* Create Indexes */

CREATE INDEX cms_article_create_by ON cms_article (create_by ASC);
CREATE INDEX cms_article_title ON cms_article (title ASC);
CREATE INDEX cms_article_keywords ON cms_article (keywords ASC);
CREATE INDEX cms_article_del_flag ON cms_article (del_flag ASC);
CREATE INDEX cms_article_weight ON cms_article (weight ASC);
CREATE INDEX cms_article_update_date ON cms_article (update_date ASC);
CREATE INDEX cms_article_category_id ON cms_article (category_id ASC);
CREATE INDEX cms_category_parent_id ON cms_category (parent_id ASC);
/*CREATE INDEX cms_category_parent_ids ON cms_category (parent_ids ASC);*/
CREATE INDEX cms_category_module ON cms_category (module ASC);
CREATE INDEX cms_category_name ON cms_category (name ASC);
CREATE INDEX cms_category_sort ON cms_category (sort ASC);
CREATE INDEX cms_category_del_flag ON cms_category (del_flag ASC);
CREATE INDEX cms_category_office_id ON cms_category (office_id ASC);
CREATE INDEX cms_category_site_id ON cms_category (site_id ASC);
CREATE INDEX cms_comment_category_id ON cms_comment (category_id ASC);
CREATE INDEX cms_comment_content_id ON cms_comment (content_id ASC);
CREATE INDEX cms_comment_status ON cms_comment (del_flag ASC);
CREATE INDEX cms_guestbook_del_flag ON cms_guestbook (del_flag ASC);
CREATE INDEX cms_link_category_id ON cms_link (category_id ASC);
CREATE INDEX cms_link_title ON cms_link (title ASC);
CREATE INDEX cms_link_del_flag ON cms_link (del_flag ASC);
CREATE INDEX cms_link_weight ON cms_link (weight ASC);
CREATE INDEX cms_link_create_by ON cms_link (create_by ASC);
CREATE INDEX cms_link_update_date ON cms_link (update_date ASC);
CREATE INDEX cms_site_del_flag ON cms_site (del_flag ASC);



/* gen table*/
SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables*/

DROP TABLE IF EXISTS gen_scheme;
DROP TABLE IF EXISTS gen_table_column;
DROP TABLE IF EXISTS gen_table;
DROP TABLE IF EXISTS gen_template; 




/* Create Tables */

CREATE TABLE gen_scheme
(
	id varchar(64) NOT NULL COMMENT '编号',
	name varchar(200) COMMENT '名称',
	category varchar(2000) COMMENT '分类',
	package_name varchar(500) COMMENT '生成包路径',
	module_name varchar(30) COMMENT '生成模块名',
	sub_module_name varchar(30) COMMENT '生成子模块名',
	function_name varchar(500) COMMENT '生成功能名',
	function_name_simple varchar(100) COMMENT '生成功能名（简写）',
	function_author varchar(100) COMMENT '生成功能作者',
	gen_table_id varchar(200) COMMENT '生成表编号',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	update_by varchar(64) COMMENT '更新者',
	update_date datetime COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id)
) COMMENT = '生成方案';


CREATE TABLE gen_table
(
	id varchar(64) NOT NULL COMMENT '编号',
	name varchar(200) COMMENT '名称',
	comments varchar(500) COMMENT '描述',
	class_name varchar(100) COMMENT '实体类名称',
	parent_table varchar(200) COMMENT '关联父表',
	parent_table_fk varchar(100) COMMENT '关联父表外键',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	update_by varchar(64) COMMENT '更新者',
	update_date datetime COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id)
) COMMENT = '业务表';


CREATE TABLE gen_table_column
(
	id varchar(64) NOT NULL COMMENT '编号',
	gen_table_id varchar(64) COMMENT '归属表编号',
	name varchar(200) COMMENT '名称',
	comments varchar(500) COMMENT '描述',
	jdbc_type varchar(100) COMMENT '列的数据类型的字节长度',
	java_type varchar(500) COMMENT 'JAVA类型',
	java_field varchar(200) COMMENT 'JAVA字段名',
	is_pk char(1) COMMENT '是否主键',
	is_null char(1) COMMENT '是否可为空',
	is_insert char(1) COMMENT '是否为插入字段',
	is_edit char(1) COMMENT '是否编辑字段',
	is_list char(1) COMMENT '是否列表字段',
	is_query char(1) COMMENT '是否查询字段',
	query_type varchar(200) COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
	show_type varchar(200) COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
	dict_type varchar(200) COMMENT '字典类型',
	settings varchar(2000) COMMENT '其它设置（扩展字段JSON）',
	sort decimal COMMENT '排序（升序）',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	update_by varchar(64) COMMENT '更新者',
	update_date datetime COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id)
) COMMENT = '业务表字段';


CREATE TABLE gen_template
(
	id varchar(64) NOT NULL COMMENT '编号',
	name varchar(200) COMMENT '名称',
	category varchar(2000) COMMENT '分类',
	file_path varchar(500) COMMENT '生成文件路径',
	file_name varchar(200) COMMENT '生成文件名',
	content text COMMENT '内容',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	update_by varchar(64) COMMENT '更新者',
	update_date datetime COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id)
) COMMENT = '代码模板表';



/* Create Indexes */

CREATE INDEX gen_scheme_del_flag ON gen_scheme (del_flag ASC);
CREATE INDEX gen_table_name ON gen_table (name ASC);
CREATE INDEX gen_table_del_flag ON gen_table (del_flag ASC);
CREATE INDEX gen_table_column_table_id ON gen_table_column (gen_table_id ASC);
CREATE INDEX gen_table_column_name ON gen_table_column (name ASC);
CREATE INDEX gen_table_column_sort ON gen_table_column (sort ASC);
CREATE INDEX gen_table_column_del_flag ON gen_table_column (del_flag ASC);
CREATE INDEX gen_template_del_falg ON gen_template (del_flag ASC);



/* oa table*/
SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS oa_leave;
DROP TABLE IF EXISTS oa_notify_record;
DROP TABLE IF EXISTS oa_notify;
DROP TABLE IF EXISTS OA_TEST_AUDIT;




/* Create Tables */

CREATE TABLE oa_leave
(
	id varchar(64) NOT NULL COMMENT '编号',
	process_instance_id varchar(64) COMMENT '流程实例编号',
	start_time datetime COMMENT '开始时间',
	end_time datetime COMMENT '结束时间',
	leave_type varchar(20) COMMENT '请假类型',
	reason varchar(255) COMMENT '请假理由',
	apply_time datetime COMMENT '申请时间',
	reality_start_time datetime COMMENT '实际开始时间',
	reality_end_time datetime COMMENT '实际结束时间',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '请假流程表';


CREATE TABLE oa_notify
(
	id varchar(64) NOT NULL COMMENT '编号',
	type char(1) COMMENT '类型',
	title varchar(200) COMMENT '标题',
	content varchar(2000) COMMENT '内容',
	files varchar(2000) COMMENT '附件',
	status char(1) COMMENT '状态',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '通知通告';


CREATE TABLE oa_notify_record
(
	id varchar(64) NOT NULL COMMENT '编号',
	oa_notify_id varchar(64) COMMENT '通知通告ID',
	user_id varchar(64) COMMENT '接受人',
	read_flag char(1) DEFAULT '0' COMMENT '阅读标记',
	read_date date COMMENT '阅读时间',
	PRIMARY KEY (id)
) COMMENT = '通知通告发送记录';


CREATE TABLE OA_TEST_AUDIT
(
	id varchar(64) NOT NULL COMMENT '编号',
	PROC_INS_ID varchar(64) COMMENT '流程实例ID',
	USER_ID varchar(64) COMMENT '变动用户',
	OFFICE_ID varchar(64) COMMENT '归属部门',
	POST varchar(255) COMMENT '岗位',
	AGE char(1) COMMENT '性别',
	EDU varchar(255) COMMENT '学历',
	CONTENT varchar(255) COMMENT '调整原因',
	OLDA varchar(255) COMMENT '现行标准 薪酬档级',
	OLDB varchar(255) COMMENT '现行标准 月工资额',
	OLDC varchar(255) COMMENT '现行标准 年薪总额',
	NEWA varchar(255) COMMENT '调整后标准 薪酬档级',
	NEWB varchar(255) COMMENT '调整后标准 月工资额',
	NEWC varchar(255) COMMENT '调整后标准 年薪总额',
	ADD_NUM varchar(255) COMMENT '月增资',
	EXE_DATE varchar(255) COMMENT '执行时间',
	HR_TEXT varchar(255) COMMENT '人力资源部门意见',
	LEAD_TEXT varchar(255) COMMENT '分管领导意见',
	MAIN_LEAD_TEXT varchar(255) COMMENT '集团主要领导意见',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	CONSTRAINT SYS_C0016476 PRIMARY KEY (id)
) COMMENT = '审批流程测试表';



/* Create Indexes */

CREATE INDEX oa_leave_create_by ON oa_leave (create_by ASC);
CREATE INDEX oa_leave_process_instance_id ON oa_leave (process_instance_id ASC);
CREATE INDEX oa_leave_del_flag ON oa_leave (del_flag ASC);
CREATE INDEX oa_notify_del_flag ON oa_notify (del_flag ASC);
CREATE INDEX oa_notify_record_notify_id ON oa_notify_record (oa_notify_id ASC);
CREATE INDEX oa_notify_record_user_id ON oa_notify_record (user_id ASC);
CREATE INDEX oa_notify_record_read_flag ON oa_notify_record (read_flag ASC);
CREATE INDEX OA_TEST_AUDIT_del_flag ON OA_TEST_AUDIT (del_flag ASC);




/*sys table*/
SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS sys_role_office;
DROP TABLE IF EXISTS sys_user_role;
DROP TABLE IF EXISTS sys_user;
DROP TABLE IF EXISTS sys_office;
DROP TABLE IF EXISTS sys_area;
DROP TABLE IF EXISTS sys_dict;
DROP TABLE IF EXISTS sys_log;
DROP TABLE IF EXISTS sys_mdict;
DROP TABLE IF EXISTS sys_role_menu;
DROP TABLE IF EXISTS sys_menu;
DROP TABLE IF EXISTS sys_role;




/* Create Tables */

CREATE TABLE sys_area
(
	id varchar(64) NOT NULL COMMENT '编号',
	parent_id varchar(64) NOT NULL COMMENT '父级编号',
	parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
	name varchar(100) NOT NULL COMMENT '名称',
	sort decimal(10,0) NOT NULL COMMENT '排序',
	code varchar(100) COMMENT '区域编码',
	type char(1) COMMENT '区域类型',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '区域表';

BEGIN;
INSERT INTO sys_area VALUES ('1', '0', '0,', '中国', '10', '100000', '1', '', '1', '41421', '1', '41421', '0'), ('2', '1', '0,1,', '山东省', '20', '110000', '2', '', '1', '41421', '1', '41421', '0'), ('3', '2', '0,1,2,', '济南市', '30', '110101', '3', '', '1', '41421', '1', '41421', '0'), ('4', '3', '0,1,2,3,', '历城区', '40', '110102', '4', '', '1', '41421', '1', '41421', '0'), ('5', '3', '0,1,2,3,', '历下区', '50', '110104', '4', '', '1', '41421', '1', '41421', '0'), ('6', '3', '0,1,2,3,', '高新区', '60', '110105', '4', '', '1', '41421', '1', '41421', '0');
COMMIT;


CREATE TABLE sys_dict
(
	id varchar(64) NOT NULL COMMENT '编号',
	value varchar(100) NOT NULL COMMENT '数据值',
	label varchar(100) NOT NULL COMMENT '标签名',
	type varchar(100) NOT NULL COMMENT '类型',
	description varchar(100) NOT NULL COMMENT '描述',
	sort decimal(10,0) NOT NULL COMMENT '排序（升序）',
	parent_id varchar(64) DEFAULT '0' COMMENT '父级编号',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '字典表';

BEGIN;
INSERT INTO sys_dict VALUES ('1', '正常', '0', 'del_flag', '删除标记', '10', '', '1', '41421', '1', '41421', '0'), ('2', '删除', '1', 'del_flag', '删除标记', '20', '', '1', '41421', '1', '41421', '0'), ('3', '显示', '1', 'show_hide', '显示/隐藏', '10', '', '1', '41421', '1', '41421', '0'), ('4', '隐藏', '0', 'show_hide', '显示/隐藏', '20', '', '1', '41421', '1', '41421', '0'), ('5', '是', '1', 'yes_no', '是/否', '10', '', '1', '41421', '1', '41421', '0'), ('6', '否', '0', 'yes_no', '是/否', '20', '', '1', '41421', '1', '41421', '0'), ('7', '红色', 'red', 'color', '颜色值', '10', '', '1', '41421', '1', '41421', '0'), ('8', '绿色', 'green', 'color', '颜色值', '20', '', '1', '41421', '1', '41421', '0'), ('9', '蓝色', 'blue', 'color', '颜色值', '30', '', '1', '41421', '1', '41421', '0'), ('10', '黄色', 'yellow', 'color', '颜色值', '40', '', '1', '41421', '1', '41421', '0'), ('11', '橙色', 'orange', 'color', '颜色值', '50', '', '1', '41421', '1', '41421', '0'), ('12', '默认主题', 'default', 'theme', '主题方案', '10', '', '1', '41421', '1', '41421', '0'), ('13', '天蓝主题', 'cerulean', 'theme', '主题方案', '20', '', '1', '41421', '1', '41421', '0'), ('14', '橙色主题', 'readable', 'theme', '主题方案', '30', '', '1', '41421', '1', '41421', '0'), ('15', '红色主题', 'united', 'theme', '主题方案', '40', '', '1', '41421', '1', '41421', '0'), ('16', 'Flat主题', 'flat', 'theme', '主题方案', '60', '', '1', '41421', '1', '41421', '0'), ('17', '国家', '1', 'sys_area_type', '区域类型', '10', '', '1', '41421', '1', '41421', '0'), ('18', '省份、直辖市', '2', 'sys_area_type', '区域类型', '20', '', '1', '41421', '1', '41421', '0'), ('19', '地市', '3', 'sys_area_type', '区域类型', '30', '', '1', '41421', '1', '41421', '0'), ('20', '区县', '4', 'sys_area_type', '区域类型', '40', '', '1', '41421', '1', '41421', '0'), ('21', '公司', '1', 'sys_office_type', '机构类型', '60', '', '1', '41421', '1', '41421', '0'), ('22', '部门', '2', 'sys_office_type', '机构类型', '70', '', '1', '41421', '1', '41421', '0'), ('23', '小组', '3', 'sys_office_type', '机构类型', '80', '', '1', '41421', '1', '41421', '0'), ('24', '其它', '4', 'sys_office_type', '机构类型', '90', '', '1', '41421', '1', '41421', '0'), ('25', '综合部', '1', 'sys_office_common', '快捷通用部门', '30', '', '1', '41421', '1', '41421', '0'), ('26', '开发部', '2', 'sys_office_common', '快捷通用部门', '40', '', '1', '41421', '1', '41421', '0'), ('27', '人力部', '3', 'sys_office_common', '快捷通用部门', '50', '', '1', '41421', '1', '41421', '0'), ('28', '一级', '1', 'sys_office_grade', '机构等级', '10', '', '1', '41421', '1', '41421', '0'), ('29', '二级', '2', 'sys_office_grade', '机构等级', '20', '', '1', '41421', '1', '41421', '0'), ('30', '三级', '3', 'sys_office_grade', '机构等级', '30', '', '1', '41421', '1', '41421', '0'), ('31', '四级', '4', 'sys_office_grade', '机构等级', '40', '', '1', '41421', '1', '41421', '0'), ('32', '所有数据', '1', 'sys_data_scope', '数据范围', '10', '', '1', '41421', '1', '41421', '0'), ('33', '所在公司及以下数据', '2', 'sys_data_scope', '数据范围', '20', '', '1', '41421', '1', '41421', '0'), ('34', '所在公司数据', '3', 'sys_data_scope', '数据范围', '30', '', '1', '41421', '1', '41421', '0'), ('35', '所在部门及以下数据', '4', 'sys_data_scope', '数据范围', '40', '', '1', '41421', '1', '41421', '0'), ('36', '所在部门数据', '5', 'sys_data_scope', '数据范围', '50', '', '1', '41421', '1', '41421', '0'), ('37', '仅本人数据', '8', 'sys_data_scope', '数据范围', '90', '', '1', '41421', '1', '41421', '0'), ('38', '按明细设置', '9', 'sys_data_scope', '数据范围', '100', '', '1', '41421', '1', '41421', '0'), ('39', '系统管理', '1', 'sys_user_type', '用户类型', '10', '', '1', '41421', '1', '41421', '0'), ('40', '部门经理', '2', 'sys_user_type', '用户类型', '20', '', '1', '41421', '1', '41421', '0'), ('41', '普通用户', '3', 'sys_user_type', '用户类型', '30', '', '1', '41421', '1', '41421', '0'), ('42', '基础主题', 'basic', 'cms_theme', '站点主题', '10', '', '1', '41421', '1', '41421', '0'), ('43', '蓝色主题', 'blue', 'cms_theme', '站点主题', '20', '', '1', '41421', '1', '41421', '1'), ('44', '红色主题', 'red', 'cms_theme', '站点主题', '30', '', '1', '41421', '1', '41421', '1'), ('45', '文章模型', 'article', 'cms_module', '栏目模型', '10', '', '1', '41421', '1', '41421', '0'), ('46', '图片模型', 'picture', 'cms_module', '栏目模型', '20', '', '1', '41421', '1', '41421', '1'), ('47', '下载模型', 'download', 'cms_module', '栏目模型', '30', '', '1', '41421', '1', '41421', '1'), ('48', '链接模型', 'link', 'cms_module', '栏目模型', '40', '', '1', '41421', '1', '41421', '0'), ('49', '专题模型', 'special', 'cms_module', '栏目模型', '50', '', '1', '41421', '1', '41421', '1'), ('50', '默认展现方式', '0', 'cms_show_modes', '展现方式', '10', '', '1', '41421', '1', '41421', '0'), ('51', '首栏目内容列表', '1', 'cms_show_modes', '展现方式', '20', '', '1', '41421', '1', '41421', '0'), ('52', '栏目第一条内容', '2', 'cms_show_modes', '展现方式', '30', '', '1', '41421', '1', '41421', '0'), ('53', '发布', '0', 'cms_del_flag', '内容状态', '10', '', '1', '41421', '1', '41421', '0'), ('54', '删除', '1', 'cms_del_flag', '内容状态', '20', '', '1', '41421', '1', '41421', '0'), ('55', '审核', '2', 'cms_del_flag', '内容状态', '15', '', '1', '41421', '1', '41421', '0'), ('56', '首页焦点图', '1', 'cms_posid', '推荐位', '10', '', '1', '41421', '1', '41421', '0'), ('57', '栏目页文章推荐', '2', 'cms_posid', '推荐位', '20', '', '1', '41421', '1', '41421', '0'), ('58', '咨询', '1', 'cms_guestbook', '留言板分类', '10', '', '1', '41421', '1', '41421', '0'), ('59', '建议', '2', 'cms_guestbook', '留言板分类', '20', '', '1', '41421', '1', '41421', '0'), ('60', '投诉', '3', 'cms_guestbook', '留言板分类', '30', '', '1', '41421', '1', '41421', '0'), ('61', '其它', '4', 'cms_guestbook', '留言板分类', '40', '', '1', '41421', '1', '41421', '0'), ('62', '公休', '1', 'oa_leave_type', '请假类型', '10', '', '1', '41421', '1', '41421', '0'), ('63', '病假', '2', 'oa_leave_type', '请假类型', '20', '', '1', '41421', '1', '41421', '0'), ('64', '事假', '3', 'oa_leave_type', '请假类型', '30', '', '1', '41421', '1', '41421', '0'), ('65', '调休', '4', 'oa_leave_type', '请假类型', '40', '', '1', '41421', '1', '41421', '0'), ('66', '婚假', '5', 'oa_leave_type', '请假类型', '60', '', '1', '41421', '1', '41421', '0'), ('67', '接入日志', '1', 'sys_log_type', '日志类型', '30', '', '1', '41428', '1', '41428', '0'), ('68', '异常日志', '2', 'sys_log_type', '日志类型', '40', '', '1', '41428', '1', '41428', '0'), ('69', '请假流程', 'leave', 'act_type', '流程类型', '10', '', '1', '41428', '1', '41428', '0'), ('70', '审批测试流程', 'test_audit', 'act_type', '流程类型', '20', '', '1', '41428', '1', '41428', '0'), ('71', '分类1', '1', 'act_category', '流程分类', '10', '', '1', '41428', '1', '41428', '0'), ('72', '分类2', '2', 'act_category', '流程分类', '20', '', '1', '41428', '1', '41428', '0'), ('73', '增删改查', 'crud', 'gen_category', '代码生成分类', '10', '', '1', '41575', '1', '41575', '1'), ('74', '增删改查（包含从表）', 'crud_many', 'gen_category', '代码生成分类', '20', '', '1', '41575', '1', '41575', '1'), ('75', '树结构', 'tree', 'gen_category', '代码生成分类', '30', '', '1', '41575', '1', '41575', '1'), ('76', '=', '=', 'gen_query_type', '查询方式', '10', '', '1', '41575', '1', '41575', '1'), ('77', '!=', '!=', 'gen_query_type', '查询方式', '20', '', '1', '41575', '1', '41575', '1'), ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '', '1', '41575', '1', '41575', '1'), ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '', '1', '41575', '1', '41575', '1'), ('80', 'Between', 'between', 'gen_query_type', '查询方式', '50', '', '1', '41575', '1', '41575', '1'), ('81', 'Like', 'like', 'gen_query_type', '查询方式', '60', '', '1', '41575', '1', '41575', '1'), ('82', 'Left Like', 'left_like', 'gen_query_type', '查询方式', '70', '', '1', '41575', '1', '41575', '1'), ('83', 'Right Like', 'right_like', 'gen_query_type', '查询方式', '80', '', '1', '41575', '1', '41575', '1'), ('84', '文本框', 'input', 'gen_show_type', '字段生成方案', '10', '', '1', '41575', '1', '41575', '1'), ('85', '文本域', 'textarea', 'gen_show_type', '字段生成方案', '20', '', '1', '41575', '1', '41575', '1'), ('86', '下拉框', 'select', 'gen_show_type', '字段生成方案', '30', '', '1', '41575', '1', '41575', '1'), ('87', '复选框', 'checkbox', 'gen_show_type', '字段生成方案', '40', '', '1', '41575', '1', '41575', '1'), ('88', '单选框', 'radiobox', 'gen_show_type', '字段生成方案', '50', '', '1', '41575', '1', '41575', '1'), ('89', '日期选择', 'dateselect', 'gen_show_type', '字段生成方案', '60', '', '1', '41575', '1', '41575', '1'), ('90', '人员选择', 'userselect', 'gen_show_type', '字段生成方案', '70', '', '1', '41575', '1', '41575', '1'), ('91', '部门选择', 'officeselect', 'gen_show_type', '字段生成方案', '80', '', '1', '41575', '1', '41575', '1'), ('92', '区域选择', 'areaselect', 'gen_show_type', '字段生成方案', '90', '', '1', '41575', '1', '41575', '1'), ('93', 'String', 'String', 'gen_java_type', 'Java类型', '10', '', '1', '41575', '1', '41575', '1'), ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '', '1', '41575', '1', '41575', '1'), ('95', '仅持久层', 'dao', 'gen_category', '代码生成分类', '40', '', '1', '41575', '1', '41575', '1'), ('96', '男', '1', 'sex', '性别', '10', '', '1', '41575', '1', '41575', '0'), ('97', '女', '2', 'sex', '性别', '20', '', '1', '41575', '1', '41575', '0'), ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', '30', '', '1', '41575', '1', '41575', '1'), ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', '40', '', '1', '41575', '1', '41575', '1'), ('100', 'Date', 'java.util.Date', 'gen_java_type', 'Java类型', '50', '', '1', '41575', '1', '41575', '1'), ('101', 'User', 'com.thinkgem.jeesite.modules.sys.entity.User', 'gen_java_type', 'Java类型', '60', '', '1', '41575', '1', '41575', '1'), ('102', 'Office', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'gen_java_type', 'Java类型', '70', '', '1', '41575', '1', '41575', '1'), ('103', 'Area', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'gen_java_type', 'Java类型', '80', '', '1', '41575', '1', '41575', '1'), ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', '90', '', '1', '41575', '1', '41575', '1'), ('105', '会议通告', '1', 'oa_notify_type', '通知通告类型', '10', '', '1', '41586', '1', '41586', '0'), ('106', '奖惩通告', '2', 'oa_notify_type', '通知通告类型', '20', '', '1', '41586', '1', '41586', '0'), ('107', '活动通告', '3', 'oa_notify_type', '通知通告类型', '30', '', '1', '41586', '1', '41586', '0'), ('108', '草稿', '0', 'oa_notify_status', '通知通告状态', '10', '', '1', '41586', '1', '41586', '0'), ('109', '发布', '1', 'oa_notify_status', '通知通告状态', '20', '', '1', '41586', '1', '41586', '0'), ('110', '未读', '0', 'oa_notify_read', '通知通告状态', '10', '', '1', '41586', '1', '41586', '0'), ('111', '已读', '1', 'oa_notify_read', '通知通告状态', '20', '', '1', '41586', '1', '41586', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE sys_log
(
	id varchar(64) NOT NULL COMMENT '编号',
	type char(1) DEFAULT '1' COMMENT '日志类型',
	title varchar(255) DEFAULT '' COMMENT '日志标题',
	create_by varchar(64) COMMENT '创建者',
	create_date datetime COMMENT '创建时间',
	remote_addr varchar(255) COMMENT '操作IP地址',
	user_agent varchar(255) COMMENT '用户代理',
	request_uri varchar(255) COMMENT '请求URI',
	method varchar(5) COMMENT '操作方式',
	params text COMMENT '操作提交的数据',
	exception text COMMENT '异常信息',
	PRIMARY KEY (id)
) COMMENT = '日志表';


CREATE TABLE sys_mdict
(
	id varchar(64) NOT NULL COMMENT '编号',
	parent_id varchar(64) NOT NULL COMMENT '父级编号',
	parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
	name varchar(100) NOT NULL COMMENT '名称',
	sort decimal(10,0) NOT NULL COMMENT '排序',
	description varchar(100) COMMENT '描述',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '多级字典表';


CREATE TABLE sys_menu
(
	id varchar(64) NOT NULL COMMENT '编号',
	parent_id varchar(64) NOT NULL COMMENT '父级编号',
	parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
	name varchar(100) NOT NULL COMMENT '名称',
	sort decimal(10,0) NOT NULL COMMENT '排序',
	href varchar(2000) COMMENT '链接',
	target varchar(20) COMMENT '目标',
	icon varchar(100) COMMENT '图标',
	is_show char(1) NOT NULL COMMENT '是否在菜单中显示',
	permission varchar(200) COMMENT '权限标识',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '菜单表';

BEGIN;
INSERT INTO sys_menu VALUES ('1', '0', '0,', '功能菜单', '', '', '', '0', '1', '', '', '1', '41421', '1', '41421', '0'), ('2', '1', '0,1,', '系统设置', '', '', '', '900', '1', '', '', '1', '41421', '1', '41421', '0'), ('3', '2', '0,1,2,', '系统设置', '', '', '', '980', '1', '', '', '1', '41421', '1', '41421', '0'), ('4', '3', '0,1,2,3,', '菜单管理', '/sys/menu/', '', 'list-alt', '30', '1', '', '', '1', '41421', '1', '41421', '0'), ('5', '4', '0,1,2,3,4,', '查看', '', '', '', '30', '0', 'sys:menu:view', '', '1', '41421', '1', '41421', '0'), ('6', '4', '0,1,2,3,4,', '修改', '', '', '', '40', '0', 'sys:menu:edit', '', '1', '41421', '1', '41421', '0'), ('7', '3', '0,1,2,3,', '角色管理', '/sys/role/', '', 'lock', '50', '1', '', '', '1', '41421', '1', '41421', '0'), ('8', '7', '0,1,2,3,7,', '查看', '', '', '', '30', '0', 'sys:role:view', '', '1', '41421', '1', '41421', '0'), ('9', '7', '0,1,2,3,7,', '修改', '', '', '', '40', '0', 'sys:role:edit', '', '1', '41421', '1', '41421', '0'), ('10', '3', '0,1,2,3,', '字典管理', '/sys/dict/', '', 'th-list', '60', '1', '', '', '1', '41421', '1', '41421', '0'), ('11', '10', '0,1,2,3,10,', '查看', '', '', '', '30', '0', 'sys:dict:view', '', '1', '41421', '1', '41421', '0'), ('12', '10', '0,1,2,3,10,', '修改', '', '', '', '40', '0', 'sys:dict:edit', '', '1', '41421', '1', '41421', '0'), ('13', '2', '0,1,2,', '机构用户', '', '', '', '970', '1', '', '', '1', '41421', '1', '41421', '0'), ('14', '13', '0,1,2,13,', '区域管理', '/sys/area/', '', 'th', '50', '1', '', '', '1', '41421', '1', '41421', '0'), ('15', '14', '0,1,2,13,14,', '查看', '', '', '', '30', '0', 'sys:area:view', '', '1', '41421', '1', '41421', '0'), ('16', '14', '0,1,2,13,14,', '修改', '', '', '', '40', '0', 'sys:area:edit', '', '1', '41421', '1', '41421', '0'), ('17', '13', '0,1,2,13,', '机构管理', '/sys/office/', '', 'th-large', '40', '1', '', '', '1', '41421', '1', '41421', '0'), ('18', '17', '0,1,2,13,17,', '查看', '', '', '', '30', '0', 'sys:office:view', '', '1', '41421', '1', '41421', '0'), ('19', '17', '0,1,2,13,17,', '修改', '', '', '', '40', '0', 'sys:office:edit', '', '1', '41421', '1', '41421', '0'), ('20', '13', '0,1,2,13,', '用户管理', '/sys/user/index', '', 'user', '30', '1', '', '', '1', '41421', '1', '41421', '0'), ('21', '20', '0,1,2,13,20,', '查看', '', '', '', '30', '0', 'sys:user:view', '', '1', '41421', '1', '41421', '0'), ('22', '20', '0,1,2,13,20,', '修改', '', '', '', '40', '0', 'sys:user:edit', '', '1', '41421', '1', '41421', '0'), ('23', '2', '0,1,2,', '关于帮助', '', '', '', '990', '0', '', '', '1', '41421', '1', '41421', '0'), ('24', '23', '0,1,2,23', '官方首页', 'http://jeesite.com', '_blank', '', '30', '0', '', '', '1', '41421', '1', '41421', '0'), ('25', '23', '0,1,2,23', '项目支持', 'http://jeesite.com/donation.html', '_blank', '', '50', '0', '', '', '1', '41421', '1', '41421', '1'), ('26', '23', '0,1,2,23', '论坛交流', 'http://bbs.jeesite.com', '_blank', '', '80', '0', '', '', '1', '41421', '1', '41421', '1'), ('27', '1', '0,1,', '我的面板', '', '', '', '100', '1', '', '', '1', '41421', '1', '41421', '0'), ('28', '27', '0,1,27,', '个人信息', '', '', '', '30', '1', '', '', '1', '41421', '1', '41421', '0'), ('29', '28', '0,1,27,28,', '个人信息', '/sys/user/info', '', 'user', '30', '1', '', '', '1', '41421', '1', '41421', '0'), ('30', '28', '0,1,27,28,', '修改密码', '/sys/user/modifyPwd', '', 'lock', '40', '1', '', '', '1', '41421', '1', '41421', '0'), ('31', '1', '0,1,', '内容管理', '', '', '', '500', '1', '', '', '1', '41421', '1', '41421', '0'), ('32', '31', '0,1,31,', '栏目设置', '', '', '', '990', '1', '', '', '1', '41421', '1', '41421', '0'), ('33', '32', '0,1,31,32', '栏目管理', '/cms/category/', '', 'align-justify', '30', '1', '', '', '1', '41421', '1', '41421', '0'), ('34', '33', '0,1,31,32,33,', '查看', '', '', '', '30', '0', 'cms:category:view', '', '1', '41421', '1', '41421', '0'), ('35', '33', '0,1,31,32,33,', '修改', '', '', '', '40', '0', 'cms:category:edit', '', '1', '41421', '1', '41421', '0'), ('36', '32', '0,1,31,32', '站点设置', '/cms/site/', '', 'certificate', '40', '1', '', '', '1', '41421', '1', '41421', '0'), ('37', '36', '0,1,31,32,36,', '查看', '', '', '', '30', '0', 'cms:site:view', '', '1', '41421', '1', '41421', '0'), ('38', '36', '0,1,31,32,36,', '修改', '', '', '', '40', '0', 'cms:site:edit', '', '1', '41421', '1', '41421', '0'), ('39', '32', '0,1,31,32', '切换站点', '/cms/site/select', '', 'retweet', '50', '1', 'cms:site:select', '', '1', '41421', '1', '41421', '0'), ('40', '31', '0,1,31,', '内容管理', '', '', '', '500', '1', 'cms:view', '', '1', '41421', '1', '41421', '0'), ('41', '40', '0,1,31,40,', '内容发布', '/cms/', '', 'briefcase', '30', '1', '', '', '1', '41421', '1', '41421', '0'), ('42', '41', '0,1,31,40,41,', '文章模型', '/cms/article/', '', 'file', '40', '0', '', '', '1', '41421', '1', '41421', '0'), ('43', '42', '0,1,31,40,41,42,', '查看', '', '', '', '30', '0', 'cms:article:view', '', '1', '41421', '1', '41421', '0'), ('44', '42', '0,1,31,40,41,42,', '修改', '', '', '', '40', '0', 'cms:article:edit', '', '1', '41421', '1', '41421', '0'), ('45', '42', '0,1,31,40,41,42,', '审核', '', '', '', '50', '0', 'cms:article:audit', '', '1', '41421', '1', '41421', '0'), ('46', '41', '0,1,31,40,41,', '链接模型', '/cms/link/', '', 'random', '60', '0', '', '', '1', '41421', '1', '41421', '0'), ('47', '46', '0,1,31,40,41,46,', '查看', '', '', '', '30', '0', 'cms:link:view', '', '1', '41421', '1', '41421', '0'), ('48', '46', '0,1,31,40,41,46,', '修改', '', '', '', '40', '0', 'cms:link:edit', '', '1', '41421', '1', '41421', '0'), ('49', '46', '0,1,31,40,41,46,', '审核', '', '', '', '50', '0', 'cms:link:audit', '', '1', '41421', '1', '41421', '0'), ('50', '40', '0,1,31,40,', '评论管理', '/cms/comment/?status=2', '', 'comment', '40', '1', '', '', '1', '41421', '1', '41421', '0'), ('51', '50', '0,1,31,40,50,', '查看', '', '', '', '30', '0', 'cms:comment:view', '', '1', '41421', '1', '41421', '0'), ('52', '50', '0,1,31,40,50,', '审核', '', '', '', '40', '0', 'cms:comment:edit', '', '1', '41421', '1', '41421', '0'), ('53', '40', '0,1,31,40,', '公共留言', '/cms/guestbook/?status=2', '', 'glass', '80', '1', '', '', '1', '41421', '1', '41421', '0'), ('54', '53', '0,1,31,40,53,', '查看', '', '', '', '30', '0', 'cms:guestbook:view', '', '1', '41421', '1', '41421', '0'), ('55', '53', '0,1,31,40,53,', '审核', '', '', '', '40', '0', 'cms:guestbook:edit', '', '1', '41421', '1', '41421', '0'), ('56', '71', '0,1,27,71,', '文件管理', '/../static/ckfinder/ckfinder.html', '', 'folder-open', '90', '1', '', '', '1', '41421', '1', '41421', '0'), ('57', '56', '0,1,27,40,56,', '查看', '', '', '', '30', '0', 'cms:ckfinder:view', '', '1', '41421', '1', '41421', '0'), ('58', '56', '0,1,27,40,56,', '上传', '', '', '', '40', '0', 'cms:ckfinder:upload', '', '1', '41421', '1', '41421', '0'), ('59', '56', '0,1,27,40,56,', '修改', '', '', '', '50', '0', 'cms:ckfinder:edit', '', '1', '41421', '1', '41421', '0'), ('60', '31', '0,1,31,', '统计分析', '', '', '', '600', '1', '', '', '1', '41421', '1', '41421', '0'), ('61', '60', '0,1,31,60,', '信息量统计', '/cms/stats/article', '', 'tasks', '30', '1', 'cms:stats:article', '', '1', '41421', '1', '41421', '0'), ('62', '1', '0,1,', '在线办公', '', '', '', '200', '1', '', '', '1', '41421', '1', '41421', '0'), ('63', '62', '0,1,62,', '个人办公', '', '', '', '30', '1', '', '', '1', '41421', '1', '41421', '0'), ('64', '63', '0,1,62,63,', '请假办理', '/oa/leave', '', 'leaf', '300', '0', '', '', '1', '41421', '1', '41421', '0'), ('65', '64', '0,1,62,63,64,', '查看', '', '', '', '30', '0', 'oa:leave:view', '', '1', '41421', '1', '41421', '0'), ('66', '64', '0,1,62,63,64,', '修改', '', '', '', '40', '0', 'oa:leave:edit', '', '1', '41421', '1', '41421', '0'), ('67', '2', '0,1,2,', '日志查询', '', '', '', '985', '1', '', '', '1', '41428', '1', '41428', '0'), ('68', '67', '0,1,2,67,', '日志查询', '/sys/log', '', 'pencil', '30', '1', 'sys:log:view', '', '1', '41428', '1', '41428', '0'), ('69', '62', '0,1,62,', '流程管理', '', '', '', '300', '1', '', '', '1', '41421', '1', '41421', '0'), ('70', '69', '0,1,62,69,', '流程管理', '/act/process', '', 'road', '50', '1', 'act:process:edit', '', '1', '41421', '1', '41421', '0'), ('71', '27', '0,1,27,', '文件管理', '', '', '', '90', '1', '', '', '1', '41421', '1', '41421', '0'), ('72', '69', '0,1,62,69,', '模型管理', '/act/model', '', 'road', '100', '1', 'act:model:edit', '', '1', '41537', '1', '41537', '0'), ('73', '63', '0,1,62,63,', '我的任务', '/act/task/todo/', '', 'tasks', '50', '1', '', '', '1', '41541', '1', '41541', '0'), ('74', '63', '0,1,62,63,', '审批测试', '/oa/testAudit', '', '', '100', '1', 'oa:testAudit:view,oa:testAudit:edit', '', '1', '41541', '1', '41541', '0'), ('75', '1', '0,1,', '在线演示', '', '', '', '3000', '1', '', '', '1', '41555', '1', '41555', '1'), ('79', '1', '0,1,', '代码生成', '', '', '', '5000', '1', '', '', '1', '41563', '1', '41563', '0'), ('80', '79', '0,1,79,', '代码生成', '', '', '', '50', '1', '', '', '1', '41563', '1', '41563', '0'), ('81', '80', '0,1,79,80,', '生成方案配置', '/gen/genScheme', '', '', '30', '1', 'gen:genScheme:view,gen:genScheme:edit', '', '1', '41563', '1', '41563', '0'), ('82', '80', '0,1,79,80,', '业务表配置', '/gen/genTable', '', '', '20', '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '', '1', '41563', '1', '41563', '0'), ('83', '80', '0,1,79,80,', '代码模板管理', '/gen/genTemplate', '', '', '90', '1', 'gen:genTemplate:view,gen:genTemplate:edit', '', '1', '41563', '1', '41563', '1'), ('84', '67', '0,1,2,67,', '连接池监视', '/../druid', '', '', '40', '1', '', '', '1', '41565', '1', '41565', '0'), ('85', '76', '0,1,75,76,', '行政区域', '/../static/map/map-city.html', '', '', '80', '1', '', '', '1', '41569', '1', '41569', '0'), ('86', '75', '0,1,75,', '组件演示', '', '', '', '50', '1', '', '', '1', '41569', '1', '41569', '1'), ('87', '86', '0,1,75,86,', '组件演示', '/test/test/form', '', '', '30', '1', 'test:test:view,test:test:edit', '', '1', '41569', '1', '41569', '1'), ('88', '62', '0,1,62,', '通知通告', '', '', '', '20', '1', '', '', '1', '41586', '1', '41586', '0'), ('89', '88', '0,1,62,88,', '我的通告', '/oa/oaNotify/self', '', '', '30', '1', '', '', '1', '41586', '1', '41586', '0'), ('90', '88', '0,1,62,88,', '通告管理', '/oa/oaNotify', '', '', '50', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '', '1', '41586', '1', '41586', '0');
COMMIT;


CREATE TABLE sys_office
(
	id varchar(64) NOT NULL COMMENT '编号',
	parent_id varchar(64) NOT NULL COMMENT '父级编号',
	parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
	name varchar(100) NOT NULL COMMENT '名称',
	sort decimal(10,0) NOT NULL COMMENT '排序',
	area_id varchar(64) NOT NULL COMMENT '归属区域',
	code varchar(100) COMMENT '区域编码',
	type char(1) NOT NULL COMMENT '机构类型',
	grade char(1) NOT NULL COMMENT '机构等级',
	address varchar(255) COMMENT '联系地址',
	zip_code varchar(100) COMMENT '邮政编码',
	master varchar(100) COMMENT '负责人',
	phone varchar(200) COMMENT '电话',
	fax varchar(200) COMMENT '传真',
	email varchar(200) COMMENT '邮箱',
	USEABLE varchar(64) COMMENT '是否启用',
	PRIMARY_PERSON varchar(64) COMMENT '主负责人',
	DEPUTY_PERSON varchar(64) COMMENT '副负责人',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '机构表';

BEGIN;
INSERT INTO sys_office VALUES ('1', '0', '0,', '山东省总公司', '10', '2', '100000', '1', '1', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('2', '1', '0,1,', '公司领导', '10', '2', '100001', '2', '1', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('3', '1', '0,1,', '综合部', '20', '2', '100002', '2', '1', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('4', '1', '0,1,', '市场部', '30', '2', '100003', '2', '1', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('5', '1', '0,1,', '技术部', '40', '2', '100004', '2', '1', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('6', '1', '0,1,', '研发部', '50', '2', '100005', '2', '1', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('7', '1', '0,1,', '济南市分公司', '20', '3', '200000', '1', '2', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('8', '7', '0,1,7,', '公司领导', '10', '3', '200001', '2', '2', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('9', '7', '0,1,7,', '综合部', '20', '3', '200002', '2', '2', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('10', '7', '0,1,7,', '市场部', '30', '3', '200003', '2', '2', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('11', '7', '0,1,7,', '技术部', '40', '3', '200004', '2', '2', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('12', '7', '0,1,7,', '历城区分公司', '0', '4', '201000', '1', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('13', '12', '0,1,7,12,', '公司领导', '10', '4', '201001', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('14', '12', '0,1,7,12,', '综合部', '20', '4', '201002', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('15', '12', '0,1,7,12,', '市场部', '30', '4', '201003', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('16', '12', '0,1,7,12,', '技术部', '40', '4', '201004', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('17', '7', '0,1,7,', '历下区分公司', '40', '5', '201010', '1', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('18', '17', '0,1,7,17,', '公司领导', '10', '5', '201011', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('19', '17', '0,1,7,17,', '综合部', '20', '5', '201012', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('20', '17', '0,1,7,17,', '市场部', '30', '5', '201013', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('21', '17', '0,1,7,17,', '技术部', '40', '5', '201014', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('22', '7', '0,1,7,', '高新区分公司', '50', '6', '201010', '1', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('23', '22', '0,1,7,22,', '公司领导', '10', '6', '201011', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('24', '22', '0,1,7,22,', '综合部', '20', '6', '201012', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('25', '22', '0,1,7,22,', '市场部', '30', '6', '201013', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('26', '22', '0,1,7,22,', '技术部', '40', '6', '201014', '2', '3', '', '', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0');
COMMIT;

CREATE TABLE sys_role
(
	id varchar(64) NOT NULL COMMENT '编号',
	office_id varchar(64) COMMENT '归属机构',
	name varchar(100) NOT NULL COMMENT '角色名称',
	enname varchar(255) COMMENT '英文名称',
	role_type varchar(255) COMMENT '角色类型',
	data_scope char(1) COMMENT '数据范围',
	is_sys varchar(64) COMMENT '是否系统数据',
	useable varchar(64) COMMENT '是否可用',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '角色表';

BEGIN;
INSERT INTO sys_role VALUES ('1', '1', '系统管理员', 'dept', 'assignment', '1', '', '1', '1', '41421', '1', '41421', '0'), ('2', '1', '公司管理员', 'hr', 'assignment', '2', '', '1', '1', '41421', '1', '41421', '0'), ('3', '1', '本公司管理员', 'a', 'assignment', '3', '', '1', '1', '41421', '1', '41421', '0'), ('4', '1', '部门管理员', 'b', 'assignment', '4', '', '1', '1', '41421', '1', '41421', '0'), ('5', '1', '本部门管理员', 'c', 'assignment', '5', '', '1', '1', '41421', '1', '41421', '0'), ('6', '1', '普通用户', 'd', 'assignment', '8', '', '1', '1', '41421', '1', '41421', '0'), ('7', '7', '济南市管理员', 'e', 'assignment', '9', '', '1', '1', '41421', '1', '41421', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE sys_role_menu
(
	role_id varchar(64) NOT NULL COMMENT '角色编号',
	menu_id varchar(64) NOT NULL COMMENT '菜单编号',
	PRIMARY KEY (role_id, menu_id)
) COMMENT = '角色-菜单';

BEGIN;
INSERT INTO sys_role_menu VALUES ('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), ('1', '5'), ('1', '6'), ('1', '7'), ('1', '8'), ('1', '9'), ('1', '10'), ('1', '11'), ('1', '12'), ('1', '13'), ('1', '14'), ('1', '15'), ('1', '16'), ('1', '17'), ('1', '18'), ('1', '19'), ('1', '20'), ('1', '21'), ('1', '22'), ('1', '23'), ('1', '24'), ('1', '25'), ('1', '26'), ('1', '27'), ('1', '28'), ('1', '29'), ('1', '30'), ('1', '31'), ('1', '32'), ('1', '33'), ('1', '34'), ('1', '35'), ('1', '36'), ('1', '37'), ('1', '38'), ('1', '39'), ('1', '40'), ('1', '41'), ('1', '42'), ('1', '43'), ('1', '44'), ('1', '45'), ('1', '46'), ('1', '47'), ('1', '48'), ('1', '49'), ('1', '50'), ('1', '51'), ('1', '52'), ('1', '53'), ('1', '54'), ('1', '55'), ('1', '56'), ('1', '57'), ('1', '58'), ('1', '59'), ('1', '60'), ('1', '61'), ('1', '62'), ('1', '63'), ('1', '64'), ('1', '65'), ('1', '66'), ('1', '67'), ('1', '68'), ('1', '69'), ('1', '70'), ('1', '71'), ('1', '72'), ('1', '73'), ('1', '74'), ('1', '75'), ('1', '76'), ('1', '77'), ('1', '78'), ('1', '79'), ('1', '80'), ('1', '81'), ('1', '82'), ('1', '83'), ('1', '84'), ('1', '85'), ('1', '86'), ('1', '87'), ('1', '88'), ('1', '89'), ('1', '90'), ('2', '1'), ('2', '2'), ('2', '3'), ('2', '4'), ('2', '5'), ('2', '6'), ('2', '7'), ('2', '8'), ('2', '9'), ('2', '10'), ('2', '11'), ('2', '12'), ('2', '13'), ('2', '14'), ('2', '15'), ('2', '16'), ('2', '17'), ('2', '18'), ('2', '19'), ('2', '20'), ('2', '21'), ('2', '22'), ('2', '23'), ('2', '24'), ('2', '25'), ('2', '26'), ('2', '27'), ('2', '28'), ('2', '29'), ('2', '30'), ('2', '31'), ('2', '32'), ('2', '33'), ('2', '34'), ('2', '35'), ('2', '36'), ('2', '37'), ('2', '38'), ('2', '39'), ('2', '40'), ('2', '41'), ('2', '42'), ('2', '43'), ('2', '44'), ('2', '45'), ('2', '46'), ('2', '47'), ('2', '48'), ('2', '49'), ('2', '50'), ('2', '51'), ('2', '52'), ('2', '53'), ('2', '54'), ('2', '55'), ('2', '56'), ('2', '57'), ('2', '58'), ('2', '59'), ('2', '60'), ('2', '61'), ('2', '62'), ('2', '63'), ('2', '64'), ('2', '65'), ('2', '66'), ('2', '67'), ('2', '68'), ('2', '69'), ('2', '70'), ('2', '71'), ('2', '72'), ('2', '73'), ('2', '74'), ('2', '75'), ('2', '76'), ('2', '77'), ('2', '78'), ('2', '79'), ('2', '80'), ('2', '81'), ('2', '82'), ('2', '83'), ('2', '84'), ('2', '85'), ('2', '86'), ('2', '87'), ('2', '88'), ('2', '89'), ('2', '90'), ('3', '1'), ('3', '2'), ('3', '3'), ('3', '4'), ('3', '5'), ('3', '6'), ('3', '7'), ('3', '8'), ('3', '9'), ('3', '10'), ('3', '11'), ('3', '12'), ('3', '13'), ('3', '14'), ('3', '15'), ('3', '16'), ('3', '17'), ('3', '18'), ('3', '19'), ('3', '20'), ('3', '21'), ('3', '22'), ('3', '23'), ('3', '24'), ('3', '25'), ('3', '26'), ('3', '27'), ('3', '28'), ('3', '29'), ('3', '30'), ('3', '31'), ('3', '32'), ('3', '33'), ('3', '34'), ('3', '35'), ('3', '36'), ('3', '37'), ('3', '38'), ('3', '39'), ('3', '40'), ('3', '41'), ('3', '42'), ('3', '43'), ('3', '44'), ('3', '45'), ('3', '46'), ('3', '47'), ('3', '48'), ('3', '49'), ('3', '50'), ('3', '51'), ('3', '52'), ('3', '53'), ('3', '54'), ('3', '55'), ('3', '56'), ('3', '57'), ('3', '58'), ('3', '59'), ('3', '60'), ('3', '61'), ('3', '62'), ('3', '63'), ('3', '64'), ('3', '65'), ('3', '66'), ('3', '67'), ('3', '68'), ('3', '69'), ('3', '70'), ('3', '71'), ('3', '72'), ('3', '73'), ('3', '74'), ('3', '75'), ('3', '76'), ('3', '77'), ('3', '78'), ('3', '79'), ('3', '80'), ('3', '81'), ('3', '82'), ('3', '83'), ('3', '84'), ('3', '85'), ('3', '86'), ('3', '87'), ('3', '88'), ('3', '89'), ('3', '90');
COMMIT;


CREATE TABLE sys_role_office
(
	role_id varchar(64) NOT NULL COMMENT '角色编号',
	office_id varchar(64) NOT NULL COMMENT '机构编号',
	PRIMARY KEY (role_id, office_id)
) COMMENT = '角色-机构';

BEGIN;
INSERT INTO sys_role_office VALUES ('7', '7'), ('7', '8'), ('7', '9'), ('7', '10'), ('7', '11'), ('7', '12'), ('7', '13'), ('7', '14'), ('7', '15'), ('7', '16'), ('7', '17'), ('7', '18'), ('7', '19'), ('7', '20'), ('7', '21'), ('7', '22'), ('7', '23'), ('7', '24'), ('7', '25'), ('7', '26');
COMMIT;

CREATE TABLE sys_user
(
	id varchar(64) NOT NULL COMMENT '编号',
	company_id varchar(64) NOT NULL COMMENT '归属公司',
	office_id varchar(64) NOT NULL COMMENT '归属部门',
	login_name varchar(100) NOT NULL COMMENT '登录名',
	password varchar(100) NOT NULL COMMENT '密码',
	no varchar(100) COMMENT '工号',
	name varchar(100) NOT NULL COMMENT '姓名',
	email varchar(200) COMMENT '邮箱',
	phone varchar(200) COMMENT '电话',
	mobile varchar(200) COMMENT '手机',
	user_type char(1) COMMENT '用户类型',
	photo varchar(1000) COMMENT '用户头像',
	login_ip varchar(100) COMMENT '最后登陆IP',
	login_date datetime COMMENT '最后登陆时间',
	login_flag varchar(64) COMMENT '是否可登录',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '用户表';

BEGIN;
INSERT INTO sys_user VALUES ('1', '1', '2', 'thinkgem', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', '系统管理员', 'thinkgem@163.com', '8675', '8675', '', '最高管理员', '1', '1', '41421', '1', '41421', '0'), ('2', '1', '2', 'sd_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0002', '管理员', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('3', '1', '3', 'sd_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0003', '综合部', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('4', '1', '4', 'sd_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0004', '市场部', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('5', '1', '5', 'sd_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0005', '技术部', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('6', '1', '6', 'sd_yfb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0006', '研发部', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('7', '7', '8', 'jn_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0007', '济南领导', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('8', '7', '9', 'jn_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0008', '济南综合部', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('9', '7', '10', 'jn_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0009', '济南市场部', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('10', '7', '11', 'jn_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0010', '济南技术部', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('11', '12', '13', 'lc_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0011', '济南历城领导', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('12', '12', '18', 'lx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0012', '济南历下领导', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0'), ('13', '22', '23', 'gx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0013', '济南高新领导', '', '', '', '', '', '1', '1', '41421', '1', '41421', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE sys_user_role
(
	user_id varchar(64) NOT NULL COMMENT '用户编号',
	role_id varchar(64) NOT NULL COMMENT '角色编号',
	PRIMARY KEY (user_id, role_id)
) COMMENT = '用户-角色';

BEGIN;
INSERT INTO sys_user_role VALUES ('1', '1'), ('2', '1'), ('3', '2'), ('4', '3'), ('5', '4'), ('6', '5'), ('7', '2'), ('7', '7'), ('8', '2'), ('9', '1'), ('10', '2'), ('11', '3'), ('12', '4'), ('13', '5'), ('14', '6'), ('1', '2');
COMMIT;

/* Create Indexes */

CREATE INDEX sys_area_parent_id ON sys_area (parent_id ASC);
/*CREATE INDEX sys_area_parent_ids ON sys_area (parent_ids ASC);*/
CREATE INDEX sys_area_del_flag ON sys_area (del_flag ASC);
CREATE INDEX sys_dict_value ON sys_dict (value ASC);
CREATE INDEX sys_dict_label ON sys_dict (label ASC);
CREATE INDEX sys_dict_del_flag ON sys_dict (del_flag ASC);
CREATE INDEX sys_log_create_by ON sys_log (create_by ASC);
CREATE INDEX sys_log_request_uri ON sys_log (request_uri ASC);
CREATE INDEX sys_log_type ON sys_log (type ASC);
CREATE INDEX sys_log_create_date ON sys_log (create_date ASC);
CREATE INDEX sys_mdict_parent_id ON sys_mdict (parent_id ASC);
/*CREATE INDEX sys_mdict_parent_ids ON sys_mdict (parent_ids ASC);*/
CREATE INDEX sys_mdict_del_flag ON sys_mdict (del_flag ASC);
CREATE INDEX sys_menu_parent_id ON sys_menu (parent_id ASC);
/*CREATE INDEX sys_menu_parent_ids ON sys_menu (parent_ids ASC);*/
CREATE INDEX sys_menu_del_flag ON sys_menu (del_flag ASC);
CREATE INDEX sys_office_parent_id ON sys_office (parent_id ASC);
/*CREATE INDEX sys_office_parent_ids ON sys_office (parent_ids ASC);*/
CREATE INDEX sys_office_del_flag ON sys_office (del_flag ASC);
CREATE INDEX sys_office_type ON sys_office (type ASC);
CREATE INDEX sys_role_del_flag ON sys_role (del_flag ASC);
CREATE INDEX sys_role_enname ON sys_role (enname ASC);
CREATE INDEX sys_user_office_id ON sys_user (office_id ASC);
CREATE INDEX sys_user_login_name ON sys_user (login_name ASC);
CREATE INDEX sys_user_company_id ON sys_user (company_id ASC);
CREATE INDEX sys_user_update_date ON sys_user (update_date ASC);
CREATE INDEX sys_user_del_flag ON sys_user (del_flag ASC);








/* test table*/

SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS test_data;
DROP TABLE IF EXISTS test_data_child;
DROP TABLE IF EXISTS test_data_main;
DROP TABLE IF EXISTS test_tree;




/* Create Tables */

CREATE TABLE test_data
(
	id varchar(64) NOT NULL COMMENT '编号',
	user_id varchar(64) COMMENT '归属用户',
	office_id varchar(64) COMMENT '归属部门',
	area_id varchar(64) COMMENT '归属区域',
	name varchar(100) COMMENT '名称',
	sex char(1) COMMENT '性别',
	in_date date COMMENT '加入日期',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '业务数据表';


CREATE TABLE test_data_child
(
	id varchar(64) NOT NULL COMMENT '编号',
	test_data_main_id varchar(64) COMMENT '业务主表ID',
	name varchar(100) COMMENT '名称',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '业务数据子表';


CREATE TABLE test_data_main
(
	id varchar(64) NOT NULL COMMENT '编号',
	user_id varchar(64) COMMENT '归属用户',
	office_id varchar(64) COMMENT '归属部门',
	area_id varchar(64) COMMENT '归属区域',
	name varchar(100) COMMENT '名称',
	sex char(1) COMMENT '性别',
	in_date date COMMENT '加入日期',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '业务数据表';


CREATE TABLE test_tree
(
	id varchar(64) NOT NULL COMMENT '编号',
	parent_id varchar(64) NOT NULL COMMENT '父级编号',
	parent_ids varchar(2000) NOT NULL COMMENT '所有父级编号',
	name varchar(100) NOT NULL COMMENT '名称',
	sort decimal(10,0) NOT NULL COMMENT '排序',
	create_by varchar(64) NOT NULL COMMENT '创建者',
	create_date datetime NOT NULL COMMENT '创建时间',
	update_by varchar(64) NOT NULL COMMENT '更新者',
	update_date datetime NOT NULL COMMENT '更新时间',
	remarks varchar(255) COMMENT '备注信息',
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) COMMENT = '树结构表';



/* Create Indexes */

CREATE INDEX test_data_del_flag ON test_data (del_flag ASC);
CREATE INDEX test_data_child_del_flag ON test_data_child (del_flag ASC);
CREATE INDEX test_data_main_del_flag ON test_data_main (del_flag ASC);
CREATE INDEX test_tree_del_flag ON test_tree (del_flag ASC);
CREATE INDEX test_data_parent_id ON test_tree (parent_id ASC);
/*CREATE INDEX test_data_parent_ids ON test_tree (parent_ids ASC);*/

