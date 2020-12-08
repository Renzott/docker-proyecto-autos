import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ArticleComponent } from './components/article/article.component';
import { HomeComponent } from './components/home/home.component';
import { NewBlogComponent } from './components/new-blog/new-blog.component';
import { TipoComponent } from './components/tipo/tipo.component';

const routes: Routes = [
  {
    path:'',
    component: HomeComponent
  },
  {
    path:'article/:id/:title',
    component: ArticleComponent
  },
  {
    path:'secret/newblog',
    component: NewBlogComponent
  },
  {
    path:'tipo/:tipo',
    component: TipoComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
