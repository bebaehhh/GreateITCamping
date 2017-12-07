package com.ktds.camp.qna.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.camp.qna.vo.QnaVO;

public class QnaDaoImpl extends SqlSessionDaoSupport implements QnaDao {

	@Override
	public List<QnaVO> selectAllQnaList() {
		return getSqlSession().selectList("QnaDao.selectAllQnaList");
	}

}
