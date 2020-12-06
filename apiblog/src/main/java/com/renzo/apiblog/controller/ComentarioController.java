package com.renzo.apiblog.controller;

import com.renzo.apiblog.bean.Blog;
import com.renzo.apiblog.bean.Comentario;
import com.renzo.apiblog.bean.ResponseBody;

import com.renzo.apiblog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("api/blog/comments")
public class ComentarioController {

    @Autowired
    private BlogService blogService;

    @GetMapping("/{id}")
    public ResponseBody getComments(@PathVariable String id) {

        ResponseBody responseBody = new ResponseBody();
        if(blogService.findById(id).isPresent()){
            responseBody.setStatus(200);
            responseBody.setResponse(blogService.findById(id).get().getComentarioList());
        }else {
            responseBody.setStatus(400);
            responseBody.setResponse("No se encuentra el id del blog");
        }
        return responseBody;
    }

    @PostMapping("/{id}")
    public ResponseBody postComment(@RequestBody Comentario comentario,@PathVariable String id) throws IllegalAccessException {

        ResponseBody responseBody = new ResponseBody();
        Optional<Blog> blog = blogService.findById(id);
        if(!comentario.checkNull()){
            if(blog.isPresent()){
                responseBody.setStatus(200);
                blog.get().getComentarioList().add(comentario);
                responseBody.setResponse(comentario);
                blogService.setBlog(blog.get());
            }else {
                responseBody.setStatus(400);
                responseBody.setResponse("No se encuentra el id del blog");
            }

        }else {
            responseBody.setStatus(400);
            responseBody.setResponse("Faltan datos");
        }

        return responseBody;
    }

}
