<!DOCTYPE html>
<html>
<body>
<%@include file="navbar.jsp"%>

<div class="container" style="margin-top: 60px; text-align: center">
    <h1>Hello <%=currentUser.getFullName()%></h1>
    <p>This is your profile page</p>
    <a class="btn btn-primary" href="/logout">Logout</a>
</div>

</body>
</html>
