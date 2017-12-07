package com.ktds.camp.menu.dao;

import com.ktds.camp.menu.vo.MenuVO;

import java.util.List;

public interface MenuDao {

    public List<MenuVO> selectVisibleMenu();

}
