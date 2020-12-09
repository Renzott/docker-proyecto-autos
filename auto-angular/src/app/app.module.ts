import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { HomeComponent } from './components/home/home.component';

import { AutocompleteLibModule } from 'angular-ng-autocomplete';
import { BusquedaComponent } from './components/busqueda/busqueda.component';
import { BlogService } from './services/blog.service';
import { HttpClientModule } from '@angular/common/http';
import { AutoService } from './services/auto.service';
import { RegusueventoService } from './services/regusuevento.service';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    BusquedaComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    AutocompleteLibModule,
    HttpClientModule
  ],
  providers: [BlogService,AutoService,RegusueventoService],
  bootstrap: [AppComponent]
})
export class AppModule { }
