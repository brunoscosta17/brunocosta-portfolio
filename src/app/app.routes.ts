import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    path: '',
    loadComponent: () =>
      import('./features/home/pages/home/home.component').then(m => m.HomeComponent),
    title: 'Home'
  },
  {
    path: 'projects',
    loadComponent: () =>
      import('./features/projects/pages/projects/projects.component').then(m => m.ProjectsComponent),
    title: 'Projects'
  },
  {
    path: 'contact',
    loadComponent: () =>
      import('./features/contact/pages/contact/contact.component').then(m => m.ContactComponent),
    title: 'Contact'
  },
  { path: '**', redirectTo: '' }
];
