package com.renzo.apiblog.controller;

import com.renzo.apiblog.bean.ResponseBody;
import com.renzo.apiblog.bean.TipoBlog;
import com.renzo.apiblog.service.TipoBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/tipoblog")
public class TipoBlogController {

    @Autowired
    private TipoBlogService tipoBlogService;

    @GetMapping
    public ResponseBody getTipoBlogs(){

        ResponseBody responseBody = new ResponseBody();

        responseBody.setStatus(200);
        responseBody.setResponse(tipoBlogService.findAll());

        return responseBody;
    }

}
