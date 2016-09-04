package sist.co.Service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.co.Model.Actions;
import sist.co.Model.SistBbsParam;
import sist.co.Model.SistBbsVO;

@Repository
public class SistBbsDAO {

	@Autowired
	private SqlSession sqlSession;
	private String ns = "SistBbs.";
	
	public List<SistBbsVO> getBbsList() throws Exception {
		List<SistBbsVO> list = new ArrayList<SistBbsVO>();
		
		list = sqlSession.selectList(ns+"getBbsList");
		
		return list;
	}
	
	public boolean addBbs(SistBbsVO sistBbsVo) throws Exception{
		sqlSession.insert(ns+"addBbs", sistBbsVo);
		
		return true;
		
	}
	
	public SistBbsVO getBbs(int seq) throws Exception {
		SistBbsVO bbsVo = sqlSession.selectOne(ns+"getBbs", seq);
		
		return bbsVo;
	}
	
	public boolean readcount(int seq) throws Exception {
		sqlSession.update(ns+"readcount",seq);
		return true;
	}
	
	public boolean updatebbs(SistBbsVO vo) throws Exception {
		sqlSession.update(ns+"updatebbs", vo);
		
		return true;
	}
	
	public int getBbsCount(SistBbsParam param) throws Exception{
		int num=0;
		num = (Integer)sqlSession.selectOne(ns+"getBbsCount",param);
		return num;
	}
	
	public List<SistBbsVO> getBbsPagingList(SistBbsParam param) throws Exception{
		List<SistBbsVO> list = new ArrayList<SistBbsVO>();
		list = sqlSession.selectList(ns+"getBbsPagingList",param);
		
		return list;
	}
	
	public boolean deletebbs(int seq) throws Exception{
		sqlSession.update(ns+"deletebbs",seq);
		
		return true;
	}
	
	public boolean deletebbsParent(int seq) throws Exception{
		sqlSession.update(ns+"deletebbsParent",seq);
		
		return true;
	}
	
	public boolean insertSetAnswer(int seq) throws Exception{
		sqlSession.insert(ns+"insertSetAnswer",seq);
		
		return true;
	}
	
	public boolean insertAnswer(SistBbsVO vo) throws Exception{
		sqlSession.insert(ns+"insertAnswer",vo);
		
		return true;
		
	}
	
	
	public List<SistBbsVO> getChartList() throws Exception{
		List<SistBbsVO> list = new ArrayList<SistBbsVO>();
		list = sqlSession.selectList(ns+"getChartList");
		return list;
	}
	
	public SistBbsVO getPer(String id)throws Exception{
		SistBbsVO bbs=sqlSession.selectOne(ns+"getPer", id);
		return bbs;
	}
	
	
	public void upChart(SistBbsVO dto){
		sqlSession.update(ns+"upChart", dto);
	}
	
	public List<Actions> getActionsList(){
		List<Actions> list = sqlSession.selectList(ns+"getActionsList");
		return list;
	}
	
	public void actionlistRegi(Actions ac){
		sqlSession.insert(ns+"actionlistRegi",ac);
	}
	
	public Actions getActions(int seq){
		return sqlSession.selectOne(ns+"getActions", seq);
	}
	
	public void updateActions(Actions ac){
		sqlSession.update(ns+"updateActions",ac);
	}
	
	
	
}
