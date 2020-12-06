package com.renzo.apiblog.service;

import com.renzo.apiblog.bean.TipoBlog;
import com.renzo.apiblog.repository.TipoBlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TipoBlogService implements ITipoBlogService {

    private final TipoBlogRepository repository;

    @Autowired
    public TipoBlogService(TipoBlogRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<TipoBlog> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<TipoBlog> findById(int id) {
        return repository.findById(id);
    }

    @Override
    public TipoBlog setTipoBlog(TipoBlog t) {
        return repository.save(t);
    }
    @Override
    public void deleteAll() {
        repository.deleteAll();
    }
}
