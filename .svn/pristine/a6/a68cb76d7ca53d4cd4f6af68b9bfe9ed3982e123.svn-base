package com.ktds.camp.menu.service;

import com.ktds.camp.menu.dao.MenuDao;
import com.ktds.camp.menu.vo.MenuVO;

import java.util.List;

public class MenuServiceImpl implements MenuService {

    private MenuDao menuDao;

    public void setMenuDao(MenuDao menuDao) {
        this.menuDao = menuDao;
    }

    @Override
    public List<MenuVO> getVisibleMenu() {
        return menuDao.selectVisibleMenu();
    }
}
