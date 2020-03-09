import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { ActorListComponent } from './actor-list/actor-list.component';
import { FilmDetailsComponent } from './actor-details/film-details.component';

@NgModule({
  declarations: [
    AppComponent,
    ActorListComponent,
    FilmDetailsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
