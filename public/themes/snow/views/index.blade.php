    <div class="mdui-container-fluid blogBody">
        <div class="bg-ovo"></div>
        <div class="left-page-list mdui-col-md-8">
            <div class="nice">
                <div class="mdui-typo">
                    <h4>Hello Word</h4>
                    <p>Just So So ...</p>
                </div>
            </div>
            @foreach($content as $con)
                <div class="pageTag shadow-5">
                    <div class="cardImage">
                        <a href="/archives/{{$con->slug}}.html">
                            <div class="cardImage-img" style="background: url('/themes/snow/assets/img/test.jpg')"></div>
                            <div class="readMore" mdui-tooltip="{content: '阅读全文'}">
                                <div><i class="mdui-icon material-icons">keyboard_arrow_left</i></div>
                                <div class="sqReadMore"></div>
                            </div>
                        </a>
                        <div class="hiddenSquare"></div>
                    </div>
                    <div class="cardContent">
                        <div class="mdui-typo">
                            <h4>{{$con->title}}</h4>
                            <div style="margin-bottom: 10px">
                                作者：<a>{{$con->user->name}}</a>&nbsp;
                                时间：<a>{{$con->created_at->diffForHumans()}}</a>&nbsp;
                                标签：<a></a><a href="">{{$con->metas->types}}</a>
                            </div>
                            <p style="font-size: 0.92em">
                                {!! str_limit($con->text,88,"... ...")!!}
                            </p>
                        </div>
                        <div class="ovo">
                            <div class="ovo-icon">
                                <div class="dataIcon mdui-ripple">
                                    <i class="mdui-icon material-icons">check</i>
                                    <span style="margin: 0 3px">:</span>
                                    <span>3</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            <div class="nav-position">
                <div class="nav">
                    下一页
                </div>
            </div>
        </div>
        <div class="right-pageTagMenu mdui-col-md-3 mdui-col-offset-md-1">
            <div class="vBox">
                <div class="control shadow-2">
                    <div class="search">
                        <div class="searchBtn justCenter">
                            <i class="mdui-icon material-icons">search</i>
                        </div>
                        <div class="searchColor"></div>
                        <form action="" method="post">
                            <input type="text" name="s" placeholder="搜索内容" class="searchInput" autocomplete="off" />
                        </form>
                    </div>
                    <div class="mdui-divider control-border"></div>
                    <div class="mdui-typo">
                        <h4>I'm crying</h4>
                        <div class="sortBy">
                            <div>
                                <button class="mdui-btn mdui-ripple flexTag" value="0">最新回复</button>
                                <div class="cat cat1"></div>
                            </div>
                            <div>
                                <button class="mdui-btn mdui-ripple flexTag" value="1">最新文章</button>
                            </div>
                            <div>
                                <button class="mdui-btn mdui-ripple flexTag" value="2">文章分类</button>
                            </div>
                        </div>
                        <div class="colorBar"></div>
                        <div>
                            <div class="tabCard firstTabCard">
                                <h5>最新回复</h5>
                                <div class="boaCon marCenter">
                                    <ul>

                                    </ul>
                                </div>
                            </div>
                            <div class="tabCard">

                            </div>
                            <div class="tabCard">
                                <h5>文章分类</h5>
                                <ul>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>