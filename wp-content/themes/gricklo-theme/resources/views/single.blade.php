@include('partials.head')
@php do_action('get_header') @endphp


<nav class="navbar navbar-expand-lg w-100">
    <div class="container-fluid">
        <div class="navbar-left">
            <a href="<?php echo site_url('/home'); ?>" class="navbar-brand">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa-solid fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form class="d-flex form-nav">
                    <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                    <div class="form-nav-icon"><i class="fa-solid fa-magnifying-glass"></i></div>
                </form>

                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="<?php echo site_url('/home'); ?>">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="<?php echo site_url('/listing'); ?>" id="navbarDropdown"
                            role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Listing
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="<?php echo site_url('/listing'); ?>">Action</a></li>
                            <li><a class="dropdown-item" href="<?php echo site_url('/listing'); ?>">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url('/about'); ?>">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url('/blog'); ?>">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url('/contact'); ?>">Contact</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="navbar-right">
            <a href="" class="sign-in">Sign In</a>
            <a href="" class="listing btn">Add Listing</a>
        </div>
    </div>
</nav>

<div class="section-baner">
    <div class="container">
        <div class="section-baner__single-post__content col-lg-11 col-xl-9">
            <div class="section-baner__single-post__content__text">
                <h1 class="section-baner__single-post__content__text--heading">{!! the_title() !!}</h1>
            </div>
        </div>
    </div>
    <div class="section-baner__single-post__shadow"></div>
</div>


