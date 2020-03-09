import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { FilmDetailsComponent } from './actor-details/film-details.component';
import { ActorListComponent } from './actor-list/actor-list.component';

const routes: Routes = [
  { path: 'actors', component: ActorListComponent },
  {path: '', redirectTo: 'actors', pathMatch: 'full' },
  { path: 'actors/:id', component: FilmDetailsComponent }
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
