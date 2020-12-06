package com.renzo.apiblog;

import com.renzo.apiblog.bean.Blog;
import com.renzo.apiblog.bean.Comentario;
import com.renzo.apiblog.bean.TipoBlog;

import com.renzo.apiblog.service.BlogService;
import com.renzo.apiblog.service.TipoBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.annotation.PostConstruct;
import java.lang.reflect.Array;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.UUID;

@SpringBootApplication
public class ApiblogApplication {

    @Autowired
    private BlogService blogService;
    @Autowired
    private TipoBlogService tipoBlogService;

    @PostConstruct
    public void loadData(){
        blogService.deleteAll();
        tipoBlogService.deleteAll();

        TipoBlog tipo1 = new TipoBlog();

        tipo1.setCodigo(1);
        tipo1.setDescripcion("Noticias");

        tipoBlogService.setTipoBlog(tipo1);

        TipoBlog tipo2 = new TipoBlog();

        tipo2.setCodigo(2);
        tipo2.setDescripcion("Consejos");

        tipoBlogService.setTipoBlog(tipo2);

        Blog blog = new Blog();

        blog.setCodigo("B" + 1);
        blog.setTitulo("Titulo" + 1);

        DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm");
        blog.setFecha(LocalDateTime.now().format(timeFormatter));

        blog.setTipo(tipo1);
        blog.setFoto("url");
        blog.setTexto("Articulo 1");

        Comentario comentario1 = new Comentario();
            comentario1.setNombre("Pepito");
            comentario1.setCorreo("pepe@hotmail.com");
            comentario1.setComentario("Lorem ipsum dolor sit amet, consectetur adipiscing elit");
        Comentario comentario2 = new Comentario();
            comentario2.setNombre("juanito");
            comentario2.setCorreo("juan@hotmail.com");
            comentario2.setComentario("Lorem ipsum dolor sit amet, consectetur adipiscing elit");
        blog.setComentarioList(Arrays.asList(comentario1,comentario2));
        blogService.setBlog(blog);

        Blog blog2 = new Blog();

        blog2.setCodigo("B" + 2);
        blog2.setTitulo("Titulo" + 2);

        blog2.setFecha(LocalDateTime.parse("2020-12-05T10:15:30").format(timeFormatter));

        blog2.setTipo(tipo2);
        blog2.setFoto("url");
        blog2.setTexto("Articulo 2");

        blogService.setBlog(blog2);

        Blog blog3 = new Blog();

        blog3.setCodigo("B" + 3);
        blog3.setTitulo("Titulo" + 3);

        blog3.setFecha(LocalDateTime.parse("2020-11-07T10:15:30").format(timeFormatter));

        blog3.setTipo(tipo1);
        blog3.setFoto("url");
        blog3.setTexto("Articulo 3");

        blogService.setBlog(blog3);

    }

    public static void main(String[] args) {
        SpringApplication.run(ApiblogApplication.class, args);
    }

}
