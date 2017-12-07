package com.ktds.camp.notice.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.camp.notice.service.NoticeService;
import com.ktds.camp.notice.vo.NoticeVO;


@Controller
public class NoticeController {
	
	private NoticeService noticeService;
	
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	@RequestMapping("/customer/noticeWrite")
	public String writeNoticePage() {
		return "notice/noticeWrite";
	}
	
	@RequestMapping("/customer/notice")
	public ModelAndView NoticeListPage() {
		//NoticeVO oneNoticeVO = noticeService.readAllNotice();
		
		List<NoticeVO> listNoticeVO = noticeService.readAllNotice2();
		
		ModelAndView view = new ModelAndView();
		view.setViewName("notice/noticeList");
		view.addObject("listNoticeVO", listNoticeVO);
		
		return view;
	}
	
/*	@RequestMapping("/chart/albumInfo/{musicId}")
	public ModelAndView viewOneAlbumInfo(@PathVariable int musicId) {
		List<ChartVO> chartVOList = chartService.readOneAlbum(musicId);
		int artistId = chartService.readOneAlbum(musicId).get(0).getArtistId();
		List<ChartVO> musicList = chartService.readAllMusicOfOneArtist(artistId);

		ModelAndView view = new ModelAndView();
		view.setViewName("chart/albumInfo");
		view.addObject("chartVOList", chartVOList);
		view.addObject("musicList", musicList);

		return view;
	}*/

}
