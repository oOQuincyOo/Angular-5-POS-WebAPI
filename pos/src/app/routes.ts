import { Routes } from '@angular/router';
import { RegisterComponent } from './register/register.component';
import { ShopComponent } from './shop/shop.component';
import { CheckoutComponent } from './checkout/checkout.component';
import { AuthGuard } from './auth/auth.guard';

export const appRoutes : Routes = [
  { path: 'register', component:RegisterComponent },
  { path: 'shop', component:ShopComponent, canActivate : [AuthGuard]},
  { path: 'checkout', component:CheckoutComponent, canActivate : [AuthGuard]},
  {path:'',redirectTo:'/register',pathMatch:'full'}
];