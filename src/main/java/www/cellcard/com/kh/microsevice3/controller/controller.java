package www.cellcard.com.kh.microsevice3.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class controller {

    @GetMapping("/C")
    public String hello() {
        return "Have a great day Everyone :)";
    }

}