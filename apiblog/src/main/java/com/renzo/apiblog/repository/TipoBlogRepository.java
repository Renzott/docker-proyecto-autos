package com.renzo.apiblog.repository;

import com.renzo.apiblog.bean.TipoBlog;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface TipoBlogRepository extends MongoRepository<TipoBlog,Integer> {

}
