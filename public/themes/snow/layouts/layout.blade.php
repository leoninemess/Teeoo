<!DOCTYPE html>
<html lang="en">

    <head>
        {!! meta_init() !!}
        <meta name="keywords" content="@get('keywords')">
        <meta name="description" content="@get('description')">
        <meta name="author" content="@get('author')">

        <title>@get('title')</title>

        @styles()

    </head>

    <body class="mdui-theme-primary-indigo mdui-theme-accent-pink mdui-loaded ">
        @partial('header')

        <main id="pjax">
            @content()
        </main>

        @partial('footer')

        @scripts()
    </body>
    <script>
        $(function(){
            // pjax
            $(document).on('pjax:start', function() { NProgress.start(); });
            $(document).pjax('a', '#pjax');
            $.pjax.reload('#pjax');
            $(document).on('pjax:success', function(data) {
                console.log(data);
            });
            $(document).on('pjax:complete', function() {
            });
            $(document).on('pjax:end',   function() { NProgress.done();

                $('pre').addClass("line-numbers").css("white-space", "pre-wrap");
                Prism.highlightAll();

            });

        });
        foo = false;
        $(window).scroll(function () {
            var sS = document.documentElement.scrollTop;
            var sSs = window.innerHeight;
            var ssr = sS+sSs;
            var sH = document.documentElement.scrollHeight;
            console.log(sS+' '+sSs+'>>'+sH);
            console.log(ssr);
            console.log('foo :'+foo);
            if (ssr === sH && foo == false){
                $('footer').stop(true,false).animate({
                    opacity : '1',
                    bottom : '0'
                },function () {
                    foo = true;
                })
            }else if (ssr < (sH-60) && foo == true){
                $('footer').stop(true,false).animate({
                    opacity : '0',
                    bottom : '-50px'
                },function () {
                    foo = false;
                })
            }
        });
    </script>

</html>
