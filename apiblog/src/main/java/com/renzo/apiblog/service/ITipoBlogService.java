package com.renzo.apiblog.service;

import com.renzo.apiblog.bean.TipoBlog;

import java.util.List;
import java.util.Optional;

public interface ITipoBlogService {
    List<TipoBlog> findAll();
    Optional<TipoBlog> findById(int id);
    TipoBlog setTipoBlog(TipoBlog t);
    void deleteAll();
}
