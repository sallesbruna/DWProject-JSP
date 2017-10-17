package br.com.salles.services;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class EncryptionService {
	private static final String ENCRYPTION_KEY = "thebestsecretkey";

	public static String encryptString(String input) {
		byte[] crypted = null;
		try {
			SecretKeySpec skey = new SecretKeySpec(ENCRYPTION_KEY.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, skey);
			crypted = cipher.doFinal(input.getBytes());
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return new String(java.util.Base64.getEncoder().encode(crypted));
	}

}
