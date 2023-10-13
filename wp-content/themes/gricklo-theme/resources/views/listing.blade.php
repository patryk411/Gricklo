<?php /* Template Name: Listing - Gricklo */?>


@extends('layouts.app')

@section('content')
    <div class="listing-section py-5">
        <div class="container">

            <div class="listing-section__content">

                <div class="row m-0 p-0 justify-content-between">

                    <div class="listing-section__content__filter col-md-5 col-lg-4 col-xl-3">

                        <h4 class="listing-section__content__filter--heading">Filter</h4>

                        <div class="listing-section__content__filter__category">

                            <select class="form-select" aria-label="Default select example">
                                <option selected><span class="selected-option">City</span></option>
                                <option value="1">Dhaka</option>
                                <option value="2">India</option>
                                <option value="3">UK</option>
                                <option value="4">US</option>
                                <option value="5">Pakistan</option>
                            </select>

                            <select class="form-select" aria-label="Default select example">
                                <option selected><span class="selected-option">State</span></option>
                                <option value="1">Dhaka</option>
                                <option value="2">Mirpur</option>
                                <option value="3">Danmondi</option>
                                <option value="4">Rampura</option>
                                <option value="5">Htizill</option>
                            </select>

                            <select class="form-select" aria-label="Default select example">
                                <option selected><span class="selected-option">Near 1 Km</span></option>
                                <option value="1">2 Km</option>
                                <option value="2">3 Km</option>
                                <option value="3">4 Km</option>
                                <option value="4">5 Km</option>
                                <option value="5">6 Km</option>
                            </select>

                            <div class="checkbox-box">
                                <p class="option-title">Price range</p>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                                    <label class="form-check-label" for="flexCheckDefault1">
                                        $50 - $150
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2">
                                    <label class="form-check-label" for="flexCheckDefault2">
                                        $150 - $300
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3">
                                    <label class="form-check-label" for="flexCheckDefault3">
                                        $300 - $500
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault4">
                                    <label class="form-check-label" for="flexCheckDefault4">
                                        $500 - $1000
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault5">
                                    <label class="form-check-label" for="flexCheckDefault5">
                                        $1000 - Above
                                    </label>
                                </div>

                            </div>

                            <div class="checkbox-box">

                                <p class="option-title">Tags</p>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="internet">
                                    <label class="form-check-label" for="internet">
                                        Wiraless Internet
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="credit-cards">
                                    <label class="form-check-label" for="credit-cards">
                                        Accepts Credit Cards
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="smoking">
                                    <label class="form-check-label" for="smoking">
                                        Smoking Allowed
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="parking">
                                    <label class="form-check-label" for="parking">
                                        Parking Street
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="coupons">
                                    <label class="form-check-label" for="coupons">
                                        Coupons
                                    </label>
                                </div>

                            </div>


                        </div>

                    </div>

                    <div class="listing-section__content__posts col-md-7 col-lg-8 col-xl-8">

                        <h4 class="listing-section__content__posts--heading">5432 Listings are available</h4>

                        <div class="row m-0 p-0">

                            <div class="main__popular__content__single-box col-sm-12 col-md-12 col-lg-6 col-xl-6 mb-5">
                                <div class="card">
                                    <div class="card-image">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/card1.jpg" class="card-img-top"
                                            alt="...">
                                        <div class="card-img-text">
                                            <span class="img-text">Closed</span>
                                            <span class="img-heart"><i class="fa-regular fa-heart"></i></span>
                                        </div>
                                        <div class="card-img-review">
                                            <div class="img-stars">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                            </div>
                                            <p class="review-text"> - 4.90 (230 Review)</p>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">gloria fast food restaurant <i
                                                class="fa-solid fa-check"></i></h5>
                                        <p class="card-text"><i class="fa-solid fa-location-dot"></i> 75 Prince Street,
                                            green road, NY, USA</p>
                                    </div>
                                    <div class="card-footer">
                                        <div class="restaurant-name">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/restaurant-icon.png"
                                                class="card-img-top" alt="...">
                                            <p class="name">Food & Restaurant</p>
                                        </div>
                                        <div class="restaurant-icons">
                                            <i class="fa-solid fa-phone"></i>
                                            <i class="fa-solid fa-envelope"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="main__popular__content__single-box col-sm-12 col-md-12 col-lg-6 col-xl-6 mb-5">
                                <div class="card">
                                    <div class="card-image">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/card2.jpg" class="card-img-top"
                                            alt="...">
                                        <div class="card-img-text">
                                            <span class="img-text">Closed</span>
                                            <span class="img-heart"><i class="fa-regular fa-heart"></i></span>
                                        </div>
                                        <div class="card-img-review">
                                            <div class="img-stars">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                            </div>
                                            <p class="review-text"> - 4.90 (230 Review)</p>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">gloria fast food restaurant <i
                                                class="fa-solid fa-check"></i></h5>
                                        <p class="card-text"><i class="fa-solid fa-location-dot"></i> 75 Prince Street,
                                            green road, NY, USA</p>
                                    </div>
                                    <div class="card-footer">
                                        <div class="restaurant-name">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/restaurant-icon.png"
                                                class="card-img-top" alt="...">
                                            <p class="name">Food & Restaurant</p>
                                        </div>
                                        <div class="restaurant-icons">
                                            <i class="fa-solid fa-phone"></i>
                                            <i class="fa-solid fa-envelope"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="main__popular__content__single-box col-sm-12 col-md-12 col-lg-6 col-xl-6 mb-5">
                                <div class="card">
                                    <div class="card-image">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/card3.jpg" class="card-img-top"
                                            alt="...">
                                        <div class="card-img-text">
                                            <span class="img-text">Closed</span>
                                            <span class="img-heart"><i class="fa-regular fa-heart"></i></span>
                                        </div>
                                        <div class="card-img-review">
                                            <div class="img-stars">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                            </div>
                                            <p class="review-text"> - 4.90 (230 Review)</p>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">gloria fast food restaurant <i
                                                class="fa-solid fa-check"></i></h5>
                                        <p class="card-text"><i class="fa-solid fa-location-dot"></i> 75 Prince Street,
                                            green road, NY, USA</p>
                                    </div>
                                    <div class="card-footer">
                                        <div class="restaurant-name">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/restaurant-icon.png"
                                                class="card-img-top" alt="...">
                                            <p class="name">Food & Restaurant</p>
                                        </div>
                                        <div class="restaurant-icons">
                                            <i class="fa-solid fa-phone"></i>
                                            <i class="fa-solid fa-envelope"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="main__popular__content__single-box col-sm-12 col-md-12 col-lg-6 col-xl-6 mb-4">
                                <div class="card">
                                    <div class="card-image">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/card4.jpg" class="card-img-top"
                                            alt="...">
                                        <div class="card-img-text">
                                            <span class="img-text">Closed</span>
                                            <span class="img-heart"><i class="fa-regular fa-heart"></i></span>
                                        </div>
                                        <div class="card-img-review">
                                            <div class="img-stars">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                            </div>
                                            <p class="review-text"> - 4.90 (230 Review)</p>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">gloria fast food restaurant <i
                                                class="fa-solid fa-check"></i></h5>
                                        <p class="card-text"><i class="fa-solid fa-location-dot"></i> 75 Prince Street,
                                            green road, NY, USA</p>
                                    </div>
                                    <div class="card-footer">
                                        <div class="restaurant-name">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/restaurant-icon.png"
                                                class="card-img-top" alt="...">
                                            <p class="name">Food & Restaurant</p>
                                        </div>
                                        <div class="restaurant-icons">
                                            <i class="fa-solid fa-phone"></i>
                                            <i class="fa-solid fa-envelope"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="main__popular__content__single-box col-sm-12 col-md-12 col-lg-6 col-xl-6 mb-5">
                                <div class="card">
                                    <div class="card-image">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/card1.jpg" class="card-img-top"
                                            alt="...">
                                        <div class="card-img-text">
                                            <span class="img-text">Closed</span>
                                            <span class="img-heart"><i class="fa-regular fa-heart"></i></span>
                                        </div>
                                        <div class="card-img-review">
                                            <div class="img-stars">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                            </div>
                                            <p class="review-text"> - 4.90 (230 Review)</p>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">gloria fast food restaurant <i
                                                class="fa-solid fa-check"></i></h5>
                                        <p class="card-text"><i class="fa-solid fa-location-dot"></i> 75 Prince Street,
                                            green road, NY, USA</p>
                                    </div>
                                    <div class="card-footer">
                                        <div class="restaurant-name">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/restaurant-icon.png"
                                                class="card-img-top" alt="...">
                                            <p class="name">Food & Restaurant</p>
                                        </div>
                                        <div class="restaurant-icons">
                                            <i class="fa-solid fa-phone"></i>
                                            <i class="fa-solid fa-envelope"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="main__popular__content__single-box col-sm-12 col-md-12 col-lg-6 col-xl-6 mb-5">
                                <div class="card">
                                    <div class="card-image">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/card2.jpg" class="card-img-top"
                                            alt="...">
                                        <div class="card-img-text">
                                            <span class="img-text">Closed</span>
                                            <span class="img-heart"><i class="fa-regular fa-heart"></i></span>
                                        </div>
                                        <div class="card-img-review">
                                            <div class="img-stars">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                            </div>
                                            <p class="review-text"> - 4.90 (230 Review)</p>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">gloria fast food restaurant <i
                                                class="fa-solid fa-check"></i></h5>
                                        <p class="card-text"><i class="fa-solid fa-location-dot"></i> 75 Prince Street,
                                            green road, NY, USA</p>
                                    </div>
                                    <div class="card-footer">
                                        <div class="restaurant-name">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/restaurant-icon.png"
                                                class="card-img-top" alt="...">
                                            <p class="name">Food & Restaurant</p>
                                        </div>
                                        <div class="restaurant-icons">
                                            <i class="fa-solid fa-phone"></i>
                                            <i class="fa-solid fa-envelope"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>
    </div>
@endsection
