let textBase = "Calendar for ";
let jobs = ["you", "groups", "business", "families", "everyone"];
let jobIdx = 0;
let i = 0;
let reverse = false;

function typeWriter() {
  var textJitter = Math.floor(Math.random() * (70 - 45) + 45);

  if (reverse) {
    if (document.getElementById("text").innerHTML.length > textBase.length) {
      document.getElementById("text").innerHTML = document
        .getElementById("text")
        .innerHTML.slice(0, -1);
      setTimeout(typeWriter, textJitter);
    } else {
      jobIdx = (jobIdx+1) % 2;
      reverse = false;
      setTimeout(typeWriter, 1000);
    }
  } else {
    if (i === (textBase + jobs[jobIdx]).length) {
      i = textBase.length;
      reverse = true;

      setTimeout(typeWriter, 3000);
    } else {
      if (i < (textBase + jobs[jobIdx]).length) {
        document.getElementById("text").innerHTML = document.getElementById("text").innerHTML + (
          textBase + jobs[jobIdx]
        ).charAt(i);
        i++;
        setTimeout(typeWriter, textJitter);
      }
    }
  }
}
typeWriter();

function validateLoginForm() {
    var email = document.getElementById('loginEmail');
    var password = document.getElementById('loginPassword');
    var isValid = true;

    if (!email.checkValidity()) {
      email.classList.add('is-invalid');
      isValid = false;
    } else {
      email.classList.remove('is-invalid');
      email.classList.add('is-valid');
    }

    if (!password.checkValidity()) {
      password.classList.add('is-invalid');
      isValid = false;
    } else {
      password.classList.remove('is-invalid');
      password.classList.add('is-valid');
    }

    return isValid;
}

function validateSignupForm() {
    var email = document.getElementById('floatingInput');
    var password = document.getElementById('floatingPassword');
    var isValid = true;

    if (!email.checkValidity()) {
      email.classList.add('is-invalid');
      isValid = false;
    } else {
      email.classList.remove('is-invalid');
      email.classList.add('is-valid');
    }

    if (!password.checkValidity()) {
      password.classList.add('is-invalid');
      isValid = false;
    } else {
      password.classList.remove('is-invalid');
      password.classList.add('is-valid');
    }

    return isValid;
}