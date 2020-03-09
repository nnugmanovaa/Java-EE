import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { actors } from './actor';

@Injectable({
  providedIn: 'root'
})
export class ActorsService {

  constructor() { }

  public getActors(): Observable<any>{
      return of(actors);
  }
}
