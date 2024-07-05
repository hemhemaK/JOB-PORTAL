<?php
session_start();
$con=mysqli_connect("localhost","root","","project");
if(isset($_POST['submit'])){
	$email=$_POST['email'];
	$password=$_POST['password2'];
	$query="select * from user where email='$email' and password='$password';";
	$result=mysqli_query($con,$query);
	if(mysqli_num_rows($result)==1)
	{
		while($row=mysqli_fetch_array($result,MYSQLI_ASSOC)){
      $_SESSION['id'] = $row['id'];
      $_SESSION['username'] = $row['fname']." ".$row['lname'];
      $_SESSION['fname'] = $row['fname'];
      $_SESSION['lname'] = $row['lname'];
      $_SESSION['gender'] = $row['gender'];
      $_SESSION['contact'] = $row['contact'];
      $_SESSION['email'] = $row['email'];
    }
$_SESSION['login']=$_POST['email'];
echo "<script type='text/javascript'> document.location = 'http://localhost/project/job/job-list.php'; </script>";
} else{
	
	echo "<script>alert('Invalid Details');</script>";


}

}
?>