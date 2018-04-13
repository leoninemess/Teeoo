@extends("layouts.app")

@section("css")
    <link rel="stylesheet" type="text/css" href="/admin/css/main.css?v2.0.1-simple" media="all">
@endsection
@section('content')
<div class="layui-fluid larry-wrapper">
    <div class="layui-row layui-col-space30">
        <div class="layui-col-xs24">
            <section class="panel panel-padding">
                <form class="layui-form" method="post" action="/Admin/Setup/Basicsetup_update/">
                    {!! csrf_field() !!}
                    <div class="layui-tab" lay-filter="check">
                        <ul class="layui-tab-title">
                            <li class="layui-this" lay-id="1">基本设置</li>
                            <li lay-id="2">安全设置</li>
                            <li lay-id="3">邮箱设置</li>
                        </ul>
                        <div class="layui-tab-content">
                            <div class="layui-tab-item layui-show">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">网站名称</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="name" value="{{$set["name"]}}" placeholder="请输入网站名称" autocomplete="off" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">网站地址</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="address" value="{{$set["address"]}}" placeholder="请输入网站地址" autocomplete="off" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">关键字</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="key" value="{{$set["key"]}}" placeholder="请以半角逗号 , 分割多个关键字" autocomplete="off" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item ">
                                    <label class="layui-form-label">站点描述</label>
                                    <div class="layui-input-block">
                                        <textarea name="describe" placeholder="请输入描述" class="layui-textarea">{{$set["describe"]}}</textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item layui-form-text">
                                    <label class="layui-form-label">底部代码</label>
                                    <div class="layui-input-block">
                                        <textarea name="Bottomcode"  placeholder="底部代码" class="layui-textarea">{{$set["Bottomcode"]}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-tab-item">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">允许上传文件类型</label>
                                    <div class="layui-input-block">
                                        <input type="checkbox" checked="checked" name="picture" value="gif,jpg,jpeg,png,tiff,bmp" title="是">图片文件 (gif jpg jpeg png tiff bmp)
                                    </div>
                                    <div class="layui-input-block">
                                        <input type="checkbox" checked="checked" name="Multi-Media" value="mp3,wmv,wma,rmvb,rm,avi,flv" title="是">多媒体文件 (mp3 wmv wma rmvb rm avi flv)
                                    </div>
                                    <div class="layui-input-block">
                                        <input type="checkbox" checked="checked" name="archives" value="txt,doc,docx,xls,xlsx,ppt,pptx,zip,rar,pdf" title="是">常用档案文件 (txt doc docx xls xlsx ppt pptx zip rar pdf)
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">自定义上传格式</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="custom" value="{{$set["custom"]}}" placeholder="请输入自定义的格式" autocomplete="off" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item ">
                                    <label class="layui-form-label">受限IP列表</label>
                                    <div class="layui-input-block">
                                        <textarea name="Be_limited_to_ip" placeholder="统计代码" class="layui-textarea">{{$set["Be_limited_to_ip"]}}</textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">登录次数</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="Number_of_logins" value="{{$set["Number_of_logins"]}}"  placeholder="最大登录失败次数" autocomplete="off" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">网站关闭</label>
                                    <div class="layui-input-block">
                                        <input type="checkbox" name="checkbox" value="1" title="是">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-tab-item">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">driver</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="driver" value="{{$set["driver"]}}"  placeholder="driver" autocomplete="off" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">host</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="host" value="{{$set["host"]}}"  placeholder="host" autocomplete="off" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">port</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="port" value="{{$set["port"]}}" placeholder="port" autocomplete="off" class="layui-input ">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <input type="submit" class="layui-btn" value="立即提交"/>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
@section("js")
    <script src="/admin/js/common.js?v=2.0.1"></script>
    <script>
        layui.use('cat-list');
        layui.use('layer', function () {
            var layer = layui.layer;
            //提示
            @if(Session::has('message'))
            layer.msg("{{Session::get('message')}}", {icon: "{{Session::get('icon')}}"}, function () {
            });
            @endif
            //字段验证
            @if($errors->any())
            @foreach($errors->all() as $error)
            layer.msg('{{ $error }}', {icon: 5}, {anim: 1});
            @endforeach
            @endif

        });
    </script>
@endsection
