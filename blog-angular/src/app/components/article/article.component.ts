import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { BlogService } from 'src/app/services/blog.service';
import { Blog } from '../../models/Blog.model';
import { Comentario } from '../../models/Comentario.model';

@Component({
  selector: 'app-article',
  templateUrl: './article.component.html',
  styleUrls: ['./article.component.css']
})
export class ArticleComponent implements OnInit {

  id: string;
  blog: Blog = {
    texto: '<h1 class="ql-align-center">Loading...</h1>'
  };
  result: any;

  comentario?: Comentario = {
    nombre: "",
    correo: "",
    comentario: ""
  };

  comentarioList: Comentario[] = [
    {
      nombre: "",
      correo: "",
      comentario: ""
    }
  ];

  constructor(private route: ActivatedRoute, private blogService: BlogService) { }

  ngOnInit(): void {

    this.id = this.route.snapshot.params["id"];
    this.blogService.getBlog(this.id).subscribe( res => {
      this.result = res;
      this.blog = this.result.response as Blog
      this.comentarioList = this.blog.comentarioList;
    },err => console.log(err))

  }

  saveComentario(): void{
    this.blogService.setComentario(this.id,this.comentario).subscribe(console.log,console.log)
    this.comentarioList = [...this.comentarioList,this.comentario]
    this.comentario = {
      nombre: "",
      correo: "",
      comentario: ""
    };
  }

}
