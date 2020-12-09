import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Auto } from '../model/auto';


@Injectable({
  providedIn: 'root'
})
export class AutoService {

  API_URL = "http://localhost:8080/ProyectoAutosClasicos";

  constructor(private http: HttpClient) { }

  getAutos() {
    return this.http.get<Auto[]>(`${this.API_URL}/api/lstautos`);
  }

  getCarrocerias() {
    return this.http.get(`${this.API_URL}/api/carrocerias`);
  }

  getMarcas() {
    return this.http.get(`${this.API_URL}/api/marcas`);
  }

  getTipos() {
    return this.http.get(`${this.API_URL}/api/tipos`);
  }

  getTiposT() {
    return this.http.get(`${this.API_URL}/api/tipost`);
  }
}
