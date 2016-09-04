package sist.co.Controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sist.co.Model.Actions;
import sist.co.Model.SistBbsParam;
import sist.co.Model.SistBbsVO;
import sist.co.Service.SistBbsService;




@Controller
public class SistBbsController {

	private static final Logger logger = LoggerFactory.getLogger(SistBbsController.class);
	
	@Autowired
	SistBbsService sistBbsService;
	
	@RequestMapping(value="bbslist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String bbslist(SistBbsParam param,Model model)throws Exception{
		logger.info("bbslist.do 이동중");
		
		int sn = param.getPageNumber();
		int start = (sn)*param.getRecordCountPerPage() + 1;
		int end = (sn+1)*param.getRecordCountPerPage();
		
		param.setStart(start);
		param.setEnd(end);
		
		int totalRecordCount = sistBbsService.getBbsCount(param);
		
		List<SistBbsVO> bbslist = sistBbsService.getBbsPagingList(param);
		model.addAttribute("bbslist",bbslist);
		
		
		
		model.addAttribute("pageNumber", sn);
		model.addAttribute("pageCountPerScreen", 10);
		model.addAttribute("recordCountPerPage", param.getRecordCountPerPage());
		model.addAttribute("totalRecordCount", totalRecordCount);
		
		model.addAttribute("s_category",param.getS_category());
		model.addAttribute("s_keyword",param.getS_keyword());
		
		return "bbslist.tiles"; 	
	}
	
	@RequestMapping(value="bbswrite.do",method=RequestMethod.GET)
	public String bbswrite(String id, Model model) throws Exception{
		logger.info("bbswrite.do 이동중");
		
		SistBbsVO bbsper = sistBbsService.getPer(id);
		List<Actions> acList = sistBbsService.getActionsList();
		
		model.addAttribute("bbsper",bbsper);
		model.addAttribute("acList",acList);
		return "bbswrite.tiles";
	}
	
	@RequestMapping(value="bbswriteAF.do",method=RequestMethod.POST)
	public String bbswriteAF(SistBbsVO sistBbsVo,Model model) throws Exception{
		logger.info("bbswriteAF 이동중");
		
		
		if(sistBbsVo.getTitle().equals("") || sistBbsVo.getContent().equals("")){
			return "redirect:/bbslist.do";
		}
		sistBbsService.addBbs(sistBbsVo);
		
		return "redirect:/bbslist.do";

	}
	
	@RequestMapping(value="bbsdetail.do",method=RequestMethod.GET)
	public String bbsdetail(int seq,Model model) throws Exception{
		logger.info("bbsdetail 이동중");
		
		List<Actions> acList = sistBbsService.getActionsList();
		
		
		SistBbsVO bbsVo = sistBbsService.getBbs(seq);
		
		model.addAttribute("bbsVo",bbsVo);
		model.addAttribute("acList",acList);
		return "bbsdetail.tiles";
	}
	
	@RequestMapping(value="bbsupdate.do",method=RequestMethod.GET)
	public String bbsupdate(int seq, Model model) throws Exception{
		logger.info("bbsupdate 이동중");

		SistBbsVO bbsVo = sistBbsService.getBbs(seq);
		List<Actions> acList = sistBbsService.getActionsList();
		
		model.addAttribute("bbsVo",bbsVo);
		model.addAttribute("acList",acList);
		
		return "bbsupdate.tiles";
	}
	
	@RequestMapping(value="bbsupdateAF.do",method=RequestMethod.POST)
	public String bbsupdateAf(SistBbsVO vo, Model model) throws Exception{
		logger.info("bbsupdateAF 이동중");
		
		sistBbsService.updatebbs(vo);
		
		return "redirect:/bbslist.do";
		
	}

