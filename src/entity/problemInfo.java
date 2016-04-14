package entity;

/**
 * Created by Administrator on 2016/3/8.
 */
// 题目表
public class problemInfo {
    private String problemId;
    private String problemName;
    private String problemContent;
    private String memeryLim;
    private String timesLim;
    private String acceptTimes;
    private String inPut;
    private String outPut;
    private String exInput;
    private String exOutput;
    private String author;

    public problemInfo() {

    }

    public problemInfo(String problemId, String problemName, String acceptTimes, String author) {
        this.problemId = problemId;
        this.problemName = problemName;
        this.acceptTimes = acceptTimes;
        this.author = author;
    }

    public problemInfo(String problemId, String problemName, String problemContent, String memeryLim, String timesLim, String acceptTimes, String inPut, String outPut, String exInput, String exOutput, String author) {
        this.problemId = problemId;
        this.problemName = problemName;
        this.problemContent = problemContent;
        this.memeryLim = memeryLim;
        this.timesLim = timesLim;
        this.acceptTimes = acceptTimes;
        this.inPut = inPut;
        this.outPut = outPut;
        this.exInput = exInput;
        this.exOutput = exOutput;
        this.author = author;
    }

    @Override
    public String toString() {
        return "problemInfo{" +
                "problemId='" + problemId + '\'' +
                ", problemName='" + problemName + '\'' +
                ", problemContent='" + problemContent + '\'' +
                ", memeryLim='" + memeryLim + '\'' +
                ", timesLim='" + timesLim + '\'' +
                ", acceptTimes='" + acceptTimes + '\'' +
                ", inPut='" + inPut + '\'' +
                ", outPut='" + outPut + '\'' +
                ", exInput='" + exInput + '\'' +
                ", exOutput='" + exOutput + '\'' +
                ", author='" + author + '\'' +
                '}';
    }

    public String getProblemId() {
        return problemId;
    }

    public void setProblemId(String problemId) {
        this.problemId = problemId;
    }

    public String getProblemName() {
        return problemName;
    }

    public void setProblemName(String problemName) {
        this.problemName = problemName;
    }

    public String getProblemContent() {
        return problemContent;
    }

    public void setProblemContent(String problemContent) {
        this.problemContent = problemContent;
    }

    public String getMemeryLim() {
        return memeryLim;
    }

    public void setMemeryLim(String memeryLim) {
        this.memeryLim = memeryLim;
    }

    public String getTimesLim() {
        return timesLim;
    }

    public void setTimesLim(String timesLim) {
        this.timesLim = timesLim;
    }

    public String getAcceptTimes() {
        return acceptTimes;
    }

    public void setAcceptTimes(String acceptTimes) {
        this.acceptTimes = acceptTimes;
    }

    public String getInPut() {
        return inPut;
    }

    public void setInPut(String inPut) {
        this.inPut = inPut;
    }

    public String getOutPut() {
        return outPut;
    }

    public void setOutPut(String outPut) {
        this.outPut = outPut;
    }

    public String getExInput() {
        return exInput;
    }

    public void setExInput(String exInput) {
        this.exInput = exInput;
    }

    public String getExOutput() {
        return exOutput;
    }

    public void setExOutput(String exOutput) {
        this.exOutput = exOutput;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}