/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite_mybatis.test.dao;

import com.thinkgem.jeesite_mybatis.common.persistence.TreeDao;
import com.thinkgem.jeesite_mybatis.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite_mybatis.test.entity.TestTree;

/**
 * 树结构生成DAO接口
 * @author ThinkGem
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}