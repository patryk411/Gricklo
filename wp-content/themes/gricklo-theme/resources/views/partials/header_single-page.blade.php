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

        <div class="navbar-right">
            <a href="" class="sign-in">Sign In</a>
            <a href="" class="listing btn">Add Listing</a>
        </div>
    </div>
</nav>

<div class="section-baner">
    <div class="container">
        <div class="section-baner__content col-lg-11 col-xl-9">
            <div class="section-baner__content__text">
                <h1 class="section-baner__content__text--heading">{!! the_title() !!}</h1>
            </div>
        </div>
    </div>
    <div class="section-baner__shadow"></div>
</div>
