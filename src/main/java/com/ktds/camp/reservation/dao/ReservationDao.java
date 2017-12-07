package com.ktds.camp.reservation.dao;

import java.util.List;

import com.ktds.camp.reservation.vo.ReservationVO;

public interface ReservationDao {
	public List<ReservationVO> selectAllReservation();
	public ReservationVO selectOneReservation(int rId);
	public int insertReservation(ReservationVO reservationVO);
	public int updateReservation(int rId);
	public int deleteReservation(int rId);
}
