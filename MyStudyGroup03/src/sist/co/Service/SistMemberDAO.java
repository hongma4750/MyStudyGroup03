package sist.co.Service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.co.Model.SistMemberVO;

@Repository
public class SistMemberDAO {

	@Autowired	//DI
	private SqlSession sqlSession;		//DI가 무엇인가~?   new 생성자를 생략할수있습니다
	
	private String ns = "SistMember.";
	
	
	public SistMemberVO login(SistMemberVO member) throws Exception{
		return (SistMemberVO) sqlSession.selectOne(ns+"login", member);
	}
	
	public boolean addMember(SistMemberVO membervo) throws Exception{
		sqlSession.insert(ns+"addMember", membervo);
		return true;
		
	}
	
	public int getID(SistMemberVO vo) throws Exception{
		return (int)sqlSession.selectOne(ns+"getID", vo);
	}
	
	public void insertMember(SistMemberVO vo) throws Exception{
		sqlSession.insert(ns+"insertMember",vo);
	}
		
	public void updateActionMember(String m_id){
		sqlSession.update(ns+"updateActionMember",m_id);
	}
}
