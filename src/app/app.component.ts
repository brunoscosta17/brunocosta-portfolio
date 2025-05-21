import { CommonModule } from '@angular/common';
import { Component, inject, Renderer2 } from '@angular/core';
import { RouterModule, RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  imports: [CommonModule, RouterModule, RouterOutlet],
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {

  private renderer = inject(Renderer2);

  title = 'brunocosta-portfolio';
  isDarkMode = false;
  isMenuOpen = false;

  toggleDarkMode() {
    this.isDarkMode = !this.isDarkMode;

    const body = document.body;

    if (this.isDarkMode) {
      body.classList.add('dark-mode');
    } else {
      body.classList.remove('dark-mode');
    }
  }

  toggleMenu() {
    this.isMenuOpen = !this.isMenuOpen;
  }
}
