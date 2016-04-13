package entity;

/**
 * Created by Administrator on 2016/3/7.
 */
public class student {

    private String studentNum; //学生学号
    private String studentName;
    private String studentPassword;
    private String studentEmail;
    private String studentGender;
    private String studentCollege;

    public student() {

    }

    public student(String studentNum, String studentName,
                   String studentPassword, String studentEmail,
                   String studentGender, String studentCollege) {

        this.studentNum = studentNum;
        this.studentName = studentName;
        this.studentPassword = studentPassword;
        this.studentEmail = studentEmail;
        this.studentGender = studentGender;
        this.studentCollege = studentCollege;
    }

    @Override
    public String toString() {
        return "student{" +
                ", studentNum='" + studentNum + '\'' +
                ", studentName='" + studentName + '\'' +
                ", studentPassword='" + studentPassword + '\'' +
                ", studentEmail='" + studentEmail + '\'' +
                ", studentGender='" + studentGender + '\'' +
                ", studentCollege='" + studentCollege + '\'' +
                '}';
    }

    public String getStudentNum() {
        return studentNum;
    }

    public void setStudentNum(String studentNum) {
        this.studentNum = studentNum;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentPassword() {
        return studentPassword;
    }

    public void setStudentPassword(String studentPassword) {
        this.studentPassword = studentPassword;
    }

    public String getStudentEmail() {
        return studentEmail;
    }

    public void setStudentEmail(String studentEmail) {
        this.studentEmail = studentEmail;
    }

    public String getStudentGender() {
        return studentGender;
    }

    public void setStudentGender(String studentGender) {
        this.studentGender = studentGender;
    }

    public String getStudentCollege() {
        return studentCollege;
    }

    public void setStudentCollege(String studentCollege) {
        this.studentCollege = studentCollege;
    }
}
