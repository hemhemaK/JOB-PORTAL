<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Application Form</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   </head>
  <body>
    <div class="container">
         <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
               <h1><center>Application Form</center></h1><br/>
               <form id="frmCaptcha">
      <div class="col-md-6">
        <div class="form-group">
          <label>First Name:</label>
         <input type="text" class="form-control"  placeholder="First Name *" name="fname"  onkeydown="return alphaOnly(event);" required/>
        </div>
      </div>
    <div class="col-md-6">
    	<div class="form-group">
         <label>Last Name::</label>
    		<input type="text" class="form-control" placeholder="Last Name *" name="lname" onkeydown="return alphaOnly(event);" required/>
    	</div>
    </div>
    <div class="col-lg-12">
        <div class="form-group">
          <label>Email:</label>
          <input type="email" class="form-control" placeholder="Email Address *" name="email" required />
        </div>
        <div class="form-group">
          <label>Mobile Number:</label>
          <input type="mobile" minlength="10" maxlength="10" name="mobile" class="form-control" placeholder="Mobile Number *" required />
        </div>
        <div class="form-group">
           <label>Date of Birth:</label>
          <input type="date" name="dob" class="form-control" placeholder="Date of Birth *" required />
        </div>
        <div class="form-group">
          <label>Gender</label><br>
          <input type="radio" id="male" name="gender" value="MALE">
          <label for="male">MALE</label>
          <input type="radio" id="female" name="gender" value="FEMALE">
          <label for="female">FEMALE</label>
        </div>

      <div class="form-group">
           <label>Qualification:</label>
          <input type="text" name="qualification" class="form-control" placeholder="Qualification *" required />
        </div>
        <div class="form-group">
           <label>Skills:</label>
          <input type="text" name="skills" class="form-control" placeholder="Skills *" required />
        </div>
        <div class="form-group">
           <label>Experience:</label>
          <input type="text" name="experience" class="form-control" placeholder="Experience *"  required />
        </div>
        <div class="form-group">
           <label>Resume:</label>
          <input type="file" name="file" class="form-control" placeholder="Upload your Resume *" accept="Application/pdf" required />
        </div>
    <div class="form-group">
           <div class="row">
            <div class="col-lg-10">
              <label>Captcha:</label>
              <input type="text" class="form-control" id="captcha" placeholder="Enter captcha" name="captcha">
            </div>
            <div class="col-lg-2" style="margin-top:25px;">
              <img src="captcha.php"/>
            </div>
           </div> 
                  </div>
                  <button type="button" class="btn btn-default" onclick="submit_data()">Submit</button>
               </form>
            </div>
         </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
    function submit_data(){
    jQuery.ajax({
      url:'insert.php',
      type:'post',
      data:jQuery('#frmCaptcha').serialize(),
      success:function(data){
        alert(data);
      }
    });
    }

    function alphaOnly(event) {
      var key = event.keyCode;
      return ((key >= 65 && key <= 90) || key == 8 || key == 32);
    };
    </script>
</body>
</html>
