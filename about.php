<?php include "header.php";?>
    <body id="page">
	<?php include "top_navbar.php";?>
       
    <div class="container">
        <h3 class="mt-5">Find Out More <span>About Us</span></h3>
        <p>College of Computing Studies</p>
        <div class="row">
          <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
            <img src="slider/images/7.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="100">
             <h3> <?=$SYS_ADDRESS;?></h3>
			<p class="fst-italic">
              <?=$SYS_EMAIL;?>
            </p>
           
            <p class="text-justify">
              <?=$SYS_ABOUT;?>
            </p>
          </div>
</div>
    </div>
	
   <?php include "footer.php";?>
    </body>
    <script>
       $('[data-bs-toggle="collapse"]').on('click', function () {
      // Close other collapsible sections when a button is clicked using jQuery
      $('[data-bs-toggle="collapse"]').not(this).each(function () {
        var targetId = $(this).data('bs-target');
        $(targetId).collapse('hide');
      });
    });
    </script>
</html>