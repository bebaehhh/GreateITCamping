package com.ktds.camp.qna.service;

import java.util.List;

import com.ktds.camp.qna.dao.QnaDao;
import com.ktds.camp.qna.vo.QnaVO;

public class QnaServiceImpl implements QnaService{

	private QnaDao qnaDao;
	
	public void setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}
	
	@Override
	public List<QnaVO> readAllQnaList() {
		return qnaDao.selectAllQnaList();
	}
	
	

}
