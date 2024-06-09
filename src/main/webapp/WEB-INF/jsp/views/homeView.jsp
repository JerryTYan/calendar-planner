<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/shared/header.jsp" %>
<%@ include file="/WEB-INF/jsp/shared/signupModal.jsp" %>
<%@ include file="/WEB-INF/jsp/shared/loginModal.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calendar Planner</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/site.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css">
</head>
<body style="padding-top: 70px;">
  <div class="px-4 pt-5 my-5 text-center border-bottom">
    <div class="col-lg-6 mx-auto">
      <h1 class="display-4 fw-bold text-body-emphasis">
        <span id="text"></span><span class="caret"></span>
      </h1>
      <p class="lead my-4">Easily plan, organize, and create. Keep track of your important events and manage your schedules effortlessly.
      Whether for personal use, family planning, or business meetings, our calendar app provides the tools you need to stay on top of your tasks and appointments.
      Enjoy customizable views and real-time updates to keep your plans up-to-date.</p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5">
        <button type="button" class="btn btn-primary btn-lg px-4 me-sm-3" data-bs-toggle="modal" data-bs-target="#modalSignin">Get started</button>
        <button type="button" class="btn btn-outline-secondary btn-lg px-4" data-bs-toggle="modal" data-bs-target="#modalLogin">Login</button>
      </div>
    </div>
    <div class="overflow-hidden" style="max-height: 35vh;">
      <div class="container px-5">
        <img src="<%= request.getContextPath() %>/images/calendar_screenshot.png" class="img-fluid border rounded-3 shadow-lg mb-4" alt="Example image" width="700" height="500" loading="lazy">
      </div>
    </div>
  </div>
  <script src="<%= request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<%= request.getContextPath() %>/js/scripts.js"></script>
<%@ include file="/WEB-INF/jsp/shared/footer.jsp" %>
</body>
</html>
