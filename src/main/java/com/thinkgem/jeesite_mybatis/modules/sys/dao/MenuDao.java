/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite_mybatis.modules.sys.dao;

import java.util.List;

import com.thinkgem.jeesite_mybatis.common.persistence.CrudDao;
import com.thinkgem.jeesite_mybatis.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite_mybatis.modules.sys.entity.Menu;

/**
 * 菜单DAO接口
 */
@MyBatisDao
public interface MenuDao extends CrudDao<Menu> {

	public List<Menu> findByParentIdsLike(Menu menu);

	public List<Menu> findByUserId(Menu menu);
	
	public int updateParentIds(Menu menu);
	
	public int updateSort(Menu menu);
	
}
