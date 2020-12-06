package com.renzo.apiblog.bean;

import org.springframework.data.annotation.Id;

import java.lang.reflect.Field;
import java.util.UUID;

public class Comentario {

    @Id
    private UUID id = UUID.randomUUID();
    private String nombre;
    private String correo;
    private String comentario;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
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
        return "Comentario{" +
                "id=" + id +
                ", nombre='" + nombre + '\'' +
                ", correo='" + correo + '\'' +
                ", comentario='" + comentario + '\'' +
                '}';
    }
}
