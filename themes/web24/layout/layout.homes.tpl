<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}

<link href="/themes/web24/css/slider/owl.carousel.min.css" type="text/css" media="all" rel="stylesheet" />
<link href="/themes/web24/css/slider/owl.theme.default.min.css" type="text/css" media="all" rel="stylesheet" />
<script src="/themes/web24/js/slider/owl.carousel.js"></script>



  <div class="containers">
    
    <div class="card-wrappers">
      
      <div class="card">
        
        <div class="card-image">
          <img src="http://laduyen.anvh.info/uploads/laduyen.png" alt="profile one">
        </div>

      <ul class="social-icons">
        <li>
          <a href="">
            <i class="fab fa-facebook-f"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fab fa-instagram"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fab fa-twitter"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fab fa-dribbble"></i>
          </a>
        </li>
      </ul>

      <div class="details">
        <h2>John Smith
          <br>
          <span class="job-title">UI Developer</span>
        </h2>
      </div>
    </div>
  </div><!-- end box wrapper --> 
    
        <div class="card-wrappers">
      
      <div class="card">
        
        <div class="card-image">
          <img src="http://laduyen.anvh.info/uploads/laduyen.png" alt="profile one">
        </div>

      <ul class="social-icons">
        <li>
          <a href="">
            <i class="fab fa-facebook-f"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fab fa-instagram"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fab fa-twitter"></i>
          </a>
        </li>
        <li>
          <a href="">
            <i class="fab fa-dribbble"></i>
          </a>
        </li>
      </ul>

      <div class="details">
        <h2>John Smith
          <br>
          <span class="job-title">UI Developer</span>
        </h2>
      </div>
    </div>
  </div><!-- end box wrapper --> 
     
 </div><!-- END container -->
 
 
 <style>



.containers {
  max-width: 900px;
  display: flex;
  justify-content: space-evenly;
  margin: 0 auto;
}

.card-wrappers {
  width: 400px;
  height: 500px;
  position: relative;
}

.card {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 350px;
  height: 450px;
  transform: translate(-50%, -50%);
  border-radius: 16px;
  overflow: hidden;
  box-shadow: 0 5px 18px rgba(0, 0, 0, 0.6);
  cursor: pointer;
  transition: 0.5s;
  
  .card-image {
    position: absolute;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    z-index: 2;
    background-color: #000;
    transition: .5s;
  }
  
  &:hover img {
    opacity: 0.4;
    transition: .5s;
  }
}

.card:hover .card-image {
  transform: translateY(-100px);
  transition: all .9s;
}

/**** Social Icons *****/

.social-icons {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 3;
  display: flex;
  
  li {
    list-style: none;
    
    a {
      position: relative;
      display: block;
      width: 50px;
      height: 50px;
      line-height: 50px;
      text-align: center;
      background: #fff;
      font-size: 23px;
      color: #333;
      font-weight: bold;
      margin: 0 6px;
      transition: .4s;
      transform: translateY(200px);
      opacity: 0;
    } 
  }
}

.card:hover .social-icons li a {
  transform: translateY(0px);
  opacity: 1; 
}

.social-icons li a:hover {
  background: #000; 
  transition: .2s;
  .fab {
    color: #fff;
  } 
}

.social-icons li a .fab {
  transition: .8s;
    
  &:hover {
      transform: rotateY(360deg);
      color: #fff;
  } 
}

.card:hover li:nth-child(1) a {
    transition-delay: 0.1s;
}
.card:hover li:nth-child(2) a {
  transition-delay: 0.2s;
}
.card:hover li:nth-child(3) a {
  transition-delay: 0.3s;
}
.card:hover li:nth-child(4) a {
  transition-delay: 0.4s;
}

/**** Personal Details ****/

.details {
  position: absolute;
  bottom: 0;
  left: 0;
  background: #fff;
  width: 100%;
  height: 120px;
  z-index: 1;
  padding: 10px;

  h2 {
    margin: 30px 0;
    padding: 0;
    text-align: center;
     
    .job-title {
        font-size: 1rem;
        line-height: 2.5rem;
        color: #333;
        font-weight: 300;
    }
  }
}

.jane {
  position: absolute;
  bottom: -120px;
  left: 0;
  opacity: 0;
  background: #fff;
  width: 100%;
  height: 120px;
  z-index: 3;
  padding: 10px;
  transition: .4s;
}

.profile-two .social-icons li a {
  border-radius: 50%;
}

.card:hover .profile-img--two {
  transform: rotateY(180deg);
}

.card:hover .jane {
  bottom: 0;
  left: 0;
  transition-delay: 0.5s;
  opacity: 1;
}

</style>

<div class="full-about">
		<div class="wraper">
		<div class="row">
		    <div class="col-sm-24 col-md-12">
                    [LEFT]
                </div>
                <div class="col-sm-24 col-md-12">
                    [RIGHT]
                </div>
                
            </div>
		</div>	
	</div>


<div class="container">
	<!-- Slider -->
	<div class="full-cat">
		<div class="wraper">
			[CAT_SHOP2]
		</div>
		<div class="block_slider">
			[SLIDER]
		</div>
	</div>

	<div class="full-about">
		<div class="wraper">
			[ABOUT]
		</div>	
	</div>
	
	<!-- Product1 -->
	<div class="full-product1">
		<div class="wraper">
			[PRODUCT1]
		</div>	
	</div>
	
	<div class="full-banner">
		<div class="wraper">
			[BANNER1]
		</div>
	</div>

	<div class="full-camket">
		<div class="wraper">
			[BANNER2]
		</div>	
	</div>

	<!-- Product2 -->
	<div class="full-product2">
		<div class="wraper">
			[PRODUCT2]
		</div>	
	</div>

	
	<!-- Gioi thieu -->
	<div class="full-product3">
		<div class="wraper">
			[HOTDEAL]
			
		</div>	
	</div>
	

	<!-- News -->
	<div class="full-news">
		<div class="wraper">
			[NEW]
		</div>	
	</div>

	<!-- Partner -->
	<div class="full-partner">
		<div class="wraper">
			[PARTNER]
		</div>	
	</div>


	<!-- Product top-->
	<div class="full-product_top">
		<div class="wraper">
			[PRODUCT_TOP]
		</div>
	</div>

	<div class="full-banner">
		<div class="wraper">
			[BANNER3]
		</div>	
	</div>


	<!-- Google Map -->
	<div class="full-map">
		[MAP]
	</div>
</div>

{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->