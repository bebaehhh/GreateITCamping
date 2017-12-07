package com.ktds.camp.subRegion.service;

import java.util.List;

import com.ktds.camp.subRegion.vo.SubRegionVO;
import com.ktds.camp.subRegion.dao.SubRegionDao;

public class SubRegionServiceImpl implements SubRegionService {

	private SubRegionDao subRegionDao;
	
	public void setSubRegionDao(SubRegionDao subRegionDao) {
		this.subRegionDao = subRegionDao;
	}

	@Override
	public List<SubRegionVO> readAlLSubRegion() {
		return subRegionDao.selectAllSubRegion();
	}

}
