这是我和同学一起开发的一个类似新闻发布web工程

架构的基本样子

![1539828111931](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\1539828111931.png)



当然中间数据库分片的mycat可以用keepalived+haproxy+mycat 实现mycat这个中间件的高可用上图自己画的时候忘掉了

整个项目使用springboot构建的，实现前后台分离，springboot在构建这样的微服务可以大量的节省开发人员的工作

由于开发的时间不长，上面还有很多待扩展的功能，前台展示有用户选择的兴趣推送不同的新闻热点，从而实现用户登录之后每一个人看到的东西不一样。

当然实现完整的商业项目需要加上完善的异常逻辑

基本实现的功能：

登录注册模块：用户注册和登录的实现

后台管理模块：权限管理，用户管理，评论管理

前台展示：新闻消息的展示，发表评论，elsticsearch搜索功能

项目所用的技术点

前端技术：`js`,`bootstrap`,`jQuery`

后端技术：`spring`，`springboot`，`redis`，`elasticsearch`,`mycat`,`mysql`

其中消息的测试数据是我用`python` 利用爬虫框架`scrapy`爬取的新闻网的内容,通过处理存入数据库



