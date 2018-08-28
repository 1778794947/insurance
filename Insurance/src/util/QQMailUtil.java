package util;

import java.util.Properties;
import java.util.Random;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.sun.mail.util.MailSSLSocketFactory;

public class QQMailUtil {
	/**
     * QQ邮箱验证
     * 
     * @param fromMail
     *            发件人邮箱
     * @param fromPwd
     *            发件人密码
     * @param mailServicer
     *            邮件服务器
     * @param toMail
     *            收件人邮箱
     * @return 收件人邮箱+验证码
     */
    public static String qqSendMail(String fromMail, String fromPwd,
            String mailServicer, String toMail) {
        String code = createCode();
        StringBuffer st = new StringBuffer();
        Properties props = new Properties();
        // 开启debug调试
        props.setProperty("mail.debug", "true");
        // 发送服务器需要身份验证
        props.setProperty("mail.smtp.auth", "true");
        // 设置邮件服务器主机名
        props.setProperty("mail.host", mailServicer);
        // 发送邮件协议名称
        props.setProperty("mail.transport.protocol", "smtp");
        try {
            // 添加ssl加密，qq需要传输过程ssl加密
            MailSSLSocketFactory sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
            props.put("mail.smtp.ssl.enable", "true");
            props.put("mail.smtp.ssl.socketFactory", sf);
            Session session = Session.getInstance(props);
            // 邮件内容部分
            Message msg = new MimeMessage(session);
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
                    toMail));
            // 头部头字段
            msg.setSubject("Hello,请您及时验证邮箱");
            // 设置消息体
            msg.setText("邮箱验证码：" + code);
            // 邮件发送者
            msg.setFrom(new InternetAddress(fromMail));
            // 发送邮件
            Transport transport = session.getTransport();
            transport.connect(mailServicer, fromMail, fromPwd);
            transport.sendMessage(msg, new Address[] { new InternetAddress(
                    toMail) });
            transport.close();
            st.append(toMail + ":" + code);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return st.toString();
    }

    /**
     * 产生四位随机数
     * 
     * @return
     */
    public static String createCode() {
        Random random = new Random();
        String fourRandom = random.nextInt(10000) + "";
        int randLength = fourRandom.length();
        if (randLength < 4) {
            for (int i = 1; i <= 4 - randLength; i++)
                fourRandom = "0" + fourRandom;
        }
        return fourRandom;
    }
	
	public static void main(String[] args) {
		qqSendMail("895952717@qq.com", "eakuwgbkpgfbbccf", "smtp.qq.com",
		         "meijhm@live.com");
	}
}
