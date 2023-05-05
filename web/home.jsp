<%@ page import="java.util.ArrayList" %>
<%@ page import="com.javaee.bitlab.database.models.Item" %>
<!DOCTYPE html>
<html>
<body>
<%@include file="navbar.jsp"%>

<div class="container" style="margin-top: 60px">
    <%ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");%>
    <div class="content">
        <div class="main-text">
            <center>
                <div><h1>Welcome TO BITLAB SHOP</h1></div>
                <div><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></div>
            </center>
        </div>
        <div class="main-items">
            <div class="items">
                <% for (Item item : items) {%>
                <div class="card bg-light mb-3 product">
                    <div class="card-header">
                        <center><h2><%=item.getName()%>
                        </h2></center>
                    </div>
                    <div class="card-body">
                        <center>
                            <h3 class="card-title"><%=item.getPrice()%>$</h3>
                            <div><%=item.getDescription()%>
                            </div>
                        </center>
                        <a href="/details?id=<%=item.getId()%>" class="btn btn-success"
                           style="width: 16rem;margin-top: 10px">Buy Now</a>
                    </div>
                </div>
                <%}%>
            </div>

        </div>
    </div>
</div>
</body>
</html>