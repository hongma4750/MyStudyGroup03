package sist.co.Service;

import java.util.ArrayList;
import java.util.List;

import sist.co.Model.Actions;
import sist.co.Model.SistBbsParam;
import sist.co.Model.SistBbsVO;

public interface SistBbsService {

	public List<SistBbsVO> getBbsList() throws Exception;

	public boolean addBbs(SistBbsVO sistBbsVo) throws Exception;
	
	public SistBbsVO getBbs(int seq) throws Exception;
	
	public boolean updatebbs(SistBbsVO vo) throws Exception;
	
	int getBbsCount(SistBbsParam param) throws Exception;
	
	List<SistBbsVO> getBbsPagingList(SistBbsParam param) throws Exception;
	
	List<SistBbsVO> getChartList() throws Exception;
		
	
	public SistBbsVO getPer(String id)throws Exception;
	
	
	public void upChart(SistBbsVO dto);
	
	List<Actions> getActionsList();
	
	void actionlistRegi(Actions ac);
	
	Actions getActions(int seq);
	
	void updateActions(Actions ac);
	
}
