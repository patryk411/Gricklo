<?php /* Template Name: Blog - Gricklo */?>




<?php $__env->startSection('content'); ?>


<div class="blog-section py-5">
    <div class="container">
        <div class="blog-section__content">
            <div class="row m-0 p-0">

            <div class="blog-section__content__blog-post col-lg-8">

            <?php
            $args = array(
            'post_type' => 'post',
            'post_status' => 'publish',
            'posts_per_page' => 5,
            'orderby' => 'date',
            'order' => 'ASC',
            ); 
            $post = new WP_Query( $args );
            if ( $post->have_posts() ):
            while ( $post->have_posts() ) : $post->the_post(); 
            ?>
        

                        <div class="card">
                            <div class="card-img">
                                <img src="<?php $BlogPostImg = get_field('post_img'); echo $BlogPostImg['url'] ?>" class="card-img-top" alt="...">
                                <div class="blog-date">
                                    <p class="blog-month"><?php the_time('d') ?></p>
                                    <p class="blog-day"><?php the_time('M') ?></p>
                                </div>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
                                <div class="card-text"><?php the_content(); ?></div>
        
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
                            </div>
                        </div>
        

                        <?php
                        endwhile;
                        endif;
                        wp_reset_postdata(); 
                        ?>
                        
                        
                        
                        
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
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a href="">Restaurant food(37)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a href="">Travel news(10)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a href="">Modern technolog(03)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a href="">Product(11)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a href="">Inspiration(21)</a></p>
                            <p class="blog-section__content__blog-sidebar__category__options--option"><a href="">Health Care(09)</a></p>
                        </div>
                    </aside>

                    <aside class="blog-section__content__blog-sidebar__post">
                        <h4 class="blog-section__content__blog-sidebar__post--head">Recent Post</h4>

                        <div class="blog-section__content__blog-sidebar__post__recent-post">

                            <div class="blog-section__content__blog-sidebar__post__recent-post__media-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/post_1.jpg" class="card-img-top" alt="...">
                                <div class="blog-section__content__blog-sidebar__post__recent-post__media-box__text">
                                    <p class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--text">From life was you fish...</p>
                                    <p class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--date">January 12, 2019</p>
                                </div>
                            </div>

                            <div class="blog-section__content__blog-sidebar__post__recent-post__media-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/post_2.jpg" class="card-img-top" alt="...">
                                <div class="blog-section__content__blog-sidebar__post__recent-post__media-box__text">
                                    <p class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--text">The Amazing Huble</p>
                                    <p class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--date">02 Hours ago</p>
                                </div>
                            </div>

                            <div class="blog-section__content__blog-sidebar__post__recent-post__media-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/post_3.jpg" class="card-img-top" alt="...">
                                <div class="blog-section__content__blog-sidebar__post__recent-post__media-box__text">
                                    <p class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--text">Astronomy Or Astrology</p>
                                    <p class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--date">03 Hours ago</p>
                                </div>
                            </div>

                            <div class="blog-section__content__blog-sidebar__post__recent-post__media-box">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/post_4.jpg" class="card-img-top" alt="...">
                                <div class="blog-section__content__blog-sidebar__post__recent-post__media-box__text">
                                    <p class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--text">Asteroids telescope</p>
                                    <p class="blog-section__content__blog-sidebar__post__recent-post__media-box__text--date">01 Hours ago</p>
                                </div>
                            </div>

                        </div>
                    </aside>

                    <aside class="blog-section__content__blog-sidebar__tags">
                        <h4 class="blog-section__content__blog-sidebar__tags--head">Tag Clouds</h4>
                        
                        <div class="blog-section__content__blog-sidebar__tags__list">
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">project</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">love</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">technology</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">travel</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">restaurant</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">life style</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">design</a>
                            <a href="" class="blog-section__content__blog-sidebar__tags__list--link">illustration</a>
                        </div>

                    </aside>

                    <aside class="blog-section__content__blog-sidebar__instagram">
                        <h4 class="blog-section__content__blog-sidebar__instagram--head">Instagram Feeds</h4>

                        <div class="blog-section__content__blog-sidebar__instagram__imgs">

                            <div class="row m-0 p-0">
                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_5.jpg" class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_6.jpg" class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_7.jpg" class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_8.jpg" class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_9.jpg" class="card-img-top" alt="...">
                                </div>

                                <div class="blog-section__content__blog-sidebar__instagram__imgs__box col-4">
                                    <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/images/post_10.jpg" class="card-img-top" alt="...">
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

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>