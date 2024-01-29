
package Modelo.DAO;

import Modelo.Clases.Ninja;
import Modelo.Persistencia.ConnectionDB;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class NinjaDAO {
    
   public static final String SELECT_ALL_NINJAS_WHIT_HABILITIES = "SELECT n.ID, n.nombre, n.rango, n.aldea, h.nombre as habilidad FROM ninja n  JOIN habilidad h ON n.ID = h.ID_Ninja";
   

   public List<Ninja> geAlltNinjas() {

       
        List<Ninja> Ninjas = new ArrayList<>();
        try (Connection connection = ConnectionDB.MySQLConnection();
             PreparedStatement ps = connection.prepareStatement(SELECT_ALL_NINJAS_WHIT_HABILITIES)) {
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Ninja ninja = new Ninja();
                    ninja.setID_Ninja(rs.getInt("ID"));
                    ninja.setNombre(rs.getString("nombre"));
                    ninja.setRango(rs.getInt("rango"));
                    ninja.setAldea(rs.getString("aldea"));
                    ninja.setHabilidad(rs.getString("habilidad"));
                    Ninjas.add(ninja);
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return Ninjas;
    }



    
}
