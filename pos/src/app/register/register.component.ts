import { Component, OnInit } from '@angular/core';
import { ShopService } from '../shared/shop.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$";
  constructor(private shopService : ShopService,private route : Router) { }

  ngOnInit() {
  }

  OnSubmit(name:string,email:string){
    this.shopService.insertUser(name,email).subscribe(
      (data : any) =>{
        localStorage.clear();
        localStorage.setItem('user',JSON.stringify(data));
        this.route.navigate(['/shop']);
      }
    );
  }

}
