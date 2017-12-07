package com.ktds.camp.guide.service;

import java.util.List;

import com.ktds.camp.guide.dao.GuideDao;
import com.ktds.camp.guide.vo.CategoryVO;
import com.ktds.camp.guide.vo.GuideSearchVO;
import com.ktds.camp.guide.vo.GuideVO;

import io.github.seccoding.web.pager.Pager;
import io.github.seccoding.web.pager.PagerFactory;
import io.github.seccoding.web.pager.explorer.ClassicPageExplorer;
import io.github.seccoding.web.pager.explorer.PageExplorer;

public class GuideServiceImpl implements GuideService {
	
	private GuideDao guideDao;
	
	public void setGuideDao(GuideDao guideDao) {
		this.guideDao = guideDao;
	}

	@Override
	public List<CategoryVO> readAllCategory() {
		return guideDao.selectAllCategory();
	}

	@Override
	public PageExplorer readAllGuide(GuideSearchVO guideSearchVO) {
		
		Pager pager = PagerFactory.getPager(Pager.ORACLE, guideSearchVO.getPageNo(), guideDao.selectAllGuideCount(guideSearchVO));

        // 페이지 정보를 가지는 객체 생성
        PageExplorer pageExplorer = pager.makePageExplorer(ClassicPageExplorer.class, guideSearchVO);
        

        if ( pager.getTotalArticleCount() > 0 ) {
            // 리스트 조회
            List<GuideVO> guideList = guideDao.selectAllGuide(guideSearchVO);
            // 페이지 객체에 리스트 셋팅
            pageExplorer.setList(guideList);
        }

        return pageExplorer;
		
		
		
	}

	@Override
	public GuideVO readOneGuideContent(int guideNumber) {
		return guideDao.selectOneGuideContent(guideNumber);
	}

	@Override
	public boolean createGuide(GuideVO guideVO) {
		return guideDao.insertGuide(guideVO) > 0;
	}
	


}
