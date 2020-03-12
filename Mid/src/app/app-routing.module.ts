import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ActorDetailsComponent } from './actor-details/actor-details.component';
import { ActorListComponent } from './actor-list/actor-list.component';

const routes: Routes = [
  { path: 'actors', component: ActorListComponent },
  {path: '', redirectTo: 'actors', pathMatch: 'full' },
  { path: 'actors/:id', component: ActorDetailsComponent }
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
