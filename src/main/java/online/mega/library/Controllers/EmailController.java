package online.mega.library.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

@Transactional
@Controller
public class EmailController {

    @Autowired
    private JavaMailSender javaMailSender;

    @RequestMapping(value = "/emailsend",method = RequestMethod.POST)
    public String doSendEmail(HttpServletRequest request) {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");


        SimpleMailMessage mail = new SimpleMailMessage();
        mail.setFrom("bookshouselibrary@gmail.com");
        mail.setTo("bookshouselibrary@gmail.com");
        mail.setSubject(name+" ("+email+")");
        mail.setText(message);
        try {
            javaMailSender.send(mail);
        }catch (MailException ex){
            ex.printStackTrace();
        }
        return "redirect:/main";
    }
}
