package com.renzo.apiblog.repository;

import com.renzo.apiblog.bean.Blog;
import com.renzo.apiblog.bean.Comentario;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface BlogRepository extends MongoRepository<Blog, String> {
    List<Blog> findAllByTipoCodigo(int id);

}