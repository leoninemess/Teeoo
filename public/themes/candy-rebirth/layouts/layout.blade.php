<!DOCTYPE html>
<html lang="en">

    <head>
        {!! meta_init() !!}
        <meta name="keywords" content="@get('keywords')">
        <meta name="description" content="@get('description')">
        <meta name="author" content="@get('author')">
        <title>@get('title')</title>
        <link rel="stylesheet/less" href="/themes/candy-rebirth/assets/css/w.less">
        @styles()
        <style>
            .page-container{
                justify-content: center;
            }
            .menu .group .item{
                color:#dedede;
            }
            .menu .group .item:hover{
                color:#fafafa;
                text-shadow: 1px 1px 10px rgba(255,255,255,0.2), 1px 1px 10px rgba(255,255,255,0.2);
            }
            .menu .group .item:active{
                color:#ffffff;
            }
            .menu .group .drop-down{
                color:#dedede;
            }
        </style>
    </head>

    <body>
        @partial('header')

        @content()

        @partial('footer')

        @scripts()
    </body>

</html>
