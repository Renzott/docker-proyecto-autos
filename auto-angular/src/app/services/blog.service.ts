import { Injectable } from '@angular/core';

import { HttpClient } from "@angular/common/http";


@Injectable({
  providedIn: 'root'
})
export class BlogService {

  API_URL = "http://classicfierros.rocks:8090/api/blog";

  constructor(private http: HttpClient) { }

  getBlogs(){
    return this.http.get(`${this.API_URL}`)
  }

  getBlog(id: string){
    return this.http.get(`${this.API_URL}${id}`)
  }

}
