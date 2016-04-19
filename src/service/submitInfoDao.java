package service;

import entity.submitInfo;

/**
 * Created by admin on 2016/4/19.
 */
public interface submitInfoDao {
    /**
     * 提交代码
     * @return
     * @param sif
     */
    public boolean submintCode(submitInfo sif);
}
