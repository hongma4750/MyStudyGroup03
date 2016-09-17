package sist.co.Service;

import sist.co.Model.SistMemberVO;

public interface SistMemberService {
	
	//로그인
	SistMemberVO login(SistMemberVO member)throws Exception;
	
	//회원가입
	boolean addMember(SistMemberVO membervo) throws Exception;
	
	int getID(SistMemberVO vo) throws Exception;
	
	void insertMember(SistMemberVO vo) throws Exception;
	
	void updateActionMember(String m_id);
}
