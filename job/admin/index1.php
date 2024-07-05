<?php include 'filelogic.php';?>
<!DOCTYPE html>
<html lang="en">
  <head>
  <style>
  a{ 
	  text-decoration:none;
	  padding:10px;
	display:inline-box;
    border: 2px solid #E6E4E4;
	background:#000066;
  }
  .container{
	float:right;
	margin-right:400px;
	width:25%;
	display:inline-box;
    border: 2px solid #E6E4E4;
    padding: 3%;
    background:lightgray;
    border-radius: 5%;
	margin-top:10%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
 .container:hover{
    background-image:linear-gradient(white,grey);
 } 
.container h3{
    color: #000066;
    font-weight: 700;
    font-size: 25px;

}
.btn{
  background:#000066;
  color: #fff;
  border-radius:10px;
  font-size: 12px;
  border: none;
  width: 20%;
  -webkit-appearance:none;
  padding: 10px 15px;
  transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
 margin-top:40px;
 float:right;
}
.btn:hover {
	background:green;
}
input{
    width: 65%;
    padding: 10px;
	border-radius:10px;
    font-weight:600;
    background: none;
    border: 2px solid #E6E4E4;
    color: 	 #000000;
    outline: none;
    font-size: 14px;
    margin-top: 20px;
}
  </style>
    <link rel="stylesheet" href="timetablestyle.css">
    <title> Upload CV</title>
  </head>
  <body>
  <a href="http://localhost/project/job/job-list.php"><b><font size="5px" color="white">BACK</font></b><a>
    <div class="container">
      <div class="row">
        <form action="index1.php" method="post" enctype="multipart/form-data" >
          <h3>Upload File</h3>
          <input type="file" name="myfile"> <br>
          <button class="btn" type="submit" name="save">upload</button>
        </form>
      </div>
    </div>
  </body>
</html>