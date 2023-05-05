<%@ page import="com.javaee.bitlab.database.models.Item" %>
<html>
<body>
<%@include file="navbar.jsp"%>

<div>
    <%
        Item item = (Item) request.getAttribute("item");
    %>
    <div style="display: flex; justify-content: center">
        <div style="width: 60%; margin-top: 5px">
            <form action="/details" method="post">
                <div class="form-group" style=" margin-top: 20px">
                    <label> Name:
                        <input style="width: 600px" class="form-control" name="name" type="text"
                               value="<%=item.getName()%>">
                    </label>
                </div>
                <div class="form-group" style=" margin-top: 20px">
                    <label> Description:
                        <textarea class="form-control" name="description" id="" cols="75"
                                  rows="4"><%=item.getDescription()%></textarea>
                    </label>
                </div>
                <div class="form-group" style=" margin-top: 20px">
                    <label> Deadline:
                        <input style="width: 600px" class="form-control" name="price" type="number"
                               value="<%=item.getPrice()%>">
                    </label>
                </div>

                <input type="hidden" name="id" value="<%=item.getId()%>">
                <button class="btn btn-success">save</button>
            </form>
            <form action="/delete" method="post">
                <input type="hidden" name="id" value="<%=item.getId()%>">
                <button class="btn btn-danger">delete</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
