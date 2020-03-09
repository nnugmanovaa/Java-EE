import { Component, OnInit } from '@angular/core';
import { ActorsService} from '../actors.service';
import { ActivatedRoute } from '@angular/router';
import { actors} from '../actor';
import { Location } from '@angular/common';

@Component({
  selector: 'app-actor-details',
  templateUrl: './film-details.component.html',
  styleUrls: ['./film-details.component.css']
})
export class FilmDetailsComponent implements OnInit {

  actor;
  private location: Location;

  constructor(private route: ActivatedRoute) { }

  getProduct() {
    this.route.paramMap.subscribe(params => {
      this.actor = actors[+params.get('id')];
    });
  }

  ngOnInit(): void {
    this.getProduct();
  }

}
