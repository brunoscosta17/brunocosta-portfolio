import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'app-projects',
  imports: [CommonModule],
  templateUrl: './projects.component.html',
  styleUrls: ['./projects.component.scss']
})
export class ProjectsComponent {

  projects = [
    { name: 'CRUD Angular', framework: 'Angular', url: 'https://angular-crud.netlify.app' },
    { name: 'CRUD React', framework: 'React (Next.js)', url: 'https://next-crud.vercel.app' },
    { name: 'CRUD Vue', framework: 'Vue.js', url: 'https://vue-crud.netlify.app' }
  ];

}
