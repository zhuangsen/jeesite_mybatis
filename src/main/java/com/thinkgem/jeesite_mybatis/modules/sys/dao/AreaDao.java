/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite_mybatis.modules.sys.dao;

import com.thinkgem.jeesite_mybatis.common.persistence.TreeDao;
import com.thinkgem.jeesite_mybatis.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite_mybatis.modules.sys.entity.Area;

/**
 * 区域DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