	@RequestMapping(value="chart.do", method={RequestMethod.GET, RequestMethod.POST})
	public String chart(String id, SistBbsVO bbs, Model model)throws Exception{
		logger.info("환영합니다 SistBBSController chart " );
		
		System.out.println("id="+id);
		model.addAttribute("doc_title", "BBSchart 차트");
		List<SistBbsVO> clist = sistBbsService.getChartList();
		SistBbsVO bbsper = sistBbsService.getPer(id);
		
		//json데이터 만드는 부분
		String jsonList= "[";
		String memname="[";
		for(SistBbsVO c:clist){
			jsonList +="{name:'" + c.getName()+"', y:" + c.getPer()+"},";
			memname += "'"+c.getName() +"',";
			
			System.out.println("jsonList : "+jsonList);
			System.out.println("memname : "+memname);
		}
		
		
		
		jsonList = jsonList.substring(0, jsonList.lastIndexOf(","));
		jsonList += "]";
		
		memname = memname.substring(0, memname.lastIndexOf(","));
		memname += "]";
		
		System.out.println("memname"+ memname);
		
		
		model.addAttribute("bbsper",bbsper);
		model.addAttribute("chartList", clist);
		model.addAttribute("jsonList",jsonList);
		model.addAttribute("memname",memname);
		
		return "chart.tiles";
	}	
	

	
	@RequestMapping(value="perupdate.do", method=RequestMethod.GET)
	public String perupdate(SistBbsVO dto, Model model)throws Exception{
		logger.info(" SistBBSController perupdate " );

		sistBbsService.upChart(dto);
		
		return "redirect:/chart.do?id="+dto.getId();
	}
	
	
	@RequestMapping(value="actions.do", method={RequestMethod.GET, RequestMethod.POST})
	public String actions(Model model)throws Exception{
		logger.info("환영합니다 SistBBSController chart " );
		
		List<Actions> clist = sistBbsService.getActionsList();

		
		//json데이터 만드는 부분
		String jsonList= "[";
		String memname="[";
		for(Actions ac:clist){
			jsonList +="{name:'" + ac.getName()+"', y:" + ac.getPer()+"},";
			memname += "'"+ac.getName() +"',";
			
			System.out.println("jsonList : "+jsonList);
			System.out.println("memname : "+memname);
		}
		
		
		
		jsonList = jsonList.substring(0, jsonList.lastIndexOf(","));
		jsonList += "]";
		
		memname = memname.substring(0, memname.lastIndexOf(","));
		memname += "]";
		
		System.out.println("memname"+ memname);
		
		model.addAttribute("chartList", clist);
		model.addAttribute("jsonList",jsonList);
		model.addAttribute("memname",memname);
		
		return "actions.tiles";
	}	

	@RequestMapping(value="actionlist.do", method={RequestMethod.GET, RequestMethod.POST})
	public String actionlist(Model model)throws Exception{
		logger.info("actionlist.do 이동중");

		List<Actions> bbslist = sistBbsService.getActionsList();
		model.addAttribute("acList",bbslist);
		

		return "actionlist.tiles"; 	
	}
	
	@RequestMapping(value="actionlistRegi.do",method={RequestMethod.GET, RequestMethod.POST})
	public String actionlistRegi(Actions ac,Model model)throws Exception{
		logger.info("actionlist.do 이동중");
		
		sistBbsService.actionlistRegi(ac);
		return "actionlist.tiles"; 	
	}
	
	@RequestMapping(value="actionupdate.do",method={RequestMethod.GET, RequestMethod.POST})
	public String actionlistupdate(int seq,Model model)throws Exception{
		logger.info("actionlistupdate.do 이동중");
		
		Actions ac = sistBbsService.getActions(seq);
		model.addAttribute("ac",ac);
		
		return "actionupdate.tiles"; 	
	}
	
	@RequestMapping(value="actionupdateAF.do", method={RequestMethod.GET, RequestMethod.POST})
	public String actionupdateAF(Actions ac,Model model) throws Exception{
		logger.info("actionupdateAF.do 이동중");
		
		sistBbsService.updateActions(ac);
		
		return "redirect:actionlist.do";
	}

}
