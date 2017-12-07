package com.ktds.camp.reservation.service;

import java.util.ArrayList;
import java.util.List;

import com.ktds.camp.reservation.dao.ReservationDao;
import com.ktds.camp.reservation.vo.ReservationVO;

public class ReservationServiceImpl implements ReservationService{
	private ReservationDao reservationDao;
	
	public void setReservationDao(ReservationDao reservationDao) {
		this.reservationDao = reservationDao;
	}

	@Override
	public List<ReservationVO> readAllReservation() {
		List<ReservationVO> reservationList = reservationDao.selectAllReservation();		
		return reservationList;
	}

	@Override
	public ReservationVO readOneReservation(int rId) {
		ReservationVO reservationVO = reservationDao.selectOneReservation(rId);
		return reservationVO;
	}

	@Override
	public boolean createReservation(ReservationVO reservationVO) {
		int createReservation = reservationDao.insertReservation(reservationVO);
		return createReservation > 0;
	}

	@Override
	public boolean updateReservation(int rId) {
		int updateReservation = reservationDao.updateReservation(rId);
		return updateReservation > 0;
	}

	@Override
	public boolean deleteReservation(int rId) {
		int deleteReservation = reservationDao.deleteReservation(rId);
		return deleteReservation > 0;
	}	
}
