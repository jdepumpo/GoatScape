import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const login_container = document.getElementById('login_container');
    const signUpForm = document.querySelector('.sign-up-container');
    const signInForm = document.querySelector('.sign-in-container');

    signUpButton.addEventListener('click', () => {
      login_container.classList.add("right-panel-active");
      signInForm.classList.add("d-none");
      signUpButton.classList.add("d-none");
    });

    signInButton.addEventListener('click', () => {
      login_container.classList.remove("right-panel-active");
    });
  }

}
