package Controlador;

import java.util.List;

import Modelo.DAO.NinjaDAO;
import Modelo.Clases.Ninja;

public class ControladorNinja {

    private static final NinjaDAO NINJA_DAO = new NinjaDAO();

     public static List<Ninja> getAllNinja() {
        return NINJA_DAO.geAlltNinjas();
    }
}