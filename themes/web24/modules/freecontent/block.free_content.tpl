<!-- BEGIN: main -->


<div class="owl-carousel shop_cat">
	<!-- BEGIN: loop -->
    <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="{ROW.image}">
                    <h3>{ROW.title}</h3>
                    <br>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>	{ROW.description}.</p>
                <a href="{ROW.link}">Xem thêm</a>
                </div>
            </div>
        </div>
	<!-- END: loop -->
</div>
<script type="text/javascript">
$(document).ready(function() {
    var owl = $('.shop_cat');
    owl.owlCarousel({
        items: 2,
        nav: true,
        dots: false,
        loop: true,
		margin: 30,
        lazyLoad: true,
        autoplay: true,
        animateOut: 'fadeOut',
        autoHeight: true,
        navText: ['<i class="icofont-thin-left"></i>', '<i class="icofont-thin-right"></i>'],
        responsive: {
            0: {
				margin: 10,
                items: 2
            },
            600: {
				margin: 10,
                items: 2
            },
            1000: {
                items: 2
            }
        }
    });
})
</script>


<style>

.card {
    position: relative;
    cursor: pointer;
    text-align: center;
}

.card .face{
    width: auto;
    height: 200px;
    transition: 0.5s;
    text-align: center;
}

.card .face.face1{
    position: relative;
    background: #1c6c01;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1;
    transform: translateY(100px);
}

.card:hover .face.face1{
    background: #ff0057;
    transform: translateY(0);
}

.card .face.face1 .content {
    /* opacity: 0.2; */
    transition: 0.5s;
    text-align: -webkit-center;
}

.card:hover .face.face1 .content{
    opacity: 1;
}

.card .face.face1 .content img{
    max-width: 100px;
}

.card .face.face1 .content h3{
    margin: 10px 0 0;
    padding: 0;
    color: #fff;
    text-align: center;
    font-size: 1.5em;
}

.card .face.face2{
    position: relative;
    background: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
    box-sizing: border-box;
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.8);
    transform: translateY(-100px);
}

.card:hover .face.face2{
    transform: translateY(0);
}

.card .face.face2 .content p{
    margin: 0;
    padding: 0;
}

.card .face.face2 .content a{
    margin: 15px 0 0;
    display:  inline-block;
    text-decoration: none;
    font-weight: 900;
    color: #333;
    padding: 5px;
    border: 1px solid #333;
}

.card .face.face2 .content a:hover{
    background: #333;
    color: #fff;
}

</style>

<!-- END: main -->



       

