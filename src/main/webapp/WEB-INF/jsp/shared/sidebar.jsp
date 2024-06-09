<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="offcanvas offcanvas-start bg-dark text-white" tabindex="-1" id="offcanvasSidebar" aria-labelledby="offcanvasSidebarLabel" style="width: 300px;"> <!-- Adjust the width here -->
    <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasSidebarLabel">Calendar Views</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item mb-4">
                <a href="#" class="nav-link text-white">
                    <img src="<%= request.getContextPath() %>/images/home_icon.svg" alt="Home Icon" width="24" height="24" class="me-2">
                    Home
                </a>
            </li>
            <li class="nav-item mb-4">
                <a href="#" class="nav-link active" style="background-color: #495057; color: white;">
                    <img src="<%= request.getContextPath() %>/images/calendar_week.svg" alt="Week Icon" width="24" height="24" class="me-2">
                    Week
                </a>
            </li>
            <li class="nav-item mb-4">
                <a href="#" class="nav-link text-white">
                    <img src="<%= request.getContextPath() %>/images/calendar_month.svg" alt="Month Icon" width="24" height="24" class="me-2">
                    Month
                </a>
            </li>
            <li class="nav-item mb-4">
                <a href="#" class="nav-link text-white">
                    <img src="<%= request.getContextPath() %>/images/calendar_year.svg" alt="Year Icon" width="24" height="24" class="me-2">
                    Year
                </a>
            </li>
        </ul>
    </div>
</div>
