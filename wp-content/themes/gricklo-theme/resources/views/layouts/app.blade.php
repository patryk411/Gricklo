<!doctype html>
<html {!! get_language_attributes() !!}>
@include('partials.head')

<body @php body_class() @endphp>
    @if (is_page('home') || !is_page(['listing', 'blog', 'about', 'contact']))
        @include('partials.header')
        @include('partials.header-mobile')
    @else
        @include('partials.header_single-page')
        @include('partials.header-mobile')
    @endif
    <div class="wrap" role="document">
        <div class="content">
            <main class="main">
                @yield('content')
            </main>
            @if (App\display_sidebar())
                <aside class="sidebar">
                    @include('partials.sidebar')
                </aside>
            @endif
        </div>
    </div>
    @php do_action('get_footer') @endphp
    @include('partials.footer')
    @php wp_footer() @endphp
</body>

</html>
