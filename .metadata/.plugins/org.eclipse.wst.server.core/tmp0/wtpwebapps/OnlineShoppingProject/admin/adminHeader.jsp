

<!DOCTYPE html>
<html>
<head>
<!--All the Utility CDN-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<!--All the Utility CDN-->

<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
 
</head>


    
    <!--Header-->
    <br>
    <div class="topnav sticky" style="font-family:Times New Roman">
    
    <% String email = session.getAttribute("email").toString(); %>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="messagesReceived.jsp"> Messages Received <i class='fas fa-comment-alt'></i></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="deliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
          </li>
        <li class="nav-item">
          <a class="nav-link" href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
        </li>
        </ul>
      </div>
    </nav>       

          </div>
           <br>
           <!--table-->

           

          <!--
          <h2 style="text-align:center">Online shopping (BTech Project)</h2>
          <a href="addNewProduct.jsp" class="btn btn-light text-danger">Add New Product <i class='fas fa-plus-square'></i></a>
          <a href="allProductEditProduct.jsp" class="btn btn-light text-danger">All Products & Edit Products <i class='fab fa-elementor'></i></a>
          <a href="messagesReceived.jsp" class="btn btn-light text-danger">Messages Received <i class='fas fa-comment-alt'></i></a>
          <a href="ordersReceived.jsp" class="btn btn-light text-danger">Orders Received <i class="fas fa-archive"></i></a>
          <a href="cancelOrders.jsp" class="btn btn-light text-danger">Cancel Orders <i class='fas fa-window-close'></i></a>
          <a href="deliveredOrders.jsp" class="btn btn-light text-danger">Delivered Orders <i class='fas fa-dolly'></i></a>
          <a href="../logout.jsp" class="btn btn-light text-danger">Logout <i class='fas fa-share-square'></i></a>-->