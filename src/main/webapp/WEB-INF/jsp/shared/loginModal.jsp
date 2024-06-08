<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="modalLogin" tabindex="-1" aria-labelledby="modalLoginLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content rounded-4 shadow">
      <div class="modal-header p-5 pb-4 border-bottom-0">
        <h1 class="fw-bold mb-0 fs-2" id="modalLoginLabel">Sign in to your account</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body p-5 pt-0">
        <form id="loginForm" action="<%= request.getContextPath() %>/login" method="post" novalidate>
          <div class="form-floating mb-3">
            <input type="email" class="form-control rounded-3" id="loginEmail" name="loginEmail" placeholder="name@example.com" required>
            <label for="loginEmail">Email address</label>
            <div class="invalid-feedback">Please enter a valid email address.</div>
          </div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control rounded-3" id="loginPassword" name="loginPassword" placeholder="Password" required>
            <label for="loginPassword">Password</label>
            <div class="invalid-feedback">Please enter your password.</div>
          </div>
          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Sign in</button>
          <small class="text-body-secondary d-block mt-3">Don't have an account? <a href="#" data-bs-toggle="modal" data-bs-target="#modalSignin" data-bs-dismiss="modal">Sign up instead</a></small>
        </form>
      </div>
    </div>
  </div>
</div>
