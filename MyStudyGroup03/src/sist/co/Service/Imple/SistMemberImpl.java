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
	public SistMemberVO login(SistMemberVO member) throws Exception {
		return sistMemberDAO.login(member);
	}

	
	@Override
	public boolean addMember(SistMemberVO membervo) throws Exception {
		return sistMemberDAO.addMember(membervo);
	}


	@Override
	public int getID(SistMemberVO vo) throws Exception{
		return (int)sistMemberDAO.getID(vo);
	}


	@Override
	public void insertMember(SistMemberVO vo) throws Exception {
		sistMemberDAO.insertMember(vo);
	}


	@Override
	public void updateActionMember(String m_id) {
		sistMemberDAO.updateActionMember(m_id);
	}
	
	
}
