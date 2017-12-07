package com.ktds.camp.region.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ktds.camp.region.dao.RegionDao;
import com.ktds.camp.region.vo.RegionVO;

public class RegionServiceImpl implements RegionService {
	
	private RegionDao regionDao;
	
	
	public void setRegionDao(RegionDao regionDao) {
		this.regionDao = regionDao;
	}

	private Map<String, String> mapCoord;

	public void setMapCoord(Map<String, String> mapCoord) {
		this.mapCoord = mapCoord;
	}

	@Override
	public List<Map> readMapInfo() {

		List result = new ArrayList();
		List<RegionVO> regionVOList = regionDao.selectAllRegionCount();
		for(RegionVO regionVO : regionVOList) {
			Map map = new HashMap();
			map.put("regionVO", regionVO);
			map.put("mapCoord", mapCoord.get(regionVO.getRegionAlias()));
			result.add(map);
		}
		return result;
	}

}
