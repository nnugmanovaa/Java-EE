import { Component } from '@angular/core';
import { ActorsService } from './actors.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [ActorsService]
})
export class AppComponent {
  title = 'Mid';
}
