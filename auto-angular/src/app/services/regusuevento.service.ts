import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { RegUsuarioEvento } from '../model/regusuevento';


@Injectable({
  providedIn: 'root'
})
export class RegusueventoService {

  API_URI = 'http://localhost:8080/ProyectoAutosClasicos/api/usuarioeventos'


  constructor(private http: HttpClient) { }


  registrarUsuarioEvento(usuariovento: RegUsuarioEvento){

    return this.http.post(`${this.API_URI}`, usuariovento)
  }

}
