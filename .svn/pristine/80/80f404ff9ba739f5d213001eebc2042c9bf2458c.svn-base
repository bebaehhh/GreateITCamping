package com.ktds.camp.guide.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ktds.camp.guide.vo.CategoryVO;
import com.ktds.camp.guide.vo.GuideSearchVO;
import com.ktds.camp.guide.vo.GuideVO;

import io.github.seccoding.web.pager.Pager;

public class GuideDaoImpl extends SqlSessionDaoSupport implements GuideDao{

	@Override
	public List<CategoryVO> selectAllCategory() {
		return getSqlSession().selectList("GuideDao.selectAllCategory");
	}
	
	public int selectAllGuideCount(GuideSearchVO guideSearchVO) {
        return getSqlSession().selectOne("GuideDao.selectAllGuideCount", guideSearchVO.getGuideNumber());
    }

    /*public List<GuideVO> guideData(Pager pager) {

        
         * 아래 두 라인은 필요에 따라서 Search를 위한 객체를 만들어 사용해야할 때도 있습니다.
         
        // 페이징처리시 사용할 게시글 끝 번호
        System.out.println(pager.getEndArticleNumber());

        // 페이징처리시 사용할 게시글 시작 번호
        System.out.println(pager.getStartArticleNumber());

        return getSqlSession().selectList("GuideDao.selectAllCategory");
    }*/

	@Override
	public List<GuideVO> selectAllGuide(GuideSearchVO guideSearchVO) {
		return getSqlSession().selectList("GuideDao.selectAllGuide", guideSearchVO);
	}

	@Override
	public GuideVO selectOneGuideContent(int guideNumber) {
		return getSqlSession().selectOne("GuideDao.selectOneGuideContent", guideNumber ); 
	}

	@Override
	public int selectMaxGuideNumber() {
		return getSqlSession().selectOne("GuideDao.selectMaxGuideNumber");
	}

	@Override
	public int insertGuide(GuideVO guideVO) {
		int guideNumber = selectMaxGuideNumber()+1;
		guideVO.setGuideNumber(guideNumber);
		return getSqlSession().insert("GuideDao.insertGuide",guideVO);
	}

	

}
