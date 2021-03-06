package service;

import entity.problemInfo;

import java.util.List;

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
    /**
     * 查询所有题目*/
    public List<problemInfo> queryProblemList();
    /**
     * 显示题目信息
     */
    public List<problemInfo> showProblemInfo(String problemId);
    /**
     * 查询题目具体信息
     */
    public boolean queryProblemInfo();
}
