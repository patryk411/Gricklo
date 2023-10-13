<nav class="navbar navbar-expand-lg w-100">
    <div class="container-fluid">
        <div class="navbar-left">
            <a href="<?php echo site_url('/home'); ?>" class="navbar-brand">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" />
            </a>
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

        <div class="navbar-right d-none d-sm-block">
            <a href="" class="sign-in">Sign In</a>
            <a href="" class="listing btn">Add Listing</a>
        </div>
    </div>
</nav>

<header class="header">
    <div class="container">
        <div class="header__content col-lg-11 col-xl-9">
            <div class="header__content__text">
                <h1 class="header__content__text--heading">Listing made easy.</h1>
                <p class="header__content__text--text">Explore vacation rentals, bar & restaurants and experiences .
                    Find amazing places to visit</p>
            </div>
            <div class="header__content__form">
                <form>
                    <div class="row m-0 p-0">
                        <div class="form-box col-sm-12 col-md-5 mb-0">
                            <input type="text" class="form-control input-span" id="exampleFormControlInput1"
                                placeholder="Ex: Food, Service, Hotel, Shopping">
                            <span class="input-text">What?</span>
                        </div>
                        <div class="form-box col-sm-12 col-md-5 mb-0">
                            <input type="text" class="form-control input-span" id="exampleFormControlInput1"
                                placeholder="Your City...">
                            <span class="input-text">Where?</span>
                        </div>
                        <div class="form-box search-btn col-sm-12 col-md-2 mb-0">
                            <a class="search-link btn">
                                <i class="fa-solid fa-magnifying-glass"></i>
                                <p class="search-text">Search</p>
                            </a>
                        </div>
                    </div>
                </form>
            </div>
            <div class="header__content__options d-flex justify-content-center">
                <ul class="header__content__options__list">
                    <a href="" class="header__content__options__list__item">Restaruant</a>
                    <a href="" class="header__content__options__list__item active">Home</a>
                    <a href="" class="header__content__options__list__item">Party</a>
                    <a href="" class="header__content__options__list__item">Shopping</a>
                    <a href="" class="header__content__options__list__item">Hotel</a>
                </ul>
            </div>
        </div>
    </div>
    <div class="header__shadow"></div>
</header>
