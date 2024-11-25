package aa;

public class GradeBean {
    private String name;
    private int point;
    private String grade;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
        setGrade(); // 점수가 설정될 때마다 등급도 설정
    }

    private void setGrade() {
        if (point > 90) {
            grade = "A";
        } else if (point > 80) {
            grade = "B";
        } else if (point > 70) {
            grade = "C";
        } else {
            grade = "D";
        }
    }

    public String getGrade() {
        return grade;
    }
}
