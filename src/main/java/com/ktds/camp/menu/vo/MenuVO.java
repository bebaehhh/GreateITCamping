package com.ktds.camp.menu.vo;

public class MenuVO {

    private int level;
    private String menuId;
    private String menuName;
    private String parentMenuId;
    private String url;
    private String visibleYN;

    public MenuVO() {}

    public MenuVO(int level, String menuId, String menuName, String parentMenuId, String url, String visibleYN) {
        this.level = level;
        this.menuId = menuId;
        this.menuName = menuName;
        this.parentMenuId = parentMenuId;
        this.url = url;
        this.visibleYN = visibleYN;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getMenuId() {
        return menuId;
    }

    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getParentMenuId() {
        return parentMenuId;
    }

    public void setParentMenuId(String parentMenuId) {
        this.parentMenuId = parentMenuId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getVisibleYN() {
        return visibleYN;
    }

    public void setVisibleYN(String visibleYN) {
        this.visibleYN = visibleYN;
    }
}
