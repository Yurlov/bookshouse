package online.mega.library.Controllers;

import online.mega.library.Enams.UserRole;
import online.mega.library.Entity.User;
import online.mega.library.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.Objects;
@Transactional
@Controller
public class LoginController {

    @Autowired
    private UserService userService;
    @Autowired
    private ShaPasswordEncoder encoder;

    @RequestMapping("/login")
    public String loginPage() {
        return "login";
    }

    @RequestMapping(value = "/newuser", method = RequestMethod.POST)
    public String update(@RequestParam String login,
                         @RequestParam(required = false) String name,
                         @RequestParam String password,
                         @RequestParam String confirm,
                         @RequestParam(required = false) String email,
                         Model model) {
        if (userService.existsByLogin(login)) {
            model.addAttribute("exists", true);
            return "register";
        }
        if(Objects.equals(password, "")){
            model.addAttribute("emptyPass",true);
            return "register";
        }
        if(!Objects.equals(password, confirm)){
            model.addAttribute("wrongPass",true);
            return "register";
        }

        User dbUser = new User(name,login,encoder.encodePassword(password, null), UserRole.USER, email);
        userService.addUser(dbUser);

        return "redirect:/login";
    }



}

