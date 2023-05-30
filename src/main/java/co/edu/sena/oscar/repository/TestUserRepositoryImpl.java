package co.edu.sena.oscar.repository;

import co.edu.sena.oscar.model.User;

import java.sql.*;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        repository<User> repository = new UserRepositoryImpl();

        System.out.println("========== saveObj Insert =========="); //insert
        User userInsert = new User();
        userInsert.setUser_firstname("pablo");
        userInsert.setUser_lastname("lara");
        userInsert.setUser_email("pablo123@gmail.com");
        userInsert.setUser_password("pablo123");
        repository.saveObj(userInsert);
        userInsert.setUser_firstname("andres");
        userInsert.setUser_lastname("vargas");
        userInsert.setUser_email("andres@gmail.com");
        userInsert.setUser_password("andres123");
        repository.saveObj(userInsert);

        System.out.println("========== listAllObj ==========");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== byIdObj ==========");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("========== saveObj ==========");
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("camilo ");
        userUpdate.setUser_lastname("el pepe");
        userUpdate.setUser_email("elpepe@gmail.com");
        userUpdate.setUser_password("elpepe123");
        repository.saveObj(userInsert);
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== deleteObj ==========");
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);

    }
}
