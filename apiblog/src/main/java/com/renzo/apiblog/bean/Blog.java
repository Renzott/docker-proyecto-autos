package com.renzo.apiblog.bean;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;

import java.lang.reflect.Field;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Blog {

    @Id
    private String codigo;
    private String titulo;
    private String fecha;
    private TipoBlog tipo;
    private String foto;
    private String texto;

    private List<Comentario> comentarioList = new ArrayList<>();

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public TipoBlog getTipo() {
        return tipo;
    }

    public void setTipo(TipoBlog tipo) {
        this.tipo = tipo;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public List<Comentario> getComentarioList() {
        return comentarioList;
    }

    public void setComentarioList(List<Comentario> comentarioList) {
        this.comentarioList = comentarioList;
    }

    public boolean checkNull() throws IllegalAccessException {
        for (Field f : getClass().getDeclaredFields()) {
            if (f.get(this) == null)
                return true;
            }
        return false;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "codigo='" + codigo + '\'' +
                ", titulo='" + titulo + '\'' +
                ", fecha='" + fecha + '\'' +
                ", tipo=" + tipo +
                ", foto='" + foto + '\'' +
                ", texto='" + texto + '\'' +
                ", comentarioList=" + comentarioList +
                '}';
    }
}
