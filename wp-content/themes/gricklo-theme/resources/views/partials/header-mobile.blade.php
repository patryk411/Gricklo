<button class="burger-btn d-lg-none d-xl-none">
    <div class="burger-btn__box">
        <div class="burger-btn__bars"></div>
    </div>
</button>

<nav class="nav-mobile">
    <div class="nav-mobile__items">
        <ul class="nav-mobile__items__list">
            <li><a href="<?php echo site_url('/home'); ?>" class="nav-mobile__items__list--item">Home</a></li>
            <li><a href="<?php echo site_url('/listing'); ?>" class="nav-mobile__items__list--item" id="navbarDropdown" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Listing</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-link" href="<?php echo site_url('/listing'); ?>">One</a>
                    <a class="dropdown-link" href="<?php echo site_url('/listing'); ?>">Two</a>
                    <a class="dropdown-link" href="<?php echo site_url('/listing'); ?>">Three</a>
                </div>
            </li>
            <li><a href="<?php echo site_url('/about'); ?>" class="nav-mobile__items__list--item">About</a></li>
            <li><a href="<?php echo site_url('/blog'); ?>" class="nav-mobile__items__list--item">Blog</a></li>
            <li><a href="<?php echo site_url('/contact'); ?>" class="nav-mobile__items__list--item">Contact</a></li>

        </ul>
    </div>
</nav>
