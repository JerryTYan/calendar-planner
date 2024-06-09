<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="p-3 text-bg-light fixed-top">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-between">
            <div class="d-flex align-items-center">
                <button class="btn btn-outline-secondary me-2" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
                    <img src="<%= request.getContextPath() %>/images/menu_icon.svg" alt="Menu Icon" width="24" height="24"> <!-- Custom icon for hamburger menu -->
                </button>
                <a href="<%= request.getContextPath() %>/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                    <img src="<%= request.getContextPath() %>/images/calendar_logo.png" alt="Calendar Logo" width="240" height="50" class="mx-4 mb-3">
                </a>
            </div>
            <div class="ms-auto">
                <button type="button" class="btn btn-outline-secondary me-2" data-bs-toggle="modal" data-bs-target="#modalLogout">Logout</button>
            </div>
        </div>
    </div>
</header>
