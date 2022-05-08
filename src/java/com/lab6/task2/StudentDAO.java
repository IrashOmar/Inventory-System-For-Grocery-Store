/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab6.task2;

/**
 *
 * @author User
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
    private final Connection connection;
            private int result;
            
            public StudentDAO(){
                connection = DBConnection.getConnection();
            }
            
            public int addStudent(Student student){
                try{
                    String mySqlQuery = "INSERT INTO profile "
                            +" (name, age) "
                            +" values (?,?)";
                    PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
                    myPs.setString(1, student.getName());
                    myPs.setString(2, student.getAge());
                    result = myPs.executeUpdate();
                }catch(Exception e){
                    System.out.println("Exception is :" +e);
                }
                return result;
            }
            
            public List<Student> retrieveAllStudent(){
                List<Student> studentAll =new ArrayList<Student>();
                Student student;
                
                try{
                    Statement myStatement =connection.createStatement();
                    String myQuery = "select * from profile";
                    ResultSet myRs = myStatement.executeQuery(myQuery);
                    while (myRs.next()){
                        student =new Student();
                        student.setId(myRs.getInt(1));
                        student.setAge(myRs.getString(2));
                        student.setName(myRs.getString(3));
                        studentAll.add(student);
                    }
                }catch(Exception e){
                        System.out.println("Exception is: " +e);
                        }
                return studentAll;
            }
            
            public Student retrieveOneStudent(int id){
                Student student = new Student();
                try{
                    Statement myStatement = connection.createStatement();
                    String myQuery ="select * from profile "
                            + "where id=" +id;
                    ResultSet myRs = myStatement.executeQuery(myQuery);
                    while (myRs.next()){
                        student.setId(myRs.getInt(1));
                        student.setAge(myRs.getString(2));
                        student.setName(myRs.getString(3));
                    }
                }catch (Exception e){
                    System.out.println("Exception i ;" +e);
                }
                return student;
            }
            
            public int updateStudent(Student student){
                try{
                    String mySqlQUery ="update profile "
                            + "set name=?, age=? "
                            + "where id=?";
                    PreparedStatement myPs =connection.prepareStatement(mySqlQUery);
                    myPs.setString(1, student.getName());
                    myPs.setString(2, student.getAge());
                    myPs.setInt(3, student.getId());
                    result =myPs.executeUpdate();
                }catch (Exception e){
                    System.out.println("Exception is: "+e);
                }
                return result;
            }
            
            public int deleteStudent(int id){
                try{
                    String mySqlQuery = "delete from profile where id=?";
                    PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
                    myPs.setInt(1, id);
                    result=myPs.executeUpdate();
                }catch (Exception e){
                    System.out.println("Exception is: "+ e);
                }
                return result;
            }
            
}
