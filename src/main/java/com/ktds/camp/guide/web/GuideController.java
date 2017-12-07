package com.ktds.camp.guide.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.camp.guide.service.GuideService;
import com.ktds.camp.guide.vo.CategoryVO;
import com.ktds.camp.guide.vo.GuideSearchVO;
import com.ktds.camp.guide.vo.GuideVO;
import com.sun.mail.handlers.message_rfc822;

import io.github.seccoding.web.pager.explorer.PageExplorer;
import io.github.seccoding.web.pager.explorer.PageOption;


@Controller
public class GuideController {
	
	private GuideService guideService;
	
	public void setGuideService(GuideService guideService) {
		this.guideService = guideService;
	}
	
	@RequestMapping("/camp/guide/guide/{guideNumber}")
	public ModelAndView viewGuidePage(GuideSearchVO guideSearchVO, @PathVariable int guideNumber) {
		List<CategoryVO> categoryList = guideService.readAllCategory();
		PageExplorer pageExplorer = guideService.readAllGuide(guideSearchVO);
		
		 int totalCount = pageExplorer.getTotalCount();
	     System.out.println("전체 번호 : " + totalCount);
	     
		guideSearchVO.setGuideNumber(guideNumber);
		
		PageOption option = new PageOption()
	                .formId("pageForm")
	                .link("pageNo")
	                .prev("이전")
	                .next("다음")
	                .pageFormat("[@]");

		 String pageNavi = pageExplorer.setData(option)
				// 이전 버튼
					.prevGroup((prevGroupPageNumber, prev) -> {
						return "<a style=width:20px; margin=0px; onclick=\"movePage('" + prevGroupPageNumber + "')\">" + prev + "</a>";
					})
				
					// 다음 버튼
					.nextGroup((nextGroupPageNumber, next) -> {
						return "<a style=width:20px; margin=0px; onclick=\"movePage('" + nextGroupPageNumber + "')\">" + next + "</a>";
					})
					// 페이지 버튼
					.pages((pageNo, pageFormat) -> {
						return "<a style=width:20px; margin=0px; onclick=\"movePage('" + pageNo + "')\">" + pageFormat + "</a>";
					})
					.make();
		 
		 //System.out.print("///////////////////" + pageNavi);
		 
		ModelAndView view = new ModelAndView();
		
		view.setViewName("camp/guide/guide");
		
		view.addObject("guideSearchVO",guideSearchVO);
		view.addObject("pageNavi",pageNavi);
		view.addObject("pageNum", guideNumber);
		view.addObject("categoryList", categoryList);
		view.addObject("guideNumber", guideNumber);
		view.addObject("guideList", guideService.readAllGuide(guideSearchVO));
		
		return view;
		
	}
	@RequestMapping("/camp/guide/guideContent/{guideNumber}")
	public ModelAndView viewGuideContentPage(@PathVariable int guideNumber) {
		List<CategoryVO> categoryList = guideService.readAllCategory();
		GuideVO guideVO = guideService.readOneGuideContent(guideNumber);
		
		ModelAndView view = new ModelAndView();
		
		view.setViewName("camp/guide/guideContent");
		view.addObject("guideVO", guideVO);
		view.addObject("categoryList", categoryList);

		return view;
	}
	
	@RequestMapping("/camp/guide/write")
	public ModelAndView viewWritePage() {
		List<CategoryVO> categoryList = guideService.readAllCategory();
		ModelAndView view = new ModelAndView("camp/guide/write");
		view.addObject("categoryList", categoryList);
		
		return view;
				
	}
	
	@RequestMapping("/camp/guide/wirteSend")
	public String wirteSend(GuideVO guideVO) {
		guideVO.setPoster(110);
		guideService.createGuide(guideVO);
		return "redirect:/camp/guide/guideContent/1";
	}
	
	
	
	
	
	

}
