package com.renzo.apiblog.service;

import com.renzo.apiblog.bean.Blog;

import java.util.List;
import java.util.Optional;

public interface IBlogService {

    List<Blog> findAll();
    Optional<Blog> findById(String id);
    List<Blog> findByTipoCodigo(int id);
    Blog setBlog(Blog b);
    void deleteAll();

}
