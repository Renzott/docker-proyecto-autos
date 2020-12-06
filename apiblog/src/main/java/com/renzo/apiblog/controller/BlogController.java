package com.renzo.apiblog.controller;

import com.renzo.apiblog.bean.ResponseBody;
import com.renzo.apiblog.bean.Blog;
import com.renzo.apiblog.service.BlogService;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/blog")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @GetMapping
    public ResponseBody getBlogs(@RequestParam(required = false) String tipoid) {

        ResponseBody responseBody = new ResponseBody();
        responseBody.setStatus(200);

        if(NumberUtils.isParsable(tipoid) && Integer.parseInt(tipoid) > 0){
            responseBody.setResponse(blogService.findByTipoCodigo(Integer.parseInt(tipoid)));
        }else {
            responseBody.setResponse(blogService.findAll());
        }

        return responseBody;
    }

    @GetMapping("/{id}")
    public ResponseBody getBlog(@PathVariable String id) {

        ResponseBody responseBody = new ResponseBody();

        if (blogService.findById(id).isPresent()) {
            responseBody.setStatus(200);
            responseBody.setResponse(blogService.findById(id));
        } else {
            responseBody.setResponse("Blog no encontrado");
            responseBody.setStatus(404);
        }
        return responseBody;
    }

    @PostMapping
    public ResponseBody setBlog(@RequestBody Blog b) throws IllegalAccessException{

        ResponseBody responseBody = new ResponseBody();

        if(b.checkNull()){
            responseBody.setStatus(400);
            responseBody.setResponse("Faltan datos");
        }else if(blogService.findById(b.getCodigo()).isPresent()){
            responseBody.setStatus(400);
            responseBody.setResponse("Este Blog ya existe, use otro codigo");
        } else{
            responseBody.setStatus(200);
            responseBody.setResponse(b);
            blogService.setBlog(b);
        }
        return responseBody;
    }

}
