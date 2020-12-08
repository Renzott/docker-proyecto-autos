import { DatePipe } from '@angular/common';
import { isNgTemplate } from '@angular/compiler';
import { Component, OnInit } from '@angular/core';
import { EditorChangeContent, EditorChangeSelection } from 'ngx-quill';
import { BlogService } from 'src/app/services/blog.service';

@Component({
  selector: 'app-new-blog',
  templateUrl: './new-blog.component.html',
  styleUrls: ['./new-blog.component.css']
})
export class NewBlogComponent implements OnInit {

  htmlstring: string = " "

  blog: any = {
    codigo: "",
    titulo: "",
    fecha: new Date(),
    tipo:{
      codigo: 1,
      descripcion: "Noticias",
    },
    foto: "",
    texto: "",
  }

  tipos: any[] = [
    {
      _id: 1,
      descripcion: 'Noticias',
    },
    {
      _id: 2,
      descripcion: 'Consejos',
    }
  ]

  constructor(private blogService: BlogService,public datepipe: DatePipe) { }

  ngOnInit(): void {
    this.blogService.getBlogs().subscribe(
      res => {
        console.log(res)
      },
      err => console.log(err)
    )
  }

  changedEditor(event: EditorChangeContent){
    if(event.html != undefined)
      this.htmlstring = event.html
  }

  saveBlog(){
    if(this.blog.tipo == "1"){
      this.blog.tipo = {
        codigo: 1,
        descripcion: 'Noticias',
      }
    }else{
      this.blog.tipo = {
        codigo: 2,
        descripcion: 'Consejos',
      }
    }

    this.blog.texto = this.htmlstring

    this.blog.fecha = this.datepipe.transform(this.blog.fecha,'y/MM/dd HH:mm')

    this.blogService.setBlog(this.blog).subscribe(res => {
      console.log(res),
      err => console.log(err) 
    })
  }

}
