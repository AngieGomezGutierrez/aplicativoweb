/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mantenimientoEquipos;

/**
 *
 * @author angie
 */



import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ComputerService {

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(
            "jdbc:sqlserver://localhost:1433;databaseName=equipos", 
            "sa", 
            "123"
        );
    }

    public List<Computer> getAllComputers() {
        List<Computer> computers = new ArrayList<>();
        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM computadoras")) {
            
            while (rs.next()) {
                Computer computer = new Computer();
                computer.setId(rs.getInt("id"));
                computer.setName(rs.getString("nombre"));
                computers.add(computer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return computers;
    }

    public void addComputer(String name) {
        try (Connection conn = getConnection();
             CallableStatement stmt = conn.prepareCall("{call ingresarComputadora(?)}")) {
            
            stmt.setString(1, name);
            stmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteComputer(int id) {
        try (Connection conn = getConnection();
             CallableStatement stmt = conn.prepareCall("{call eliminarComputadora(?)}")) {
            
            stmt.setInt(1, id);
            stmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
