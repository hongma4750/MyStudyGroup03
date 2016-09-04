package sist.co.Service.Imple;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sist.co.Model.SistMemberVO;
import sist.co.Service.SistMemberDAO;
import sist.co.Service.SistMemberService;




@Service
public class SistMemberImpl implements SistMemberService{

	@Autowired 
	SistMemberDAO sistMemberDAO;

	@Override
	@Transactional(readOnly=true)		//읽기전용 세팅
	public SistMemberVO login(SistMemberVO member) throws Exception {
		return sistMemberDAO.login(member);
	}

	
	@Override
	@Transactional					//수정가능 세팅
	public boolean addMember(SistMemberVO membervo) throws Exception {
		return sistMemberDAO.addMember(membervo);
	}


	@Override
	@Transactional(readOnly=true)
	public int getID(SistMemberVO vo) {
		
		return sistMemberDAO.getID(vo);
	}
	
	
}
