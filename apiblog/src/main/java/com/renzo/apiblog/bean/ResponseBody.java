package com.renzo.apiblog.bean;

import java.time.LocalDateTime;

public class ResponseBody {

    private int status;
    private LocalDateTime date = LocalDateTime.now();
    private Object response;

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Object getResponse() {
        return response;
    }

    public void setResponse(Object response) {
        this.response = response;
    }

}
