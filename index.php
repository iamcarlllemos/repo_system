<?php include "header.php";?>
    <body id="page">
	<?php include "top_navbar.php";?>
        <div class="containera text-center">
		 <section class="col-md-12 mybg">
		<div class="container" data-aos="zoom-out" data-aos-delay="100"><br><br>
		<h1 class="bo1" style="text-shadow: 2px 2px 2px #000;color:#FFF;font-weight:bold;font-size:40pt;font-family: century gothic;text-justify">
	
			 <?php 
						if($SYS_LOGO==""){
						?>
							<img src="images/no-image-icon.png"  width="200" height="200" class="img-circle elevation-0"/>
						<?php }else{ ?>
							<img src="images/coress - logo.png"  class="img-circle elevation-0 img-banner">
						<?php }?>
  
			</div>
          <button type="button" class="btn btn-default dropdown-toggle dropdown-icon border-0 text-white" data-toggle="dropdown" 
            style="background-color: #be2edd; padding: 18px 32px 18px 32px; border-radius: 25px">
              <span class="">Explore Projects</span>
          </button>
          <div class="dropdown-menu" role="menu" style="background:#2f3640;color:#fff;border:none;box-shadow:none">
            <a class="dropdown-item text-white" href="projects.php?search=projects">ALL</a>  
            <a class="dropdown-item text-white" href="bsis.php?search=BSIS">BSIS</a>
            <a class="dropdown-item text-white" href="bsit.php?search=BSIT">BSIT</a>
        </div>
			<br>
		   	<br>
           <br> 
             <br>
                <br>
                  
		  </section>
        </div>
		 <!-- ======= About Section ======= -->
		 <br><br>
    <section id="about" class="about section-bg mb-5">
      <div class="container " data-aos="fade-up">

        <div class="section-title">
          <h2>Information About CCS-CORES:</h2>
          <div class="row mt-4" id="accordion">
            <div class="col-12 col-md-3 mb-3">
            <div class="card" type="button" data-bs-toggle="collapse" data-bs-target="#who">
            <div class="card-header bg-transparent border-0 d-flex justify-content-center align-items-center mt-3 mb-0">
                <i class="fa-solid fa-user green"></i>
            </div>
              <div class="card-body pt-3">
                  <h5>Who can upload?</h5>
                  <div class="collapse multi-collapse" id="who">
                      <p class="text-muted">Members of CCS:</p>
                      <ul class="text-muted">
                          <li>BSIT Students</li>
                          <li>BSIS Students</li>
                          <li>Faculty</li>
                      </ul>
                  </div>
              </div>
          </div>  

            </div>
            <div class="col-12 col-md-3 mb-3">
              <div class="card" data-bs-toggle="collapse" data-bs-target="#what">
                <div class="card-header bg-transparent border-0 d-flex justify-content-center align-items-center mt-3 mb-0">
                  <i class="fa-regular fa-file orange"></i>
                </div>
                <div class="card-body pt-3">
                  <h5>What can I upload?</h5>
                  <div class="collapse multi-collapse" id="what">
                  <p class="text-muted">Material of scholarly value:</p>
                  <ul class="text-muted">
                    <li>Research/Capstone Paper in PDF format</li>
                    <li>Course Research Projects</li>
                  </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-md-3 mb-3">
              <div class="card" data-bs-toggle="collapse" data-bs-target="#why">
                <div class="card-header bg-transparent border-0 d-flex justify-content-center align-items-center mt-3 mb-0">
                  <i class="fa-solid fa-question blue"></i>
                </div>
                <div class="card-body pt-3">
                  <h5>Why should I upload?</h5>
                  <div class="collapse multi-collapse" id="why">
                  <p class="text-muted">Members of CCS:</p>
                  <ul class="text-muted">
                    <li>Preserve your work: Create a permanent, accessible record</li>
                    <li>Inspire Future Generation: Motivate and guide upcoming researchers by providing them valuable insights and resources</li>
                    <li>To make your Thesis discoverable and accessible to others</li>
                    <li>To contribute to the collective knowledge of the College of Computing Studies</li>
                    <li>To reach wider audience and share knowledge</li>
                  </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 col-md-3 mb-3">
              <div class="card" data-bs-toggle="collapse" data-bs-target="#when">
                <div class="card-header bg-transparent border-0 d-flex justify-content-center align-items-center mt-3 mb-0">
                  <i class="fa-regular fa-calendar yellow"></i>
                </div>
                <div class="card-body pt-3">
                  <h5>When should I upload?</h5>
                  <div class="collapse multi-collapse" id="when">
                  <p class="text-muted">Members of CCS:</p>
                  <ul class="text-muted">
                    <li>When they are complete and ready to share</li>
                    <li>To fulfill the sharing requirements of a grant</li>
                    <li>Before you or your colleagues move on from College of Computing Studies-Ilocos Sur Polytechnic State College</li>
                  </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-12 d-flex justify-content-center mt-5">
              <a href="about.php" class="btn btn-outline-transparent px-5" style="border-color: #be2edd; color: #be2edd">More</a>
            </div>
          </div>
          
        </div>

      </div>
    </section><!-- End About Section -->
  
  
	
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