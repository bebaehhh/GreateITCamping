package com.ktds.camp.notice.service;

import java.util.List;

import com.ktds.camp.notice.dao.NoticeDao;
import com.ktds.camp.notice.vo.NoticeVO;

public class NoticeServiceImpl implements NoticeService {
	
	private NoticeDao noticeDao;
	

	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	@Override
	public NoticeVO readAllNotice() {
		return noticeDao.selectAllNotice();
	}

	@Override
	public List<NoticeVO> readAllNotice2() {
		
		return noticeDao.selectAllNotice2();
	}

	/*@Override
	public boolean createNewNotice(NoticeVO noticeVO) {
		return noticeDao.insertNewNotice(noticeVO) > 0;
	}*/

}
