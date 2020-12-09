import { Component, OnInit } from '@angular/core';


import { Router, ActivatedRoute } from '@angular/router';
import { RegUsuarioEvento } from 'src/app/model/regusuevento';
import { RegusueventoService } from 'src/app/services/regusuevento.service';

@Component({
  selector: 'app-regusuarioevento',
  templateUrl: './regusuarioevento.component.html',
  styleUrls: ['./regusuarioevento.component.css']
})
export class RegusuarioeventoComponent implements OnInit {



  usuarioEvento: RegUsuarioEvento = {

    nroDocumentoUsuarioEvento: '',
    nombresUsuarioEvento: '',
    apellidosUsuarioEvento: '',
    fechaNacimientoUsuarioEvento: '',
    correoUsuarioEvento: '',
    codigoEventos: '',
  };


  constructor(private regUsuEve: RegusueventoService, private router: Router, private activatedRoute: ActivatedRoute) { }

  ngOnInit(): void {
  }


  saveNewUsuario() {

    console.log(this.usuarioEvento) 
    this.regUsuEve.registrarUsuarioEvento(this.usuarioEvento)
      .subscribe(
        res => {
          console.log(res);
        },
        err => console.error(err)
      )
  }



}
