package com.ktds.camp.guide.dao;

import java.util.List;

import com.ktds.camp.guide.vo.CategoryVO;
import com.ktds.camp.guide.vo.GuideSearchVO;
import com.ktds.camp.guide.vo.GuideVO;

public interface GuideDao {
	
	public List<CategoryVO> selectAllCategory();
	public List<GuideVO> selectAllGuide(GuideSearchVO guideSearchVO);
	public int selectAllGuideCount(GuideSearchVO guideSearchVO);
	public GuideVO selectOneGuideContent(int guideNumber);
	public int selectMaxGuideNumber();
	public int insertGuide(GuideVO guideVO);
	
}
