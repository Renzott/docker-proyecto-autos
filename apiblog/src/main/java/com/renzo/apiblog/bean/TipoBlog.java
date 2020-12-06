package com.renzo.apiblog.bean;

import org.springframework.data.annotation.Id;

import java.io.Serializable;

public class TipoBlog implements Serializable {
    @Id
    public int codigo;
    public String descripcion;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "TipoBlog{" +
                "codigo=" + codigo +
                ", descripcion='" + descripcion + '\'' +
                '}';
    }
}
