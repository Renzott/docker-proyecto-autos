import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BusquedaComponent } from './components/busqueda/busqueda.component';
import { HomeComponent } from './components/home/home.component';
import { RegusuarioeventoComponent } from './components/regusuarioevento/regusuarioevento.component';

const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'busqueda',
    component: BusquedaComponent
  },
  {
    path: 'registroEvento',
    component: RegusuarioeventoComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
