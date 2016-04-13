package service;

import entity.problemInfo;

/**
 * Created by Administrator on 2016/4/9.
 */
public interface problemInfoDao {
    /**
     * 添加题目*/
    public boolean addProblemInfo(problemInfo pInfo);
    /**
     * 修改题目*/
    public boolean updateProblemInfo(problemInfo pInfo);
    /**
     * 删除题目*/
    public boolean deleteProblemInfo(problemInfo pInfo);
}
