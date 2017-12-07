package com.ktds.camp.campingPlace.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;


import com.ktds.camp.campingPlace.vo.CampingPlaceVO;


public class CampingPlaceDaoImpl extends SqlSessionDaoSupport implements CampingPlaceDao {

	@Override
	public CampingPlaceVO selectOneCampingPlace(int campingPlaceId) {
		return getSqlSession().selectOne("CampingPlaceDao.selectOneCampingPlace", campingPlaceId);
	}

	@Override
	public List<CampingPlaceVO> selectAllCampingPlace() {
		return getSqlSession().selectList("CampingPlaceDao.selectAllCampingPlace");
	}

}
