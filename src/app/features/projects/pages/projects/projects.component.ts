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
    { name: 'Angular', framework: 'Angular', url: 'https://brunoscosta17.github.io/UserAuthAngular' },
    { name: 'React', framework: 'React (Next.js)', url: 'https://brunocosta.tech/react' },
    { name: 'Vue', framework: 'Vue.js', url: 'https://brunoscosta17.github.io/UserAuthVue' }
  ];

}
