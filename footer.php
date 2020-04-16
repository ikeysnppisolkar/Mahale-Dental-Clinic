	<section id="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-offset-4 col-md-6 ">
						<ul class="text-center contact">
				        	<li class= "socials-icons">
								<a href="#" data-toggle="tooltip" title="Share in Facebook" class="facebook"><i class="fa fa-facebook"></i></a>
							</li>
							<li class= "socials-icons">
								<a href="#" data-toggle="tooltip" title="Share in Twitter" class="twitter"><i class="fa fa-twitter"></i></a>
							</li>
							<li class= "socials-icons">
								<a href="#" data-toggle="tooltip" title="Share in Google +" class="google-plus"><i class="fa fa-google-plus"></i></a>
							</li>
							<li class= "socials-icons">
								<a href="#" data-toggle="tooltip" title="Share in Instagram" class="instagram"><i class="fa fa-instagram"></i></a>
							</li>
							<li class= "socials-icons">
								<a href="#" data-toggle="tooltip" title="Share in Linked In" class="linkedin"><i class="fa fa-linkedin"></i></a>
							</li>
							<li class= "socials-icons">
								<a href="#" data-toggle="tooltip" title="Connect with Skype" class="skype"><i class="fa fa-skype"></i></a>
							</li>
				      	</ul>
					</div>
				</div>
				<div class="row">
				    <div class="col-md-12">
					    <div class="col-md-3">
							<h3><strong>Address</strong></h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio nulla necessitatibus adipisci consequatur explicabo provident officiis fugit. Nihil dolorem officiis.</p>
						</div>
						<div class="col-md-offset-1 col-md-3">
							<h3><strong>Our Services</strong></h3>
							<ul class="footer-services1">
								<li><i class="fa fa-angle-double-right"></i> Top Qualified Doctors</li>
								<li><i class="fa fa-angle-double-right"></i> Online Q & A</li>
								<li><i class="fa fa-angle-double-right"></i> Symptom Check</li>
								<li><i class="fa fa-angle-double-right"></i> Competitive Pricing</li>
								<li><i class="fa fa-angle-double-right"></i> Medical Counseling</li> 
								<li><i class="fa fa-angle-double-right"></i> Caring Staff</li> 
							</ul>
						</div>
						<div class="col-md-2">
							<h3><strong>Quick Links</strong></h3>
							<ul class="footer-services2">
								<li><a href="index.php">Home</a></li>
								<li><a href="services.php">Services</a></li>
								<li><a href="doctors.php">Doctor</a></li>
								<li><a href="gallery.php">Gallery</a></li>
								<li><a href="blog.php">Blog</a></li> 
								<li><a href="contact.php">Contact Us</a></li> 
							</ul>
						</div>
						<div class="col-md-3">
							<h3><strong>Opening Hours</strong></h3>
							<h3> 27 By 7 </h3>
						</div>
				    </div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="copy-right-text">
							<div class="col-md-9">
								@ 2018.All Rights Reserved.
							</div>
							<div class="col-md-3 footer-pad-15">
							Designed & Developed By<a href="http://www.inventivekeys.com" target="blank"><span class="inventive"> INVENTIVE</span><span class="keys">KEYS</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		
		<script type="text/javascript" src="assets/js/jquery.min.js"></script>
		<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
		<script type="text/javascript" src="assets/js/isotope.pkgd.min.js"></script>
		<script type="text/javascript" src="assets/js/wow.min.js"></script>
		<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="assets/js/validation.js"></script>
<!-- Start For Active Navigation  Script-->
<script>
$(document).ready(function() {

 // Get current page URL
 var url = window.location.href;

 // remove # from URL
 url = url.substring(0, (url.indexOf("#") == -1) ? url.length : url.indexOf("#"));

 // remove parameters from URL
 url = url.substring(0, (url.indexOf("?") == -1) ? url.length : url.indexOf("?"));

 // select file name
 url = url.substr(url.lastIndexOf("/") + 1);
 
 // If file name not avilable
 if(url == ''){
 url = 'index.php';
 }
 
 // Loop all menu items
 $('#hightlightnav li').each(function(index){
  // select href
  var href = $(this).find('a').attr('href');
 console.log(index);
  // Check filename
  if(url == href){

   // Add active class
   $(this).addClass('active');
  }
  
 });
}); 
</script>
<!-- End For Active Navigation  Script-->
		<script>
      		new WOW().init();
		</script>

		<script>
			$(document).ready(function() {
  				$("#starting-slider").owlCarousel({
  					autoPlay: 3000,
      				navigation : false, // Show next and prev buttons
      				slideSpeed : 700,
      				paginationSpeed : 1000,
      				singleItem:true
  				});
			});
		</script>


		<script>
			$( function() {
				  // init Isotope
			  	var $container = $('.isotope').isotope
			  	({
				    itemSelector: '.element-item',
				    layoutMode: 'fitRows'
			  	});


  				// bind filter button click
  				$('#filters').on( 'click', 'button', function() 
  				{
				    var filterValue = $( this ).attr('data-filter');
				    // use filterFn if matches value
				    $container.isotope({ filter: filterValue });
				 });
  
			  // change is-checked class on buttons
			  	$('.button-group').each( function( i, buttonGroup ) 
			  	{
			    	var $buttonGroup = $( buttonGroup );
			    	$buttonGroup.on( 'click', 'button', function() 
			    	{
			      		$buttonGroup.find('.is-checked').removeClass('is-checked');
			      		$( this ).addClass('is-checked');
			    	});
			  	});
			  
			});
		</script>

	</body>
</html>