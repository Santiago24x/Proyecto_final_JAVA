package Vista;

import Controlador.ControladorNinja;
import Modelo.Clases.Ninja;
import java.util.List;
import java.util.Scanner;

public class NinjaVista {
    private ControladorNinja controladorNinja = new ControladorNinja();

    void showMenu() {
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("********** Ninjas Management **********");
            System.out.println("1. View All cosplays");
            System.out.println("0. Exit");
            System.out.print("Enter your choice: ");

            int choice = scanner.nextInt();
            scanner.nextLine(); // Consume the newline character

            switch (choice) {
                case 1:
                    viewAllNinjas(scanner);
                    break;
                case 0:
                    System.out.println("Exiting...");
                    System.exit(0);
                default:
                    System.out.println("Invalid choice. Please try again.");
            }
        }
    }

    private void viewAllNinjas(Scanner scanner) {
        List<Ninja> ninjas = ControladorNinja.getAllNinja();
        for (Ninja ninja : ninjas) {
            System.out.println(ninja.toString());
        }

    }



    
}