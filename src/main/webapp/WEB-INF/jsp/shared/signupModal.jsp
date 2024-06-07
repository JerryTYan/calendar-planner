<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modalSignin" tabindex="-1" aria-labelledby="modalSigninLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content rounded-4 shadow">
      <div class="modal-header p-5 pb-4 border-bottom-0">
        <h1 class="fw-bold mb-0 fs-2" id="modalSigninLabel">Sign up for free</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body p-5 pt-0">
        <form id="signupForm" novalidate onsubmit="return validateSignupForm()">
          <div class="form-floating mb-3">
            <input type="email" class="form-control rounded-3" id="floatingInput" placeholder="name@example.com" required>
            <label for="floatingInput">Email address</label>
            <div class="invalid-feedback">Please enter a valid email address.</div>
          </div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control rounded-3" id="floatingPassword" placeholder="Password" required>
            <label for="floatingPassword">Password</label>
            <div class="invalid-feedback">Please enter your password.</div>
          </div>
          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Sign up</button>
          <small class="text-body-secondary">By clicking Sign up, you agree to the terms of use.</small>
          <small class="text-body-secondary d-block mt-3">Have an account? <a href="#" data-bs-toggle="modal" data-bs-target="#modalLogin" data-bs-dismiss="modal">Sign in instead</a></small>
        </form>
      </div>
    </div>
  </div>
</div>