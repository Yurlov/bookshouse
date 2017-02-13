package online.mega.library.interceptors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class InterceptorController {

    @RequestMapping(value = "/interceptorCall/subLevel", method = RequestMethod.POST)
    public ModelAndView interceptorCall() {

        return new ModelAndView("/login");
    }
}
