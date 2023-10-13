<footer class="content-info">
    <div class="container">

        <div class="content-info__content">
            <div class="row m-0 p-0 justify-content-md-between">

                <div class="content-info__content__box col-md-6 col-lg-3 col-xl-3">

                    <a href="" class="navbar-brand footer-brand">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" />
                    </a>

                    <p class="content-info__content__box--text">Seddo eiusmod tempor incididunt ut labore et dolore magna
                        aliqua. Conse ctetur pisicin elit, sed do eiusmod tempor.</p>

                    <div class="content-info__content__box__icons">
                        <i class="fa-brands fa-facebook"></i>
                        <i class="fa-brands fa-instagram"></i>
                        <i class="fa-brands fa-linkedin-in"></i>
                        <i class="fa-brands fa-youtube"></i>
                    </div>

                </div>

                <div class="content-info__content__box col-sm-6 col-md-4 col-lg-2 col-xl-2 offset-xl-1">
                    <h4 class="content-info__content__box--heading">Navigation</h4>

                    <div class="content-info__content__box__list">
                        <a href="<?php echo site_url('/home'); ?>" class="content-info__content__box__list--link">Home</a>
                        <a href="<?php echo site_url('/listing'); ?>" class="content-info__content__box__list--link">Listing</a>
                        <a href="<?php echo site_url('/about'); ?>" class="content-info__content__box__list--link">About</a>
                        <a href="<?php echo site_url('/blog'); ?>" class="content-info__content__box__list--link">Blog</a>
                        <a href="<?php echo site_url('/contact'); ?>" class="content-info__content__box__list--link">Contact</a>
                    </div>

                </div>

                <div class="content-info__content__box col-sm-6 col-md-4 col-lg-2 col-xl-2">
                    <h4 class="content-info__content__box--heading">Services</h4>

                    <div class="content-info__content__box__list">
                        <a href="" class="content-info__content__box__list--link">Care</a>
                        <a href="" class="content-info__content__box__list--link">Treatment</a>
                        <a href="" class="content-info__content__box__list--link">Training</a>
                        <a href="" class="content-info__content__box__list--link">Hygenic Care</a>
                    </div>

                </div>

                <div class="content-info__content__box col-sm-8 col-md-6 col-lg-4 col-xl-4">
                    <h4 class="content-info__content__box--heading">Subscribe newsletter</h4>

                    <p class="content-info__content__box--text">Subscribe our newsletter to get updates about our
                        services and offers.</p>

                    <div class="mb-3">
                        <input type="email" class="form-control" id="exampleFormControlInput1"
                            placeholder="Enter your email">
                        <a href="" class="btn btn-footer-input">
                            <i class="fa-solid fa-arrow-right"></i>
                        </a>
                    </div>

                </div>

            </div>
        </div>

        <div class="content-info__bottom">
            <p class="content-info__bottom--text">
                Copyright ©2023 All rights reserved | This template is design with <i class="fa-solid fa-heart"></i> by
                <a href="" class="logo-bottom"> Colorlib</a>
            </p>
        </div>

    </div>

    <script src="https://kit.fontawesome.com/52989f7b96.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous">
    </script>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.slider-testimonitals').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 3500,
                arrows: false,
                mobileFirst: true,
            });
        })
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js"></script>
    <script>
        var splide = new Splide('.splide', {
            type: 'loop',
            perPage: 4,
            perMove: 1,
            breakpoints: {
                576: {
                    perPage: 1,
                },
            },
        });

        splide.mount();
    </script>
</footer>
