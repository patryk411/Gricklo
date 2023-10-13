<?php /* Template Name: Contact - Gricklo */?>




<?php $__env->startSection('content'); ?>
    <div class="contact-section py-5">

        <div class="container">
            <div class="contact-section__content">
                <div class="contact-section__content__map col-12">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5123.849776398264!2d19.963257708549786!3d50.05023834797209!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47165b483a606aa5%3A0xd05cd1ddd4869975!2sKrakowska%20Akademia%20im.%20Andrzeja%20Frycza%20Modrzewskiego!5e0!3m2!1spl!2spl!4v1696061952264!5m2!1spl!2spl"
                        style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

                <div class="contact-section__content__touch">

                    <div class="row m-0 p-0">

                        <h2 class="contact-section__content__touch--heading col-12">Get in Touch</h2>

                        <div class="contact-section__content__touch__form col-lg-8">
                            <form action="" class="form-contact" id="commentForm">
                                <div class="row m-0 p-0">
                                    <div class="col-12 p-0">
                                        <div class="form-group">
                                            <textarea name="" id="" cols="30" rows="9" class="form-control" placeholder="Enter Message"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Enter your name"
                                                class="form-control"id="name">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="email" placeholder="Email" class="form-control"id="email">

                                        </div>
                                    </div>

                                    <div class="col-12 p-0">
                                        <div class="form-group">
                                            <input type="text" placeholder="Enter Subject"
                                                class="form-control"id="subject">

                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <button class="btn form-btn">send</button>
                                </div>
                            </form>
                        </div>

                        <div class="contact-section__content__touch__right  offset-lg-1 col-lg-3">
                            <div class="contact-section__content__touch__right__box">
                                <i class="fa-solid fa-house"></i>
                                <div class="contact-section__content__touch__right__box__text">
                                    <h3 class="contact-section__content__touch__right__box__text--heading">Buttonwood,
                                        California</h3>
                                    <p class="contact-section__content__touch__right__box__text--text">Rosemead, CA 91770
                                    </p>
                                </div>
                            </div>

                            <div class="contact-section__content__touch__right__box">
                                <i class="fa-solid fa-tablet-screen-button"></i>
                                <div class="contact-section__content__touch__right__box__text">
                                    <h3 class="contact-section__content__touch__right__box__text--heading">+1 253 565 2365
                                    </h3>
                                    <p class="contact-section__content__touch__right__box__text--text">Mon to Fri 9am to 6pm
                                    </p>
                                </div>
                            </div>

                            <div class="contact-section__content__touch__right__box">
                                <i class="fa-regular fa-envelope"></i>
                                <div class="contact-section__content__touch__right__box__text">
                                    <h3 class="contact-section__content__touch__right__box__text--heading">
                                        support@google.com</h3>
                                    <p class="contact-section__content__touch__right__box__text--text">Send us your query
                                        anytime!</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>