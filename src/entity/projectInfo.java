package entity;

import java.util.Date;

/**
 * Created by Administrator on 2016/3/8.
 */
   //项目表
public class projectInfo {
    private String projectInfoId;
    private String projectInfoName;
    private String projectInfoContent;
    private int projectInfoStatus;
    private Date projectInfoStartTime;
    private Date projectInfoEndTime;

    public projectInfo(){

    }

    public projectInfo(String projectInfoId, String projectInfoName, String projectInfoContent, int projectInfoStatus, Date projectInfoStartTime, Date projectInfoEndTime) {
        this.projectInfoId = projectInfoId;
        this.projectInfoName = projectInfoName;
        this.projectInfoContent = projectInfoContent;
        this.projectInfoStatus = projectInfoStatus;
        this.projectInfoStartTime = projectInfoStartTime;
        this.projectInfoEndTime = projectInfoEndTime;
    }

    public String getProjectInfoId() {
        return projectInfoId;
    }

    public void setProjectInfoId(String projectInfoId) {
        this.projectInfoId = projectInfoId;
    }

    public String getProjectInfoName() {
        return projectInfoName;
    }

    public void setProjectInfoName(String projectInfoName) {
        this.projectInfoName = projectInfoName;
    }

    public String getProjectInfoContent() {
        return projectInfoContent;
    }

    public void setProjectInfoContent(String projectInfoContent) {
        this.projectInfoContent = projectInfoContent;
    }

    public int getProjectInfoStatus() {
        return projectInfoStatus;
    }

    public void setProjectInfoStatus(int projectInfoStatus) {
        this.projectInfoStatus = projectInfoStatus;
    }

    public Date getProjectInfoStartTime() {
        return projectInfoStartTime;
    }

    public void setProjectInfoStartTime(Date projectInfoStartTime) {
        this.projectInfoStartTime = projectInfoStartTime;
    }

    public Date getProjectInfoEndTime() {
        return projectInfoEndTime;
    }

    public void setProjectInfoEndTime(Date projectInfoEndTime) {
        this.projectInfoEndTime = projectInfoEndTime;
    }
}
