package com.renzo.apiblog.service;

import com.renzo.apiblog.bean.Blog;
import com.renzo.apiblog.repository.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BlogService implements IBlogService{

    private final BlogRepository repository;

    @Autowired
    public BlogService(BlogRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<Blog> findAll() {
        return repository.findAll();
    }

    @Override
    public Optional<Blog> findById(String id) {
        return repository.findById(id);
    }

    @Override
    public List<Blog> findByTipoCodigo(int id) {
        return repository.findAllByTipoCodigo(id);
    }

    @Override
    public Blog setBlog(Blog b) {
        return repository.save(b);
    }

    @Override
    public void deleteAll() {
        repository.deleteAll();
    }
}
