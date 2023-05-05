<!DOCTYPE html>
<html>
<body>
<%@include file="navbar.jsp"%>


<div class="container" style="margin-top: 60px">
    <div  class="login">
        <div class="card bg-light mb-3" style="max-width: 46rem;box-shadow: 2px 2px 2px 2px rgba(0.6, 0.6, 0.6, 0.6);">
            <div class="card-header">
                <h3>ADD ITEM</h3>
            </div>
            <form method="post" action="/add_item" class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">name :</label>
                    <input required type="text" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp"
                           placeholder="name">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Description :</label>
                    <input required type="text" name="description" class="form-control" id="exampleInputPassword1" placeholder="Description">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail3">Price :</label>
                    <input required type="number" name="price" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp"
                           placeholder="Price">
                </div>
                <button class="btn btn-success" type="submit" style="margin-top: 10px">submit</button>
            </form>
        </div>

    </div>
</div>
</body>
</html>