<div class="single-section py-5">
    <div class="container">
        <div class="single-section__content">
            <div class="row m-0 p-0">

                <div class="single-section__content__blog-post col-lg-8">

                    <div class="card">
                        <div class="card-img">
                            <img src="<?php $BlogPostImg = get_field('post_img');
                            echo $BlogPostImg['url']; ?>" class="card-img-top" alt="...">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">{!! the_field('post_title') !!}</a></h5>

                            <div class="card-icons">
                                <div class="icon-box">
                                    <i class="fa-solid fa-user"></i>
                                    <p class="icon-text">Travel, Lifestyle</p>
                                </div>
                                <div class="icon-box">
                                    |
                                </div>
                                <div class="icon-box">
                                    <i class="fa-solid fa-comments"></i>
                                    <p class="icon-text">03 Comments</p>
                                </div>
                            </div>

                            <div class="card-text">{!! the_field('post_text') !!}</div>

                            {{-- <div class="card-quote">
                                <div class="quote">MCSE boot camps have its supporters and its detractors. Some people
                                    do not understand why you should have to spend money on boot camp when you can get
                                    the MCSE study materials yourself at a fraction of the camp price. However, who has
                                    the willpower to actually sit through a self-imposed MCSE training.
                                </div>
                            </div> --}}

                        </div>
                    </div>

                    <div class="nav-btm">

                        <div class="btm-icons">
                            <div class="icons-left">
                                <i class="fa-solid fa-heart"></i>
                                <p class="heart-text">Lily and 4 people like this</p>
                            </div>
                            <div class="col-sm-4 text-center my-2 my-sm-0"></div>
                            <div class="icons-right">
                                <a href=""><i class="fa-brands fa-facebook-f"></i></a>
                                <a href=""><i class="fa-brands fa-twitter"></i></a>
                                <a href=""><i class="fa-solid fa-basketball"></i></a>
                                <a href=""><i class="fa-brands fa-behance"></i></a>
                            </div>
                        </div>

                        <div class="btm-posts">
                            <div class="row m-0 p-0">
                                <div
                                    class="prev-posts col-md-6 col-lg-6 col-12 flex-row d-flex justify-content-start align-items-center">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/preview.jpg" />
                                    <div class="posts-box-text">
                                        <p class="posts-text">Prev Post</p>
                                        <h4 class="posts-title">space the final frontier</h4>
                                    </div>
                                </div>
                                <div
                                    class="next-posts col-md-6 col-lg-6 col-12 flex-row d-flex justify-content-end align-items-center">
                                    <div class="posts-box-text">
                                        <p class="posts-text">Next Post</p>
                                        <h4 class="posts-title">telescopes 101</h4>
                                    </div>
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/next.jpg" />
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="blog-testimonital">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/author.png" />
                        <div class="testimonital-content">
                            <h3 class="testimonital-name">Harvard milan</h3>
                            <p class="testimonital-text">Second divided from form fish beast made. Every of seas all
                                gathered use saying you're, he our dominion twon Second divided from
                            </p>
                        </div>
                    </div>

                    <div class="comments">
                        <h4 class="comments-head">05 Comments</h4>

                        <div class="comments-boxes">

                            <div class="comments-single-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/comment_1.png" />
                                <div class="comments-single-content">
                                    <p class="comment">Multiply sea night grass fourth day sea lesser rule open subdue
                                        female fill which them Blessed, give fill lesser bearing multiply sea night
                                        grass fourth day sea lesser
                                    </p>
                                    <div class="comments-info">
                                        <div class="comments-info-box">
                                            <p class="comment-author">Emilly Blunt</p>
                                            <p class="comment-date">December 4, 2017 at 3:12p pm</p>
                                        </div>
                                        <a href="" class="btn replay">replay</a>
                                    </div>
                                </div>
                            </div>

                            <div class="comments-single-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/comment_2.png" />
                                <div class="comments-single-content">
                                    <p class="comment">Multiply sea night grass fourth day sea lesser rule open subdue
                                        female fill which them Blessed, give fill lesser bearing multiply sea night
                                        grass fourth day sea lesser
                                    </p>
                                    <div class="comments-info">
                                        <div class="comments-info-box">
                                            <p class="comment-author">Emilly Blunt</p>
                                            <p class="comment-date">December 4, 2017 at 3:12p pm</p>
                                        </div>
                                        <a href="" class="btn replay">replay</a>
                                    </div>
                                </div>
                            </div>

                            <div class="comments-single-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/comment_3.png" />
                                <div class="comments-single-content">
                                    <p class="comment">Multiply sea night grass fourth day sea lesser rule open subdue
                                        female fill which them Blessed, give fill lesser bearing multiply sea night
                                        grass fourth day sea lesser
                                    </p>
                                    <div class="comments-info">
                                        <div class="comments-info-box">
                                            <p class="comment-author">Emilly Blunt</p>
                                            <p class="comment-date">December 4, 2017 at 3:12p pm</p>
                                        </div>
                                        <a href="" class="btn replay">replay</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="comment-form">
                        <h4 class="comment-form-head">Leave a Replay</h4>

                        <form action="" class="form-contact" id="commentForm">
                            <div class="row m-0 p-0">
                                <div class="col-12 p-0">
                                    <div class="form-group">
                                        <textarea name="" id="" cols="30" rows="9" class="form-control"
                                            placeholder="Write Comment"></textarea>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="text" placeholder="Name" class="form-control"id="name">
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="email" placeholder="Email"
                                            class="form-control"id="email">

                                    </div>
                                </div>

                                <div class="col-12 p-0">
                                    <div class="form-group">
                                        <input type="text" placeholder="Website" id="website">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <button class="btn form-btn">Post Comment</button>
                            </div>
                        </form>
                    </div>

                </div>

                <div class="blog-section__content__blog-sidebar col-lg-4">

                    <aside class="blog-section__content__blog-sidebar__search">
                        <form action="#">
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search Keywork">
                                    <div class="input-group-append">
                                        <button class="boxed-btn-2">Search</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </aside>

                    <aside class="blog-section__content__blog-sidebar__category">
                        <h4 class="blog-section__content__blog-sidebar__category--head">Category</h4>

                        <div class="blog-section__content__blog-sidebar__category__options">
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a
                                    href="">Restaurant food(37)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a
                                    href="">Travel news(10)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a
                                    href="">Modern technolog(03)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a
                                    href="">Product(11)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a
                                    href="">Inspiration(21)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a
                                    href="">Health Care(09)</a></p>
                        </div>
                    </aside>

                    <aside class="blog-section__content__blog-sidebar__post">
                        <h4 class="blog-section__content__blog-sidebar__post--head">Recent Post</h4>

                        <div class="blog-section__content__blog-sidebar__post__recent-post">

                            <div class="blog-section__content__blog-sidebar__post__recent-post__media-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/post_1.jpg" class="card-img-top"
                                    alt="...">
                                <div class="blog-section__content__blog-sidebar__post__recent-post__media-box__text">
                                    <p
                                        class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--text">
                                        From life was you fish...</p>
                                    <p
                                        class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--date">
                                        January 12, 2019</p>
                                </div>
                            </div>

                            <div class="blog-section__content__blog-sidebar__post__recent-post__media-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/post_2.jpg" class="card-img-top"
                                    alt="...">
                                <div class="blog-section__content__blog-sidebar__post__recent-post__media-box__text">
                                    <p
                                        class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--text">
                                        The Amazing Huble</p>
                                    <p
                                        class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--date">
                                        02 Hours ago</p>
                                </div>
                            </div>

                            <div class="blog-section__content__blog-sidebar__post__recent-post__media-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/post_3.jpg" class="card-img-top"
                                    alt="...">
                                <div class="blog-section__content__blog-sidebar__post__recent-post__media-box__text">
                                    <p
                                        class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--text">
                                        Astronomy Or Astrology</p>
                                    <p
                                        class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--date">
                                        03 Hours ago</p>
                                </div>
                            </div>

                            <div class="blog-section__content__blog-sidebar__post__recent-post__media-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/post_4.jpg" class="card-img-top"
                                    alt="...">
                                <div class="blog-section__content__blog-sidebar__post__recent-post__media-box__text">
                                    <p
                                        class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--text">
                                        Asteroids telescope</p>
                                    <p
                                        class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--date">
                                        01 Hours ago</p>
                                </div>
                            </div>

                        </div>
                    </aside>

                    <aside class="blog-section__content__blog-sidebar__tags">
                        <h4 class="blog-section__content__blog-sidebar__tags--head">Tag Clouds</h4>

                        <div class="blog-section__content__blog-sidebar__tags__list">
                            <a href=""
                                class="blog-section__content__blog-sidebar__tags__list--link">project</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">love</a>
                            <a href=""
                                class="blog-section__content__blog-sidebar__tags__list--link">technology</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">travel</a>
                            <a href=""
                                class="blog-section__content__blog-sidebar__tags__list--link">restaurant</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">life
                                style</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">design</a>
                            <a href=""
                                class="blog-section__content__blog-sidebar__tags__list--link">illustration</a>
                        </div>

                    </aside>

                    <aside class="blog-section__content__blog-sidebar__instagram">
                        <h4 class="blog-section__content__blog-sidebar__instagram--head">Instagram Feeds</h4>

                        <div class="blog-section__content__blog-sidebar__instagram__imgs">

                            <div class="row m-0 p-0">
                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_5.jpg"
                                        class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_6.jpg"
                                        class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_7.jpg"
                                        class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_8.jpg"
                                        class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_9.jpg"
                                        class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_10.jpg"
                                        class="card-img-top" alt="...">
                                </div>
                            </div>

                        </div>
                    </aside>

                    <aside class="blog-section__content__blog-sidebar__newsletter">
                        <h4 class="blog-section__content__blog-sidebar__newsletter--head">Newsletter</h4>

                        <form action="">
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Enter emial">
                            </div>
                            <button class="btn w-100 primary-bg btn-newsletter" type="submit">subscribe</button>
                        </form>
                    </aside>

                </div>

            </div>
        </div>
    </div>
</div>



@php do_action('get_footer') @endphp
@include('partials.footer')
@php wp_footer() @endphp
