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


CREATE TABLE sys_role_menu
(
	role_id varchar(64) NOT NULL COMMENT '角色编号',
	menu_id varchar(64) NOT NULL COMMENT '菜单编号',
	PRIMARY KEY (role_id, menu_id)
) COMMENT = '角色-菜单';


CREATE TABLE sys_role_office
(
	role_id varchar(64) NOT NULL COMMENT '角色编号',
	office_id varchar(64) NOT NULL COMMENT '机构编号',
	PRIMARY KEY (role_id, office_id)
) COMMENT = '角色-机构';


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


CREATE TABLE sys_user_role
(
	user_id varchar(64) NOT NULL COMMENT '用户编号',
	role_id varchar(64) NOT NULL COMMENT '角色编号',
	PRIMARY KEY (user_id, role_id)
) COMMENT = '用户-角色';



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

