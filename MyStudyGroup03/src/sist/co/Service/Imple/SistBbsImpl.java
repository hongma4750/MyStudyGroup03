package sist.co.Service.Imple;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sist.co.Model.Actions;
import sist.co.Model.SistBbsParam;
import sist.co.Model.SistBbsVO;
import sist.co.Service.SistBbsDAO;
import sist.co.Service.SistBbsService;


@Service
public class SistBbsImpl implements SistBbsService{

	@Autowired
	private SistBbsDAO sistBbsDAO;
	
	@Override
	
	public List<SistBbsVO> getBbsList() throws Exception {
		return sistBbsDAO.getBbsList();
	}

	
	@Override
	
	public boolean addBbs(SistBbsVO sistBbsVo) throws Exception {
		
		return sistBbsDAO.addBbs(sistBbsVo);
	}


	@Override
	@Transactional(readOnly=true)
	public SistBbsVO getBbs(int seq) throws Exception {
		
		return sistBbsDAO.getBbs(seq);
	}




	@Override
	public boolean updatebbs(SistBbsVO vo) throws Exception {
		return sistBbsDAO.updatebbs(vo);
	}


	@Override
	public int getBbsCount(SistBbsParam param) throws Exception {
		
		return sistBbsDAO.getBbsCount(param);
	}


	@Override
	public List<SistBbsVO> getBbsPagingList(SistBbsParam param) throws Exception {
		
		return sistBbsDAO.getBbsPagingList(param);
	}


	@Override
	public List<SistBbsVO> getChartList() throws Exception {
		// TODO Auto-generated method stub
		return sistBbsDAO.getChartList();
	}


	@Override
	public SistBbsVO getPer(String id) throws Exception {
		// TODO Auto-generated method stub
		return sistBbsDAO.getPer(id);
	}


	@Override
	public void upChart(SistBbsVO dto) {
		sistBbsDAO.upChart(dto);
		
	}


	@Override
	public List<Actions> getActionsList() {
		
		return sistBbsDAO.getActionsList();
	}


	@Override
	public void actionlistRegi(Actions ac) {
		sistBbsDAO.actionlistRegi(ac);
		
	}


	@Override
	public Actions getActions(int seq) {
		
		return sistBbsDAO.getActions(seq);
	}


	@Override
	public void updateActions(Actions ac) {
		sistBbsDAO.updateActions(ac);
		
	}

}
