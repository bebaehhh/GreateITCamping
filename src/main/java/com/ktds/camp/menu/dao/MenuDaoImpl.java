package com.ktds.camp.menu.dao;

import com.ktds.camp.menu.vo.MenuVO;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.Arrays;
import java.util.List;

public class MenuDaoImpl extends SqlSessionDaoSupport implements MenuDao{

    @Override
    public List<MenuVO> selectVisibleMenu() {
    	return getSqlSession().selectList("MenuDao.selectVisibleMenu");
        
    }
}
