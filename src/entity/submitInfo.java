package entity;

import java.util.Date;

/**
 * Created by Administrator on 2016/3/8.
 */
//存储用户提交的代码和编译结果及相关信息
public class submitInfo {
    private String compileId;
    private String userId;
    private String projectInfoId;
    private String problemId;
    private String compLang;           //编译语言
    private Date submitTime;
    private int submitResult;        //编译最终的结果  编译错误，答案正确/错误，内存/时间超出。。。。
    private String compileInfo;     //编译产生的有关信息-错误
    private String sourceCode;
    private String CodeLength;
    private String usedTime;
    private String usedMemory;

    public submitInfo(){

    }

    @Override
    public String toString() {
        return "submitInfo{" +
                "compileId='" + compileId + '\'' +
                ", userName='" + userId + '\'' +
                ", projectInfoId='" + projectInfoId + '\'' +
                ", problemId='" + problemId + '\'' +
                ", compLang='" + compLang + '\'' +
                ", submitTime=" + submitTime +
                ", submitResult=" + submitResult +
                ", compileInfo='" + compileInfo + '\'' +
                ", sourceCode='" + sourceCode + '\'' +
                ", CodeLength='" + CodeLength + '\'' +
                ", usedTime='" + usedTime + '\'' +
                ", usedMemory='" + usedMemory + '\'' +
                '}';
    }

    public submitInfo(String compileId, String userId, String projectInfoId, String problemId, String compLang, Date submitTime, int submitResult, String compileInfo, String sourceCode, String codeLength, String usedTime, String usedMemory) {
        this.compileId = compileId;
        this.userId = userId;
        this.projectInfoId = projectInfoId;
        this.problemId = problemId;
        this.compLang = compLang;
        this.submitTime = submitTime;
        this.submitResult = submitResult;
        this.compileInfo = compileInfo;
        this.sourceCode = sourceCode;
        CodeLength = codeLength;
        this.usedTime = usedTime;
        this.usedMemory = usedMemory;
    }

    public String getCompileId() {
        return compileId;
    }

    public void setCompileId(String compileId) {
        this.compileId = compileId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getProjectInfoId() {
        return projectInfoId;
    }

    public void setProjectInfoId(String projectInfoId) {
        this.projectInfoId = projectInfoId;
    }

    public String getProblemId() {
        return problemId;
    }

    public void setProblemId(String problemId) {
        this.problemId = problemId;
    }

    public String getCompLang() {
        return compLang;
    }

    public void setCompLang(String compLang) {
        this.compLang = compLang;
    }

    public Date getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

    public int getSubmitResult() {
        return submitResult;
    }

    public void setSubmitResult(int submitResult) {
        this.submitResult = submitResult;
    }

    public String getCompileInfo() {
        return compileInfo;
    }

    public void setCompileInfo(String compileInfo) {
        this.compileInfo = compileInfo;
    }

    public String getSourceCode() {
        return sourceCode;
    }

    public void setSourceCode(String sourceCode) {
        this.sourceCode = sourceCode;
    }

    public String getCodeLength() {
        return CodeLength;
    }

    public void setCodeLength(String codeLength) {
        CodeLength = codeLength;
    }

    public String getUsedTime() {
        return usedTime;
    }

    public void setUsedTime(String usedTime) {
        this.usedTime = usedTime;
    }

    public String getUsedMemory() {
        return usedMemory;
    }

    public void setUsedMemory(String usedMemory) {
        this.usedMemory = usedMemory;
    }
}
