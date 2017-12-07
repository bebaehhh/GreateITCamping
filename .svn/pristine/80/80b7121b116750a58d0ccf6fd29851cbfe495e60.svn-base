package com.ktds.camp.notice.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.camp.notice.vo.NoticeVO;

public class NoticeDaoImpl extends SqlSessionDaoSupport implements NoticeDao {

	@Override
	public NoticeVO selectAllNotice() {
		return getSqlSession().selectOne("NoticeDao.selectAllNotice");
	}

	@Override
	public List<NoticeVO> selectAllNotice2() {
		return getSqlSession().selectList("NoticeDao.selectAllNotice2");
	}

	/*@Override
	public int insertNewNotice(NoticeVO noticeVO) {
		return getSqlSession().insert("NoticeDao.insertNewNotice", noticeVO);
	}*/

}
