package com.ktds.camp.member.service;

import com.ktds.camp.common.SHA256Util;
import com.ktds.camp.member.dao.MemberDao;
import com.ktds.camp.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {
	
	private MemberDao memberDao;
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public boolean createNewMember(MemberVO memberVO) {
		// 암호화를 위한 salt 값 생성
		String salt = SHA256Util.generateSalt();
		// 비밀번호 암호화 및 vo에 담기
		memberVO.setMemberPassword(SHA256Util.getEncrypt(memberVO.getMemberPassword(), salt));
		// salt 값 vo에 담기
		memberVO.setSalt(salt);
		
		return memberDao.insertNewMember(memberVO) > 0;
	}

	@Override
	public int readCountMember(MemberVO memberVO) {
		return memberDao.selectCountMember(memberVO);
	}

	@Override
	public MemberVO ReadtIdSearchMember(MemberVO memberVO) {
		return memberDao.selectIdSearchMember(memberVO);
	}

	@Override
	public MemberVO readOneMember(MemberVO memberVO) {
		MemberVO resultVO = memberDao.selectOneMember(memberVO);
		if(resultVO == null) {
			return null;
		}
		String password = SHA256Util.getEncrypt(memberVO.getMemberPassword(), resultVO.getSalt());
		
		if(resultVO.getMemberPassword().equals(password)) {
			return resultVO;
		}
		return null;
	}






}
