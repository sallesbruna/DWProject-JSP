package br.com.salles.services;

public class AuthenticationService {

    public static String ADMIN_USERNAME = "bruna";
    public static String ADMIN_PASSWORD = "pass";

    public static boolean verificarUsuario(String username, String password){
        String encryptedPassword = EncryptionService.encryptString(ADMIN_PASSWORD);
        if(username.equals(ADMIN_USERNAME) && password.equals(encryptedPassword))
            return true;
        return false;
    }
}
