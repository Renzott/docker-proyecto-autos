import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Blog } from 'src/app/models/Blog.model';
import { BlogService } from 'src/app/services/blog.service';

@Component({
  selector: 'app-tipo',
  templateUrl: './tipo.component.html',
  styleUrls: ['./tipo.component.css']
})
export class TipoComponent implements OnInit {

  blogs: Blog[] = [];
  result:any;
  tipo:String;

  constructor(private blogService: BlogService,private route: ActivatedRoute) { }

  ngOnInit(): void {

    this.blogService.getBlogs().subscribe(res => {
      this.result = res;
      this.blogs = this.result.response as Blog[]
      this.tipo = this.route.snapshot.params["tipo"];
      this.blogs = this.blogs.filter(x => x.tipo.descripcion == this.tipo)
      console.log(this.blogs)
  },console.log)
  }

}
