<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <title>酷炫相册</title>
    <link rel='Shortcut Icon' type='image/x-icon' href='<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/windows.ico'>
    <script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/js/jquery-2.2.4.min.js"></script>
    <link href="<?php  echo $_W['siteroot'];?>addons/hr_album/style/css/animate.css" rel="stylesheet">
    <script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/layer/layer.js"></script>
    <link rel="stylesheet" href="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/font-awesome-4.7.0/css/font-awesome.min.css?v=1.8">
    <link href="<?php  echo $_W['siteroot'];?>addons/hr_album/style/css/default.css" rel="stylesheet">
    <script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/js/app.js?v=1.3"></script>
    <style>
        * {
            font-family: "Microsoft YaHei", 微软雅黑, "MicrosoftJhengHei", 华文细黑, STHeiti, MingLiu
        }
    </style>
    <script>
    Win10.onReady(function () {

        //设置壁纸
        Win10.setBgUrl({
            main: '<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/wallpapers/windows.jpg',
            mobile: '<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/wallpapers/mobile.jpg',
        });

        Win10.setAnimated([
            'animated flip',
            'animated bounceIn',
        ], 0.01);
    });
    </script>
</head>
<body>
<div id="win10">
    <img id="win10_img_loader1" class="img-loader" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/wallpapers/windows.jpg">
    <img id="win10_img_loader2" class="img-loader" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/wallpapers/login.jpg">
    <div class="desktop">
        <div id="win10-shortcuts">
        	<div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=module&a=manage-account&do=setting&m=hr_album&op=set','基本设置')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>/addons/hr_album/style/images/manage/icon/set.png"/></div>
                <div class="title">基本设置</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mob&m=hr_album','模板消息')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/photo.png"/></div>
                <div class="title">模板消息</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=costdata&m=hr_album','提现管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/pl.png"/></div>
                <div class="title">提现管理</div>
            </div>        
             <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=user&m=hr_album','用户管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/user.png"/></div>
                <div class="title">用户管理</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=list&m=hr_album','相册管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/photo.png"/></div>
                <div class="title">相册管理</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=photos&m=hr_album','图片管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/pic.png"/></div>
                <div class="title">图片管理</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=music&m=hr_album','音乐管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/music.png"/></div>
                <div class="title">音乐管理</div>
            </div> 
             <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=ads&m=hr_album','广告管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/ad.png"/></div>
                <div class="title">广告管理</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=review&m=hr_album','广告管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/jubao.png"/></div>
                <div class="title">评论管理</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=app&m=hr_album','应用跳转管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/ad.png"/></div>
                <div class="title">应用跳转管理</div>
            </div>
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=skin&m=hr_album','模板管理')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/app1.png"/></div>
                <div class="title">模板管理</div>
            </div>        
            <div class="shortcut" onclick="Win10.openUrl('<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=downskin&m=hr_album','模板下载')">
                <div class="icon"><img src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/manage/icon/update.png"/></div>
                <div class="title">模板下载</div>
            </div>
        </div>
    </div>
    <div id="win10-menu" class="hidden">
        <div class="list win10-menu-hidden animated animated-slideOutLeft">
            <div class="item" onclick="location='<?php  echo $_W['siteroot'];?>web/index.php?c=home&a=welcome&';"><span class=" icon fa fa-user-o fa-fw"></span>退出</div>
        </div>
        <div class="blocks">
            <div class="menu_group">
                <div class="title">welcome</div>
                <div class="block" loc="1,1" size="6,4">
                    <div class="content"><h2 style="text-align: center;">欢迎使用酷炫相册</h2></div>
                </div>
            </div>
        </div>
        <div id="win10-menu-switcher"></div>
    </div>
    <div id="win10_command_center" class="hidden_right">
        <div class="title">
            <h4 style="float: left">消息中心 </h4>
            <span id="win10_btn_command_center_clean_all">全部清除</span>
        </div>
        <div class="msgs"></div>
    </div>
    <div id="win10_task_bar">
        <div id="win10_btn_group_left" class="btn_group">
            <div id="win10_btn_win" class="btn"><span class="fa fa-windows"></span></div>
        </div>
        <div id="win10_btn_group_middle" class="btn_group"></div>
        <div id="win10_btn_group_right" class="btn_group">
            <div class="btn" id="win10_btn_time">
                0:00<br/>
                1993/8/13
            </div>
            <div class="btn" id="win10_btn_command"><span id="win10-msg-nof" class="fa fa-comment-o"></span></div>
            <div class="btn" id="win10_btn_show_desktop"></div>
        </div>
    </div>
</body>
</html>