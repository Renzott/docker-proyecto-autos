import { Component, OnInit } from '@angular/core';
import { Auto } from 'src/app/model/auto';
import { AutoService } from 'src/app/services/auto.service';

@Component({
  selector: 'app-busqueda',
  templateUrl: './busqueda.component.html',
  styleUrls: ['./busqueda.component.css']
})
export class BusquedaComponent implements OnInit {

  marcas: any = [];
  autos: Array<Auto> = [];
  carrocerias: any = [];
  tipos: any = [];
  tipost: any = [];

  constructor(private AutoService: AutoService) { }

  ngOnInit(): void {
    this.getMarcas();
    this.getAutos();
    this.getCarrocerias();
    this.getTipos();
    this.getTiposT();
  }

  getMarcas() {
    this.AutoService.getMarcas()
      .subscribe(
        res => {
          this.marcas = res;
        },
        err => console.error(err)
      );
  }

  getAutos() {
    this.AutoService.getAutos()
      .subscribe(
        res => {
          this.autos = res;
        },
        err => console.error(err)
      );
  }

  getAutoModelo(modelo:String) {
    this.AutoService.getAutos()
      .subscribe(
        res => {
          this.autos = res.filter(item => {
            if (item.modelooAuto.toLowerCase().includes(modelo.toLowerCase())) {
              return true;
            } else {
              return false;
            }
          });
          console.log(this.autos)
        },
        err => console.error(err)
      );
  }

  getAutoMarca(marca:String) {
    this.AutoService.getAutos()
      .subscribe(
        res => {
          this.autos = res.filter(item => {
            if (item.marcaAuto.codigoMarcaAuto == marca) {
              return true;
            } else {
              return false;
            }
          });
        },
        err => console.error(err)
      );
  }

  getAutoTipo(tipo:String) {
    this.AutoService.getAutos()
      .subscribe(
        res => {
          this.autos = res.filter(item => {
            if (item.tipoAuto.codigoTipoAuto == tipo) {
              return true;
            } else {
              return false;
            }
          });
        },
        err => console.error(err)
      );
  }

  getAutoCarroceria(carroceria:String) {
    this.AutoService.getAutos()
      .subscribe(
        res => {
          this.autos = res.filter(item => {
            if (item.carroceria.codigoCarroceria == carroceria) {
              return true;
            } else {
              return false;
            }
          });
        },
        err => console.error(err)
      );
  }

  getAutoTipoT(tipoT:String) {
    this.AutoService.getAutos()
      .subscribe(
        res => {
          this.autos = res.filter(item => {
            if (item.tipoTransmision.codigoTipoTransmision == tipoT) {
              return true;
            } else {
              return false;
            }
          });
        },
        err => console.error(err)
      );
  }
  
  getCarrocerias() {
    this.AutoService.getCarrocerias()
      .subscribe(
        res => {
          this.carrocerias = res;
        },
        err => console.error(err)
      );
  }
  
  getTipos() {
    this.AutoService.getTipos()
      .subscribe(
        res => {
          this.tipos = res;
        },
        err => console.error(err)
      );
  }
  
  getTiposT() {
    this.AutoService.getTiposT()
      .subscribe(
        res => {
          this.tipost = res;
        },
        err => console.error(err)
      );
  }
}
