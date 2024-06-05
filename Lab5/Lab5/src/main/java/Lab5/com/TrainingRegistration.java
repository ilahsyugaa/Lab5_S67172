/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Fad Rahmat
 */
package Lab5.com;

public class TrainingRegistration {
    private String icNo;
    private String name;
    private String trainingType;
    private int numOfPax;
    private boolean isStudent;

    // Getters and setters
    public String getIcNo() {
        return icNo;
    }

    public void setIcNo(String icNo) {
        this.icNo = icNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTrainingType() {
        return trainingType;
    }

    public void setTrainingType(String trainingType) {
        this.trainingType = trainingType;
    }

    public int getNumOfPax() {
        return numOfPax;
    }

    public void setNumOfPax(int numOfPax) {
        this.numOfPax = numOfPax;
    }

    public boolean isStudent() {
        return isStudent;
    }

    public void setStudent(boolean isStudent) {
        this.isStudent = isStudent;
    }

    public String getTrainingTypeName() {
        switch (trainingType) {
            case "1":
                return "C++ training";
            case "2":
                return "Java for beginner";
            case "3":
                return "HTML5";
            case "4":
                return "Java EEE";
            case "5":
                return "Android Programming";
            default:
                return "Unknown";
        }
    }

    public double calculateTotalFee() {
        double baseFee = 0.0;
        switch (trainingType) {
            case "1":
                baseFee = 500.0;
                break;
            case "2":
                baseFee = 600.0;
                break;
            case "3":
                baseFee = 400.0;
                break;
            case "4":
                baseFee = 800.0;
                break;
            case "5":
                baseFee = 700.0;
                break;
        }

        if (isStudent) {
            baseFee *= 0.9; // 10% discount for students
        }

        return baseFee * numOfPax;
    }
}
