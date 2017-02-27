/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite_mybatis.modules.test.dao;

import com.thinkgem.jeesite_mybatis.common.persistence.CrudDao;
import com.thinkgem.jeesite_mybatis.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite_mybatis.modules.test.entity.Test;

/**
 * 测试DAO接口
 * @author ThinkGem
 * @version 2013-10-17
 */
@MyBatisDao
public interface TestDao extends CrudDao<Test> {
	
}
