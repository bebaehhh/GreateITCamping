package com.ktds.camp.region.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.camp.region.vo.RegionVO;

public class RegionDaoImpl extends SqlSessionDaoSupport implements RegionDao {
	
	@Override
	public List<RegionVO> selectAllRegionCount() {
		return getSqlSession().selectList("RegionDao.selectAllRegionCount");
	}

}
