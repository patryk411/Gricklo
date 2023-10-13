<!doctype html>
<html <?php echo get_language_attributes(); ?>>
<?php echo $__env->make('partials.head', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<body <?php body_class() ?>>
    <?php if(is_page('home') || !is_page(['listing', 'blog', 'about', 'contact'])): ?>
        <?php echo $__env->make('partials.header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <?php echo $__env->make('partials.header-mobile', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <?php else: ?>
        <?php echo $__env->make('partials.header_single-page', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <?php echo $__env->make('partials.header-mobile', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <?php endif; ?>
    <div class="wrap" role="document">
        <div class="content">
            <main class="main">
                <?php echo $__env->yieldContent('content'); ?>
            </main>
            <?php if(App\display_sidebar()): ?>
                <aside class="sidebar">
                    <?php echo $__env->make('partials.sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                </aside>
            <?php endif; ?>
        </div>
    </div>
    <?php do_action('get_footer') ?>
    <?php echo $__env->make('partials.footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <?php wp_footer() ?>
</body>

</html>
