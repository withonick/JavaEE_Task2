<!DOCTYPE html>
<html>
<body>
<%@include file="navbar.jsp"%>

<%
    String error = (String) request.getAttribute("error");
    if (error != null){
%>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong>error</strong>  <%=error%>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<%}%>

<div class="container" style="margin-top: 60px">
    <form action="/login" method="post" class="login">
        <div class="card bg-light mb-3">
            <div class="card-header">
                <h3>LOGIN PAGE</h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email :</label>
                    <input required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                          name="email" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password :</label>
                    <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <button class="btn btn-success" style="margin-top: 10px">login</button>
            </div>
        </div>

    </form>
</div>
</div>

</body>
</html>