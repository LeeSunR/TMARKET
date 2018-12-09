package mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticatior extends Authenticator{
	protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
		return new PasswordAuthentication("","");
		//각각 id,pw 넣으면 됨 ; 네이버 아이디로 로그인
	}
}
