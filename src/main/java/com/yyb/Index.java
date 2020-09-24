package com.yyb;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class Index {

    @RequestMapping("")
    public String index(){
        return "Hello Springboot "+new Date().toString();
    }

}
