package com.ktds.camp.guide.service;

import java.util.List;

import com.ktds.camp.guide.vo.CategoryVO;
import com.ktds.camp.guide.vo.GuideSearchVO;
import com.ktds.camp.guide.vo.GuideVO;

import io.github.seccoding.web.pager.explorer.PageExplorer;

public interface GuideService {
	
	public List<CategoryVO> readAllCategory();
	public PageExplorer readAllGuide(GuideSearchVO guideSearchVO);
	public GuideVO readOneGuideContent(int guideNumber);
	public boolean createGuide(GuideVO guideVO);
}
