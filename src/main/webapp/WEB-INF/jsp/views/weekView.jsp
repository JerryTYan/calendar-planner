<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calendar Planner</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/site.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/vendor/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body style="padding-top: 130px;">
    <%@ include file="/WEB-INF/jsp/shared/headerLogout.jsp" %>
    <%@ include file="/WEB-INF/jsp/shared/sidebar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center">Weekly Calendar</h2>
                <br>
                <table class="table table-bordered table-responsive">
                    <thead>
                        <tr>
                            <th scope="col" class="text-center" style="width: 12.5%;">Time</th>
                            <th scope="col" class="text-center" style="width: 12.5%;">Sunday</th>
                            <th scope="col" class="text-center" style="width: 12.5%;">Monday</th>
                            <th scope="col" class="text-center" style="width: 12.5%;">Tuesday</th>
                            <th scope="col" class="text-center" style="width: 12.5%;">Wednesday</th>
                            <th scope="col" class="text-center" style="width: 12.5%;">Thursday</th>
                            <th scope="col" class="text-center" style="width: 12.5%;">Friday</th>
                            <th scope="col" class="text-center" style="width: 12.5%;">Saturday</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (int hour = 0; hour < 24; hour++) {
                                String timeLabel = String.format("%02d:00", hour);
                        %>
                        <tr>
                            <th scope="row" class="text-center"><%= timeLabel %></th>
                            <td>&nbsp;<input type="text"></td>
                            <td>&nbsp;<input type="text"></td>
                            <td>&nbsp;<input type="text"></td>
                            <td>&nbsp;<input type="text"></td>
                            <td>&nbsp;<input type="text"></td>
                            <td>&nbsp;<input type="text"></td>
                            <td>&nbsp;<input type="text"></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="<%= request.getContextPath() %>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <%@ include file="/WEB-INF/jsp/shared/footer.jsp" %>
</body>
</html>
