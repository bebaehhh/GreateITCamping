package com.ktds.camp.member.dao;

import com.ktds.camp.member.vo.MemberVO;

public interface MemberDao {

	public int insertNewMember(MemberVO memberVO);
	
	public int selectCountMember(MemberVO memberVO);
	
	public MemberVO selectOneMember(MemberVO memberVO);
	
	public MemberVO selectIdSearchMember(MemberVO memberVO);
}
