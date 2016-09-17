package sist.co.Controller;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.RSAPublicKeySpec;
import java.util.Date;

import javax.crypto.Cipher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.co.Help.SendEmail;
import sist.co.Help.YesMember;
import sist.co.Model.SistMemberVO;
import sist.co.Service.SistMemberService;


@Controller
public class SistMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(SistMemberController.class);
	
	@Autowired
	SistMemberService sistMemberService;
	
	@RequestMapping(value="index.do", method=RequestMethod.GET)
	public String index(Model model){
		logger.info("index.do 실행중");
		return "index.tiles";
	}
	
	@RequestMapping(value="Regi.do", method=RequestMethod.GET)
	public String Regi(HttpServletRequest request, Model model) throws Exception{
		logger.info("Regi.do 실행중");
		
		KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
		generator.initialize(512);

		KeyPair keyPair = generator.genKeyPair();
		KeyFactory keyFactory = KeyFactory.getInstance("RSA");

		PublicKey publicKey = keyPair.getPublic();
		PrivateKey privateKey = keyPair.getPrivate();

		HttpSession session = request.getSession();
		// 세션에 공개키의 문자열을 키로하여 개인키를 저장한다.
		session.setAttribute("__rsaPrivateKey__", privateKey);

		// 공개키를 문자열로 변환하여 JavaScript RSA 라이브러리 넘겨준다.
		RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);

		String publicKeyModulus = publicSpec.getModulus().toString(16);
		String publicKeyExponent = publicSpec.getPublicExponent().toString(16);

		request.setAttribute("publicKeyModulus", publicKeyModulus);
		request.setAttribute("publicKeyExponent", publicKeyExponent);
		
		
		
		return "Regi.tiles";
	}

	@RequestMapping(value="login.do", method=RequestMethod.GET)
	public String login(Model model){
		logger.info("환영합니다 login.do로 이동중" + new Date());
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
	
	
	@RequestMapping(value="regiAF.do", method=RequestMethod.POST)
	public String regiAF(SistMemberVO vo, HttpServletRequest request, Model model) throws Exception{
		
		logger.info("regiAF.do 실행");
		
		//생일 변환 작업
		String b_year = request.getParameter("b_year");
		String b_month = two(request.getParameter("b_month"));
		String b_day = two(request.getParameter("b_day"));
		
		String m_birth = b_year+b_month+b_day;
		
		vo.setM_birth(m_birth);
		//생일 변환 작업
		
		
		//주소 변환 작업
		String m_address1 = request.getParameter("m_address1");
		String m_address2 = request.getParameter("m_address2");
		
		String m_address = m_address1+" "+m_address2;
		
		vo.setM_address(m_address);
		//주소 변환 작업
		
		
		//마케팅 변환 작업
		String m_marketings[] = request.getParameterValues("chk");
		String m_marketing = "";
		
		if(m_marketings == null){
			m_marketing = "null";
		}else{
			for(int i = 0;i<m_marketings.length;i++){
				m_marketing += m_marketings[i]+",";
			}
			
			m_marketing = m_marketing.substring(0,m_marketing.length()-1);
		}
		

		vo.setM_marketing(m_marketing);
		//마케팅 변환 작업
		
		
		//휴대전화 변환 작업
		String m_phone1 = request.getParameter("m_phone1");
		String m_phone2 = request.getParameter("m_phone2");
		String m_phone3 = request.getParameter("m_phone3");
		
		String m_phone = m_phone1+"-"+m_phone2+"-"+m_phone3;
		vo.setM_phone(m_phone);
		//휴대전화 변환 작업
		
		
		//이메일 변환 작업
		String email1 = request.getParameter("m_email1");
		String email2 = request.getParameter("m_email2");
		
		String m_email = email1 + "@"+email2;
		
		vo.setM_email(m_email);
		//이메일 변환 작업
		
		
		//비밀번호 복호화
		HttpSession session = request.getSession();
		PrivateKey privateKey = (PrivateKey) session.getAttribute("__rsaPrivateKey__");
		session.removeAttribute("__rsaPrivateKey__");
		
		if (privateKey == null) {
            throw new RuntimeException("암호화 비밀키 정보를 찾을 수 없습니다.");
        }
        try {
        	String password = decryptRsa(privateKey, vo.getM_pw());
            
        	System.out.println("pw : "+password);
        	vo.setM_pw(getMD5(password));
        } catch (Exception ex) {
            throw new ServletException(ex.getMessage(), ex);
        }

		sistMemberService.insertMember(vo);
		
		SendEmail send = new SendEmail(vo.getM_id(), vo.getM_email());
		
		return "index.tiles";
	}
	
	@RequestMapping(value="sendemail.do", method=RequestMethod.GET)
	public String sendemail(HttpServletRequest request, Model model){
		logger.info("sendemail.do 실행중");
		
		String m_id = request.getParameter("m_id");
		
		sistMemberService.updateActionMember(m_id);
		
		return "index.tiles";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String two(String msg){
		return msg.length()>2? msg:"0"+msg;
	}
	
	
	
	
	//전달 받은 암호화된 비밀번호 복호화
		 private String decryptRsa(PrivateKey privateKey, String securedValue) throws Exception {
		        System.out.println("will decrypt : " + securedValue);
		        Cipher cipher = Cipher.getInstance("RSA");
		        byte[] encryptedBytes = hexToByteArray(securedValue);
		        cipher.init(Cipher.DECRYPT_MODE, privateKey);
		        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
		        String decryptedValue = new String(decryptedBytes, "utf-8"); // 문자 인코딩 주의.
		        return decryptedValue;
		    }
		 
		 public static byte[] hexToByteArray(String hex) {
		        if (hex == null || hex.length() % 2 != 0) {
		            return new byte[]{};
		        }

		        byte[] bytes = new byte[hex.length() / 2];
		        for (int i = 0; i < hex.length(); i += 2) {
		            byte value = (byte)Integer.parseInt(hex.substring(i, i + 2), 16);
		            bytes[(int) Math.floor(i / 2)] = value;
		        }
		        return bytes;
		    }
		 
		//전달 받은 암호화된 비밀번호 복호화
		 
		 
		 //디비 넣을때 암호화
		 private String getMD5( String strVal ){
			 StringBuffer sb = new StringBuffer();
		  try{
		   byte[] digest = java.security.MessageDigest.getInstance("MD5").digest( strVal.getBytes() );
		   sb.setLength(0);
			   for( int i = 0; i < digest.length; i++ ) { 
			    sb.append( Integer.toString( ( digest[i] & 0xf0) >> 4, 16 ) ); 
			    sb.append( Integer.toString( digest[i] & 0x0f, 16 ) );
			   }
		   return sb.toString();
		  }catch( Exception ex ){
		   return "";
		  }
		  
		 }
		 
		 
	
	
	
}
