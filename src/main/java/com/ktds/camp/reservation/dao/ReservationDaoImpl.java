package com.ktds.camp.reservation.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.camp.reservation.vo.ReservationVO;

public class ReservationDaoImpl extends SqlSessionDaoSupport implements ReservationDao{

	@Override
	public List<ReservationVO> selectAllReservation() {
		List<ReservationVO> reservationList = 
				getSqlSession().selectList("ReservationDao.selectAllReservation");
		return reservationList;
	}

	@Override
	public ReservationVO selectOneReservation(int rId) {
		
		ReservationVO reservationVO =
				getSqlSession().selectOne("ReservationDao.selectOneReservation", rId);
		
		System.out.println("aaaaaaa"+reservationVO);
		return reservationVO;
	}

	@Override
	public int insertReservation(ReservationVO reservationVO) {		
		int insertReservation =
				getSqlSession().insert("ReservationDao.insertReservation", reservationVO);
		return insertReservation;
	}

	@Override
	public int updateReservation(int rId) {
		int updateReservation = getSqlSession().update("ReservationDao.updateReservation", rId);
		return updateReservation;
	}

	@Override
	public int deleteReservation(int rId) {
		int deleteReservation = getSqlSession().delete("ReservationDao.deleteReservation", rId);
		return deleteReservation;
	}
	
}
