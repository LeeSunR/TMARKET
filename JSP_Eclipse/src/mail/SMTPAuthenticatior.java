package mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticatior extends Authenticator{
	protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
		return new PasswordAuthentication("","");
		//���� id,pw ������ �� ; ���̹� ���̵�� �α���
	}
}