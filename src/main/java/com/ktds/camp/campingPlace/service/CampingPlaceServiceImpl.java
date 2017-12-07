package com.ktds.camp.campingPlace.service;

import java.util.List;

import com.ktds.camp.campingPlace.dao.CampingPlaceDao;
import com.ktds.camp.campingPlace.vo.CampingPlaceVO;

public class CampingPlaceServiceImpl implements CampingPlaceService{
	
	private CampingPlaceDao campingPlaceDao;
	
	public void setCampingPlaceDao(CampingPlaceDao campingPlaceDao) {
		this.campingPlaceDao = campingPlaceDao;
	}


	public CampingPlaceVO readOneCampingPlace(int campingPlaceId) {
		return campingPlaceDao.selectOneCampingPlace(campingPlaceId);
	}


	@Override
	public List<CampingPlaceVO> readAllCampingPlace() {
		return campingPlaceDao.selectAllCampingPlace();
	}

}
