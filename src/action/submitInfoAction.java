package action;

import com.opensymphony.xwork2.ModelDriven;
import entity.submitInfo;
import service.submitInfoDao;
import serviceImpl.submitInfoDaoImpl;

/**
 * Created by admin on 2016/4/19.
 */
public class submitInfoAction extends SuperAction implements ModelDriven<submitInfo> {
    submitInfo sif = new submitInfo();

    @Override
    public submitInfo getModel() {
        if (this.sif == null)
            return sif = new submitInfo();
        return this.sif;
    }

    public String submitCode() {
        submitInfoDao sid = new submitInfoDaoImpl();
        if (sid.submintCode(sif))
            return "submitCode_success";
        else
            return "submitCode_failure";
    }

}
