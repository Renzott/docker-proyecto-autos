import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './components/home/home.component';
import { ArticleComponent } from './components/article/article.component';
import { NewBlogComponent } from './components/new-blog/new-blog.component';
import { HttpClientModule } from '@angular/common/http';
import { BlogService } from './services/blog.service';
import { QuillModule } from 'ngx-quill';
import { FormsModule } from '@angular/forms';
import { CommonModule, DatePipe } from '@angular/common';
import { TipoComponent } from './components/tipo/tipo.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    ArticleComponent,
    NewBlogComponent,
    TipoComponent,
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    QuillModule.forRoot(),
    FormsModule,
    CommonModule,
    HttpClientModule
  ],
  providers: [BlogService,DatePipe],
  bootstrap: [AppComponent]
})
export class AppModule { }
