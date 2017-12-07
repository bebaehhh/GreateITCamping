package com.ktds.camp.subRegion.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.camp.subRegion.vo.SubRegionVO;

public class SubRegionDaoImpl extends SqlSessionDaoSupport implements SubRegionDao {
	
	public List<SubRegionVO> selectAllSubRegion() {
		return getSqlSession().selectList("SubRegionDao.selectAllRegionCount");
	}
}
