package co.edu.sena.DMotor.utiles;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class configEmail {

	/*@SuppressWarnings("unused")
	public static void sendCorreo(String host, String port,final String sender,
			final String password,String addressee, String matter, String body) throws AddressException, MessagingException {
				
		Properties propiedades=new Properties();
		propiedades.put("mail.smtp.host", host);
		propiedades.put("mail.smtp.port", port);
		propiedades.put("mail.smtp.auth","true");
		propiedades.put("mail.smtp.starttls.enable", "true");
		
		
		Authenticator autenticar=new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
			
				if((sender!=null)&&(sender.length()>0)&&(password!=null)&&(password.length()>0)) {
					
					return new PasswordAuthentication(sender,password);
				}
				return null;
			}
		};
		
		Session sesion=Session.getDefaultInstance(propiedades, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(sender,password);
				}
		});
		
		Message msg=new MimeMessage(Session.getDefaultInstance(propiedades, autenticar));
		
		msg.setFrom(new InternetAddress(sender));
		
		InternetAddress[] direcciones= {new InternetAddress(addressee)};
		
		msg.setRecipients(Message.RecipientType.TO, direcciones);
		msg.setSubject(matter);
		msg.setContent(body,"text/html; charset=utf-8");
		msg.setSentDate(new Date());
		
		
		Transport.send(msg);
		
	}*/
	@SuppressWarnings("unused")
	public static void eviarCorreo(String host, String port,final String sender,
			final String password,String addressee, String matter, String body) throws AddressException, MessagingException {
				
		Properties propiedades=new Properties();
		propiedades.put("mail.smtp.host", host);
		propiedades.put("mail.smtp.port", port);
		propiedades.put("mail.smtp.auth","true");
		propiedades.put("mail.smtp.starttls.enable", "true");
		
		
		Authenticator autenticar=new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
			
				if((sender!=null)&&(sender.length()>0)&&(password!=null)&&(password.length()>0)) {
					
					return new PasswordAuthentication(sender,password);
				}
				return null;
			}
		};
		
		Session sesion=Session.getDefaultInstance(propiedades, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(sender,password);
				}
		});
		
		Message msg=new MimeMessage(Session.getDefaultInstance(propiedades, autenticar));
		
		msg.setFrom(new InternetAddress(sender));
		
		InternetAddress[] direcciones= {new InternetAddress(addressee)};
		
		msg.setRecipients(Message.RecipientType.TO, direcciones);
		msg.setSubject(matter);
		msg.setContent(body,"text/html; charset=utf-8");
		msg.setSentDate(new Date());
		
		
		Transport.send(msg);
		
	}
}
