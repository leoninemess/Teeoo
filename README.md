"# Teeoo" 
## Hello Teeoo

> 若你花了时间了解你的梦想是什么，以及你真正想要的东西，你必须知道，你永远都有事情要做，而你得成为最努力的人。

------------

### 新 博 客,自 豪 的 采 用 了 自 己 开 发 的 博 客！ :tw-1f62c:

记录下开发博客用到的技术

一.后端
- 	环境:`Nginx+ PHP + MySQL`
- 	PHP框架:`Laravel5.6`
- 	~~文件存储系统:七牛云存储~~
- 	PHP包管理:`Composer`
- 	版本控制:`GIT`

所用到的`composer`包:
```json
{
        "barryvdh/laravel-ide-helper": "^2.4",
        "ezyang/htmlpurifier": "^4.10",
        "facuz/laravel-themes": "^3.1",
        "fideloper/proxy": "^4.0",
        "guzzlehttp/guzzle": "^6.3",
        "jiaxincui/closure-table": "^2.1",
        "jildertmiedema/laravel-plupload": "^0.4.1",
        "laravel/framework": "5.6.*",
        "laravel/tinker": "^1.0",
        "mews/purifier": "^2.1",
        "mpociot/laravel-test-factory-helper": "^0.5.0",
        "overtrue/laravel-lang": "~3.0",
        "spatie/laravel-pjax": "^1.3",
        "thomaswelton/laravel-gravatar": "~1.0",
        "voku/anti-xss": "^4.0"
}
```

二.前端
> 前端默认使用了**@往秋不往冬月**开发的typecho主题,如果你熟悉PHP你完全可以定制你的主题

使用命令行执行
```php
php artisan theme:create default
```
这将创建以下目录结构：

```markdown
├── public/
    └── themes/
	└── default/
		├── assets
        	|	├── css/
			|	├── img/
            |	└── js/
        ├── layouts/
        	├── partials/
        └── sections/
            ├── views/
	        └── widgets/
```
然后你就可以开始定制你的主题了

### 前台界面展示

![前台界面](http://blog.dqtourism.cc/uploads/article/20180417/2018-04-17-03-25-55-5ad569439e16d.png "前台界面")

![前台界面](http://blog.dqtourism.cc/uploads/article/20180417/2018-04-17-03-26-13-5ad5695578372.png "前台界面")

### 后台界面展示

![后台界面](http://blog.dqtourism.cc/uploads/article/20180417/2018-04-17-03-26-30-5ad56966dd88b.png "后台界面")

![后台界面](http://blog.dqtourism.cc/uploads/article/20180417/2018-04-17-03-26-49-5ad569793ce21.png "后台界面")

### 开发日志
- Teeoo 2018-04-13
	- 	Teeoo v1.0 发布
- Teeoo 2018-04-14
	- 	完成Tag,文章等等CURD
	- 	完成评论邮件通知
	- 	修改iconfont
	- 	完成基本设置Mysql版本需要大于等于5.7
	- 	修复若干BUG
- Teeoo 2018-04-16
	- 	更新个人设置
	- 	修改文章修改BUG
	- 	一些配置放入.env中

