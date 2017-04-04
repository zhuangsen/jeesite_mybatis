package com.thinkgem.jeesite_mybatis.modules.sys.dao;

import java.util.List;

import com.thinkgem.jeesite_mybatis.common.persistence.CrudDao;
import com.thinkgem.jeesite_mybatis.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite_mybatis.modules.sys.entity.Dict;

/**
 * 字典DAO接口
 */
@MyBatisDao
public interface DictDao extends CrudDao<Dict> {

    List<String> findTypeList(Dict dict);

}
