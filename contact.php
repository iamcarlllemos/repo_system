<?php include "header.php";?>
<?php include "top_navbar.php";?>

<!-- ======= Contact Section ======= -->
<section id="contact" class="contact mt-5">
    <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h3><span>Contact Us</span></h3>
          <p>You may reach out below</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-4">
            <div class="mb-4">
             <div class="callout callout-warning">
                  <h5>Address</h5>

                  <p><?=$SYS_ADDRESS?></p>
                </div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="mb-4">
             <div class="callout callout-info">
                  <h5>Email Address</h5>

                  <p><?=$SYS_EMAIL?></p>
                </div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="mb-4">
             <div class="callout callout-success">
                  <h5>Call Us</h5>

                <p>+6309636252</p>
                </div>
            </div>
          </div>

        </div>

         <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-12">
			<div class="embed-responsive embed-responsive-16by9">
				<iframe class="embed-responsive-item" src="https://maps.google.com/maps?q=<?=$SYS_ADDRESS;?>
					&t=&z=13&ie=UTF8&iwloc=&output=embed" height="450" allowfullscreen></iframe>
			</div>
          </div>
        </div>

      </div>
    </section><!-- End Contact Section -->

    <?php include "footer.php";?>