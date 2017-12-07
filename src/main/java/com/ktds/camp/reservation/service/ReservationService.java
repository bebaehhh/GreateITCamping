package com.ktds.camp.reservation.service;

import java.util.List;

import com.ktds.camp.reservation.vo.ReservationVO;

public interface ReservationService {
	public List<ReservationVO> readAllReservation();
	public ReservationVO readOneReservation(int rId);
	public boolean createReservation(ReservationVO reservationVO);
	public boolean updateReservation(int rId);
	public boolean deleteReservation(int rId);
}
