package com.ems.task;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.ems.db.DatabaseConnection;

public class QuestionDAO {
    private Connection connection = DatabaseConnection.getConnection();

    public void insertQuestion(Question question) throws SQLException {
        String queryQuestion = "INSERT INTO Question (question, cAnswer, taskId, marks) VALUES (?, ?, ?, ?)";
        String queryAnswer = "INSERT INTO Answers (taskId, questionId, answers) VALUES (?, ?, ?)";
               
        // set question data
        try (PreparedStatement preparedStatement = connection.prepareStatement(queryQuestion, Statement.RETURN_GENERATED_KEYS)) {
            preparedStatement.setString(1, question.getQuestion());
            preparedStatement.setInt(2, question.getCAnswer());
            preparedStatement.setInt(3, question.getTaskId());
            preparedStatement.setInt(4, question.getMarks());
            preparedStatement.executeUpdate();
            
            ResultSet generatedKey = preparedStatement.getGeneratedKeys();
            if (generatedKey.next()) {
            	int lastQId = generatedKey.getInt(1);
            	question.setQuestionId(lastQId);
            } 
            
            List<String> retrivedAnswer = question.getAnswers();
            try (PreparedStatement preparedStmt = connection.prepareStatement(queryAnswer)) {
	            for (String answer : retrivedAnswer) {
	            	preparedStmt.setInt(1, question.getTaskId());
	            	preparedStmt.setInt(2, question.getQuestionId());
	            	preparedStmt.setString(3, answer);
	            	preparedStmt.executeUpdate();
	            	//System.out.println(answer);
	            }
            }
            catch (SQLException e) {
            	e.printStackTrace();
            	System.out.println("Error Inserting answers!");
            } 
        }
        
        catch (SQLException e) {
        	e.printStackTrace();
        	System.out.println("Error inserting to questions!");
        }
        DatabaseConnection.closeConnection(connection);
    }
}
