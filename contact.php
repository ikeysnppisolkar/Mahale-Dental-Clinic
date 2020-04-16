<?php include('header.php')?>

		<section class="contact-title text-center">
			<div class="contact-wrapper">
				<div class="container">
					<div class= "row">
						<div>
							<h1 class="headline1">Contact us</h1>
						</div>
					</div>
					<div class="row">
						<div class="sub-headline">
							<p>Lorem ipsum dolor sit amet, consectetur </p>
						</div>
					</div>	
				</div>
			</div>
		</section>

<!-- contact form -->
		<section class="contact-content">
			<div class="container">
				<div class="row">
				<div class="col-md-8">
						<div class= "appointment">
						    <div class="header text-center">
		                        <h2>Drop Your Message</h2>
		                       	<a href="#" class="number">
		                       		<i class="fa fa-phone fa-fw"></i>
									1-234-567-890
		                       	</a>
		                        <span class="or">OR</span>
		                    </div>

							<!-- form of appointment -->
							<div class="row">
								<form role="form" method="post"  onsubmit="return validate();">
									<?php  
										if(isset($_POST['submit']))
										{
											$name   =$_POST['fname'];
											$email  =$_POST['emailadd'];
											$phoneno=$_POST['phoneno'];
											$subject="enquiry";
											$comments=$_POST['comments'];
											$to="inventivekeys@gmail.com";
											$headers="From: $name<$email>";
											$message="Name: $name\n\n Email: $email\n\n Mobile no: $phoneno\n\n subject: $subject\n\n comments: $comments";
											if(mail($to, $subject, $message, $headers))
											{
												echo "Mail Sent";
											}
											else
											{
												echo"Error: Try again later";
											}
										}
									?>
									<div class="form">
									    <div class="form-group">
											<div class="input-group margin-bottom-sm col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
											  <input class="form-control" id="fname" name="fname" type="text" placeholder="Enter Full Name " required>
												<div><p id="name_error"></p></div>
											</div>
										    <div class="help-block with-errors"></div>
										</div>
										<div class="form-group">
											<div class="input-group margin-bottom-sm col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
												<input class="form-control" id="emailadd" name="emailadd" type="email" placeholder="Enter Email Address " required>
											    <div><p id="email_error"></p></div>
											</div>
											<div class="help-block with-errors"></div>
										</div>
										<div class="form-group">
											<div class="input-group margin-bottom-sm col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
												<input type="number" class="form-control" id="phoneno" name="phoneno" type="text" placeholder="Enter Mobile Number " required>
												<div><p id="mobno_error"></p></div>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group margin-bottom-sm col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
												<textarea class="form-control" id="message" name="comments" rows="6" placeholder="Enter Write Your Message Shortly" required /></textarea>
												<div ><p id="msg_error"></p></div>
											</div>
										</div>
										<div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
								            <input class="btn btn-primary send" type="submit" name="submit" value="Send">
										</div>
									</div>
								</form>
							</div>
							<!-- end of form -->
						</div><!-- end of appointment-->
					</div>
					<div class="col-md-4">
						<div class="quick-contact">
							<h2>Quick Contact</h2>
							<div class="google-map">
							  <div id="map-canvas">
							 <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d2965.0824050173574!2d-93.63905729999999!3d41.998507000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sWebFilings%2C+University+Boulevard%2C+Ames%2C+IA!5e0!3m2!1sen!2sus!4v1390839289319" width="100%" height="200" frameborder="0" style="border:0"></iframe>
							  </div>
						   </div>
							<div class="row">
								<div class="col-md-6">
									<p>
										<i class="fa fa-home"></i> 
										<span>Full Address:</span> 
										62 West 55th Street, Suite 302 New York, NY, 10230
									</p>
								</div>
								<div class="col-md-6">
									<p>
										<i class="fa fa-phone"></i>
										<span>Cell No:</span>
										 +880 1234567890
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<p>
										<i class="fa fa-fax"></i> 
										<span>Fax No:</span>
										+58 - 0123456789
									</p>
								</div>
								<div class="col-md-6">
									<p>
										<i class="fa fa-ambulance"></i>
										<span>Ambulance:</span>
										 + 000 987654321
									</p>
								</div>
							</div>
						</div>
					</div>

					
				</div>
			</div>
			
		</section>
			

<?php include('footer.php')?>