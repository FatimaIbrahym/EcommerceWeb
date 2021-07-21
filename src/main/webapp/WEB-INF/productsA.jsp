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
    width: 60%;
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
<script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<style type="text/css">
.file-upload {
  background-color: #ffffff;
  width: 70%;
  margin: 0 auto;
  padding: 20px;
}

.file-upload-btn {
  width: 100%;
  margin: 0;
  color: #fff;
  background: #0275d8;
  border: none;
  padding: 10px;
  border-radius: 4px;
  border-bottom: 4px solid #0275d8;
  transition: all .2s ease;
  outline: none;
  text-transform: uppercase;
  font-weight: 700;
}

.file-upload-btn:hover {
 
  transition: all .2s ease;
  cursor: pointer;
}

.file-upload-btn:active {
  border: 0;
  transition: all .2s ease;
}

.file-upload-content {
  display: none;
  text-align: center;
}

.file-upload-input {
  position: absolute;
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100%;
  outline: none;
  opacity: 0;
  cursor: pointer;
}

.image-upload-wrap {
  margin-top: 20px;
  border: 4px dashed #0275d8;
  position: relative;
}



.image-title-wrap {
  padding: 0 15px 15px 15px;
  color: #222;
}

.drag-text {
  text-align: center;
}

.drag-text h3 {
  font-weight: 100;
  text-transform: uppercase;
  color: #0275d8;
  padding: 60px 0;
}

.file-upload-image {
  max-height: 200px;
  max-width: 200px;
  margin: auto;
  padding: 20px;
}

.remove-image {
  width: 200px;
  margin: 0;
  color: #fff;
  background: #d9534f;
  border: none;
  padding: 10px;
  border-radius: 4px;
  border-bottom: 4px solid #b02818;
  transition: all .2s ease;
  outline: none;
  text-transform: uppercase;
  font-weight: 700;
}

.remove-image:hover {
  background: #c13b2a;
  color: #ffffff;
  transition: all .2s ease;
  cursor: pointer;
}

.remove-image:active {
  border: 0;
  transition: all .2s ease;
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
                                          <li class="breadcrumb-item"><a href="#!">Products</a>
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
                                                        <h5>All Products </h5>
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
                                                        <button id="myBtn" type="button" style="float:right; " class="btn btn-primary"><i class="fa fa-plus"></i>Add Product</button>
                                                            <table class="table table-hover">
                                                                <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Name</th>
                                                                    <th>Price</th>
                                                                    <th>Quantity</th>
                                                                    <th>Image</th>
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
        <h3>Add product</h3>
        <div class="container">
            <form  method="post" enctype='multipart/form-data'>

            <div class="row">

                <div class="col-sm">
                    <br>
                    <div class="form-group">
                    <select onchange="changeA()" name="cat1" id="catA" class="form-select" aria-label="Default select example">
                            <option name="cat1" value="0" selected>Category</option>
 
                    </select>
                    <select  id="sousCatA" name="sousCatA" class="form-select" aria-label="Default select example">
                        <option name="sousCatA" value="0" selected>subCategory</option>
                                                                                        
                    </select>
                    </div>
                    <div class="form-group">
                        <label >Name</label>
                        <input type="text" class="form-control" name="nomP"  placeholder="Enter name">
                    </div>
                    <div class="form-group">
                        <label >Price :</label>
                        <input type="number" class="form-control"  name="prix" placeholder="Enter price ">
                    </div>
                    <div class="form-group">
                        <label >Quantity :</label>
                        <input type="number" class="form-control" name="qt" placeholder="Enter quantity ">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Description</label>
                        <textarea class="form-control" name="desciption" placeholder="description of product" rows="3"></textarea>

                    </div>
                    <div class="form-group">  
                    </div>
                    <button type="submit" name="addC" class="add0 btn btn-primary">Add</button>

                </div>
                <div class="col-sm">

					<div class="file-upload">
					  <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">Add a picture</button>
					
					  <div class="image-upload-wrap">
					    <input class="file-upload-input" type='file' name="file" onchange="readURL(this);" accept="image/*" />
					    <div class="drag-text">
					      <h3>Select a picture</h3>
					    </div>
					  </div>
					  <div class="file-upload-content">
					    <img class="file-upload-image" src="#" alt="your image" />
					    <div class="image-title-wrap">
					      <button type="button" onclick="removeUpload()" class="remove-image">Remove <span class="image-title">Uploaded Image</span></button>
					    </div>
					  </div>
					</div>
                        
                </div>
            </div>
         </form>

        </div>
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

<script>
function readURL(input) {
  if (input.files && input.files[0]) {

    var reader = new FileReader();

    reader.onload = function(e) {
      $('.image-upload-wrap').hide();

      $('.file-upload-image').attr('src', e.target.result);
      $('.file-upload-content').show();

      $('.image-title').html(input.files[0].name);
    };

    reader.readAsDataURL(input.files[0]);

  } else {
    removeUpload();
  }
}

function removeUpload() {
  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
  $('.file-upload-content').hide();
  $('.image-upload-wrap').show();
}
$('.image-upload-wrap').bind('dragover', function () {
		$('.image-upload-wrap').addClass('image-dropping');
	});
	$('.image-upload-wrap').bind('dragleave', function () {
		$('.image-upload-wrap').removeClass('image-dropping');
});

</script>
</body>
</html>