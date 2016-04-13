package entity;

import entity.astractUser.users;

/**
 * Created by Administrator on 2016/3/8.
 */
public class teacher{
    private String teacherId;
    private String teacherName;
    private String teacherPassword;
    private String teacherEmail;
    private String teacherNum;    //教工号
    private String teacherCollege;  //所属学院
    private String teacherGender;


    public teacher(){

    }

    public teacher(String teacherId, String teacherName, String teacherPassword, String teacherEmail, String teacherNum, String teacherCollege, String teacherGender) {
        this.teacherId = teacherId;
        this.teacherName = teacherName;
        this.teacherPassword = teacherPassword;
        this.teacherEmail = teacherEmail;
        this.teacherNum = teacherNum;
        this.teacherCollege = teacherCollege;
        this.teacherGender = teacherGender;
    }

    @Override
    public String toString() {
        return "teacher{" +
                "teacherId='" + teacherId + '\'' +
                ", teacherName='" + teacherName + '\'' +
                ", teacherPassword='" + teacherPassword + '\'' +
                ", teacherEmail='" + teacherEmail + '\'' +
                ", teacherNum='" + teacherNum + '\'' +
                ", teacherCollege='" + teacherCollege + '\'' +
                ", teacherGender='" + teacherGender + '\'' +
                '}';
    }

    public String getTeacherGender() {

        return teacherGender;
    }

    public void setTeacherGender(String teacherGender) {
        this.teacherGender = teacherGender;
    }


    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getTeacherPassword() {
        return teacherPassword;
    }

    public void setTeacherPassword(String teacherPassword) {
        this.teacherPassword = teacherPassword;
    }

    public String getTeacherEmail() {
        return teacherEmail;
    }

    public void setTeacherEmail(String teacherEmail) {
        this.teacherEmail = teacherEmail;
    }

    public String getTeacherNum() {
        return teacherNum;
    }

    public void setTeacherNum(String teacherNum) {
        this.teacherNum = teacherNum;
    }

    public String getTeacherCollege() {
        return teacherCollege;
    }

    public void setTeacherCollege(String teacherCollege) {
        this.teacherCollege = teacherCollege;
    }
}
