package com.baemongsil.sns.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptUtils {

	// 암호화 메소드
		public static String md5(String message) {
			String resultData = "";
			
			try {
				MessageDigest md = MessageDigest.getInstance("md5");
				
				// 문자열을 byte 배열로 변환
				byte[] bytes = message.getBytes();
				// 암호화 셋팅
				md.update(bytes);
				
				// 암호화된 결과 얻기 
				byte[] digest = md.digest();
				
				// byte 배열 -> 16진수 문자열
				// 01001001
				for(int i = 0; i < digest.length; i++) {
					resultData += Integer.toHexString(digest[i] & 0xff);
					
					//   01001001
					// & 11111111
					//   01001001
				}
				
			} catch (NoSuchAlgorithmException e) {
				
				e.printStackTrace();
				return null;
			}
			
			return resultData;
			
		}
	
	
}
