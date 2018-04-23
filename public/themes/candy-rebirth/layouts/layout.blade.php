<!DOCTYPE html>
<html lang="en">

    <head>
        {!! meta_init() !!}
        <meta name="keywords" content="@get('keywords')">
        <meta name="description" content="@get('description')">
        <meta name="author" content="@get('author')">
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
        <link rel="stylesheet/less" href="/themes/candy-rebirth/assets/css/w.less">
        <script src="https://cdn.bootcss.com/highlight.js/9.12.0/highlight.min.js"></script>
        <link href="https://cdn.bootcss.com/highlight.js/9.12.0/styles/vs2015.min.css" rel="stylesheet">
        <title>@get('title')</title>
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
