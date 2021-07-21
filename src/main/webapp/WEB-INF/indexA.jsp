<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      
 <style>
      
      .modal,.updateMo ,.delete{
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    z-index:99999;
    }

    /* Modal Content */
    .modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 40%;
    }

    /* The Close Button */
    .cl,.cl1,.cl2 {
    color: #aaaaaa;
    float:right;
    margin-left:97%;
    font-size: 28px;
    font-weight: bold;
    }

    .cl:hover,
    .cl:focus, .cl1:hover,
    .cl1:focus, .cl2:hover,
    .cl2:focus {
    color: red;
    text-decoration: none;
    cursor: pointer;
    }

</style>
</head>
<body>
         <div><c:import url="includes/preload.jsp">
          </c:import></div>
  <div id="pcoded" class="pcoded">
      <div class="pcoded-overlay-box"></div>
      <div class="pcoded-container navbar-wrapper">
      
          <div><c:import url="includes/navbarre.jsp">
          </c:import></div>
          
          <div class="pcoded-main-container">
              <div class="pcoded-wrapper">
              
          <div><c:import url="includes/sidebarre.jsp">
          </c:import></div>
          
                  <div class="pcoded-content">
                      <!-- Page-header start -->
                      <div class="page-header">
                          <div class="page-block">
                              <div class="row align-items-center">
                                  <div class="col-md-8">
                                      <div class="page-header-title">
                                          <h5 class="m-b-10">Admin Panel</h5>
                                          <p class="m-b-0">Welcome Fatima Ibrahym</p>
                                      </div>
                                  </div>
                                  <div class="col-md-4">
                                      <ul class="breadcrumb-title">
                                          <li class="breadcrumb-item">
                                              <a href="index.html"> <i class="fa fa-home"></i> </a>
                                          </li>
                                          <li class="breadcrumb-item"><a href="#!">Customers</a>
                                          </li>
                                      </ul>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <div class="row">

                                            <!--  project and team member start -->
                                            <div class="col-xl-12 col-md-12">
                                                <div class="card table-card">
                                                    <div class="card-header">
                                                        <h5>All Cuctomers </h5>
                                                        <div class="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="table-responsive">
                                                        <button id="myBtn" type="button" style="float:right; " class="btn btn-primary"><i class="fa fa-plus"></i>Add Customer</button>
                                                            <table class="table table-hover">
                                                                <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Last Name</th>
                                                                    <th>First Name</th>
                                                                    <th>Email</th>
                                                                    <th>Phone</th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="cl">&times;</span>
    <h3>Add Customer</h3>
    <form  method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Last name</label>
    <input type="text" class="form-control" name="nom" placeholder="Enter last name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">First name</label>
    <input type="text" class="form-control" name="prenom"  placeholder="Enter first name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Phone</label>
    <input type="text" class="form-control" name="tel" placeholder="Enter phone ">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
    <input type="text" class="form-control" name="email" placeholder="Enter Email ">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="passWord" class="form-control" name="pass"  placeholder="Enter password">
  </div>
  <button type="submit" name="ajouter" class="add0 btn btn-primary">Add</button>
</form>
</div>
</div>
<!--update -->

<div id="updateMo" class="modal">

<div class="modal-content">
    <span class="cl1">&times;</span>
    <h3>Update Customer</h3>
    <form  method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Last name</label>
    <input type="text" class="form-control" id="nom" name="nm" >
    <input style="display:none;" type="text" class="form-control" id="id" name="id" >

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">First name</label>
    <input type="text" class="form-control" id="prenom" name="pr"  >
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Phone</label>
    <input type="text" class="form-control" id="tel" name="tl" >
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
    <input type="text" class="form-control" id="email" name="em" >
  </div>
 
  <button type="submit" name="modifier" class="add0 btn btn-primary">Save</button>
</form>
</div>
</div>
<div id="delete" class="modal">

<div class="modal-content">
    <span class="cl2">&times;</span>
    <h3>Delete customer</h3>
    <h4>Are you sure you want to delete this customer ? </h4>
    <form method="post">
    <input type="text"  id="idd" name="idd"/>
<br>
    <input type="submit" class="btn btn-danger" value="delete" name="delete"/>
    </form>
</div>
</div>     
                                                    </div>
                                                </div>
                                            </div>
                                            <!--  project and team member end -->
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("cl")[0];
       /* var bt=document.getElementsByClassName('add0')[0];
        bt.onclick = function() {
        modal.style.display = "none";
        }*/

        // When the user clicks the button, open the modal 
        btn.onclick = function() {
        modal.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
        modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
        }


        function updateC(id,nom,prenom,email,tel){
            var m1 = document.getElementById("updateMo");
            document.getElementById("nom").setAttribute("value",nom);
            document.getElementById("prenom").setAttribute("value",prenom);
            document.getElementById("email").setAttribute("value",email);
            document.getElementById("tel").setAttribute("value",tel);
            document.getElementById("id").setAttribute("value",id);

            m1.style.display = "block";

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("cl1")[0];
            
            span.onclick = function() {
                m1.style.display = "none";
            }

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
            if (event.target == m1) {
                m1.style.display = "none";
            }
            }

        }
        function deleteU(id){
            var m2 = document.getElementById("delete");
           document.getElementById("idd").setAttribute("value",id);
           document.getElementById("idd").style.display="none"; 
            m2.style.display = "block";

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("cl2")[0];
            
            span.onclick = function() {
                m2.style.display = "none";
            }

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
            if (event.target == m2) {
                m2.style.display = "none";
            }
            }
        }
</script>
</body>
</html>