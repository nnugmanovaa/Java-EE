import { Component, OnInit } from '@angular/core';
import { ActorsService} from '../actors.service';

@Component({
  selector: 'app-actor-list',
  templateUrl: './actor-list.component.html',
  styleUrls: ['./actor-list.component.css']
})
export class ActorListComponent implements OnInit {

  public actors: Array<any>;

  constructor(private actorService: ActorsService) {
    actorService.getActors().subscribe(actors=>this.actors = actors);
 }

  ngOnInit(): void {
  }

}
