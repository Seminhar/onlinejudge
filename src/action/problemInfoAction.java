package action;

import com.opensymphony.xwork2.ModelDriven;
import entity.problemInfo;
import service.problemInfoDao;
import serviceImpl.problemInfoDaoImpl;

import java.util.List;

/**
 * Created by Administrator on 2016/4/9.
 */
public class problemInfoAction extends SuperAction implements ModelDriven<problemInfo> {
    private problemInfo pInfo = new problemInfo();

    @Override
    public problemInfo getModel() {
        if (this.pInfo == null)
            return pInfo = new problemInfo();
        return this.pInfo;
    }

    public String addProblemInfo() {
        problemInfoDao pInfoDao = new problemInfoDaoImpl();
        if (pInfoDao.addProblemInfo(pInfo)){
            return "addProblemInfo_success";
        }
        else {
            return "addProblemInfo_failure";
        }
    }

    public String queryAllproblemInfo(){
      problemInfoDao problemInfoDao = new problemInfoDaoImpl();
        List<problemInfo> list = problemInfoDao.queryAllProblemInfo();
        if(list.size()>0&&list!=null) {
            session.setAttribute("problemInfo_queryAll_success", list);
        }
        else
        return "problemInfo_queryAll_failure";
        return "problemInfo_queryAll_success";
    }
}
