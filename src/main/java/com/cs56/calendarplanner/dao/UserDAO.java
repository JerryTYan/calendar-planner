package com.cs56.calendarplanner.dao;

import com.cs56.calendarplanner.model.User;
import com.cs56.calendarplanner.util.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";

        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, email);
            stmt.setString(2, password);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setEmail(rs.getString("email"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    public boolean createUser(User user) {
        String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}