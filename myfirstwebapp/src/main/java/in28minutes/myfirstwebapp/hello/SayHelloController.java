package in28minutes.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {
    @RequestMapping("say-hello")
    @ResponseBody
    public String sayHello(){
        return "Hello! hoho";
    }
    @RequestMapping("say-hello-jsp")
    public String sayHelloHtml(){

        return "sayHello";
    }
}
