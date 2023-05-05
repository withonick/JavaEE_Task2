<!DOCTYPE html>
<html>
<body>
<%@include file="navbar.jsp"%>

<div class="container" style="margin-top: 60px">
    <%
        String error = (String) request.getAttribute("error");
        String email = (String) request.getAttribute("email");
        String fullName = (String) request.getAttribute("fullName");
        if (error != null){
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>error</strong>  <%=error%>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <%}%>
    <form method="post" action="/register" class="login">
        <div class="card bg-light mb-3">
            <div class="card-header">
                <h3>REGISTER PAGE</h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email :</label>
                    <input  <%if (email != null){%>value="<%=email%>"<%}%> name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                           placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password :</label>
                    <input name="password" type="password" class="form-control" id="exampleInputPassword1"
                           placeholder="enter Password">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword5">Re-enter password :</label>
                    <input name="password2" type="password" class="form-control" id="exampleInputPassword5"
                           placeholder="repeat Password">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail3">Full Name :</label>
                    <input  <%if (fullName != null){%>value="<%=fullName%>" <%}%> name="fullName" type="text" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp"
                           placeholder="Enter full name">
                </div>
                <button class="btn btn-success" style="margin-top: 10px">register</button>
            </div>
        </div>

    </form>
</div>
</div>
</body>
</html>
