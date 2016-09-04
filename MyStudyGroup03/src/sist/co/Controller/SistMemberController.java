package sist.co.Controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.co.Model.SistMemberVO;
import sist.co.Model.YesMember;
import sist.co.Service.SistMemberService;


@Controller
public class SistMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(SistMemberController.class);
	
	@Autowired
	SistMemberService sistMemberService;
	
	

	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String login(Model model){
		logger.info("환영합니다 login.do로 이동중" + new Date());
		return "login.tiles";
	}
	
	@RequestMapping(value="regi.do", method=RequestMethod.GET)
	public String regi(Model model){
		logger.info("regi.do 로 이동중");
		return "regi.tiles";
	}
	
	@RequestMapping(value="regiAF.do", method=RequestMethod.POST)
	
	public String regiAF(SistMemberVO membervo, Model model) throws Exception{
		logger.info("regiAF.do 로 이동중");
		
		sistMemberService.addMember(membervo);
		
		/*return "redirect:/login.do";*/
		return "login.tiles";
	}
	
	/*@RequestMapping(value="loginAF.do",method=RequestMethod.POST)
	@ResponseBody
	public String loginAF(HttpServletRequest request, SistMemberVO membervo, Model model)throws Exception{
		logger.info("loginAF.do 로 이동중");
		
		SistMemberVO login = null;
		login = sistMemberService.login(membervo);
		
		if(login != null && !login.getId().equals("")){
			request.getSession().setAttribute("login", login);
			return "login.do";			
		}else{
			return "login.tiles";			
		}	
	}*/
	
	@RequestMapping(value="loginAF.do",method=RequestMethod.POST)
	   public String loginAF(HttpServletRequest request,SistMemberVO member, Model model)throws Exception{
	      logger.info("환영합니다 SistMemberController loginAF 입니다." + new Date());
	      
	      
	      SistMemberVO login=null;
	      login=sistMemberService.login(member);
	      System.out.println(login);
	      
	      if(login!=null && !login.getId().equals("") ){
	         request.getSession().setAttribute("login", login);
	         return "redirect:/bbslist.do";
	      }else{
	         return "login.tiles";
	      }
	   }
	
	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model){
		logger.info("logout.do 로 이동중");
		
		request.getSession().invalidate();
		
		return "login.tiles";
	}
	
	
	@RequestMapping(value="getID.do", method=RequestMethod.POST)
	@ResponseBody
	public YesMember getID(SistMemberVO vo , Model model) throws Exception{
		logger.info("getID.do 이동중");
		
		int count = sistMemberService.getID(vo);
		
		YesMember yes = new YesMember();
		
		if(count > 0 ){
			yes.setMessage("Suc");
		}else {
			yes.setMessage("Fai");
		}
		
		return yes;
		
	}
	
}
