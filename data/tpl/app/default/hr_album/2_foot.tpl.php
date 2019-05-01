<?php defined('IN_IA') or exit('Access Denied');?><style>
    body{
        background: #000;
    }
    @-webkit-keyframes zhuan
    {
        0%
        {
            -webkit-transform:rotate(0deg);
        }

        100%
        {
            -webkit-transform:rotate(360deg);
        }
    }
    @-webkit-keyframes guangzhu_ani
    {
        from  {-webkit-transform: scale(1.1);opacity: 1}
        to    {-webkit-transform: scale(1.2);opacity: 1}
    }
    .toolbar{
        z-index:90;
        width: 100%;
        height: 180px;
        position: fixed;
        bottom: 0;
        left: 0;
        background-image: url('<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/mask.no-compress.png');
        background-size: cover;
    }
    .edbox {
        position: fixed;
        display: -webkit-flex;
        display: flex;
        bottom: 0;
        width: 100%;
        background-image: url('<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/mask.no-compress.png');
        background-size: cover;
        height: 80px;
        opacity: 0;
        z-index: 1005;
        -webkit-animation: edbox1 3s linear both;
    }

    @-webkit-keyframes edbox1 {
        from {
            opacity: 0;
            -webkit-transform: translate(0px, 200px);
        }
        to {
            opacity: 1;
            -webkit-transform: translate(0px, 0px);
        }
    }
    .navItems {
        background-color: rgba(0, 0, 0, 0.6);
        width: 20%;
        color: #fff;
        text-align: center;
        margin-right: 2px;
    }

    .navMargin {
        margin-right: 0;
    }

    .border-r {
        border-top-right-radius: 5px;
    }

    .border-l {
        border-top-left-radius: 5px;
    }
    .bgbox {
        display: -webkit-box;
        width: 100%;
        height: 45px;
    }

    .fpic {
        position: relative;
        display: block;
        width: 45px;
        height: 75px;
        margin: 0 auto;
        margin-top: 5px;
    }
</style>
<?php  if($model == 'show') { ?>
<div class="toolbar">
    <div style="position: absolute;left:20px;bottom:50px;height: 40;line-height: 40px;color:#fff;font-size:14px;text-align: left">
        <?php  echo $item['click'];?> 浏览<span style="margin: 0px 2px;">·</span> <?php  echo $item['share'];?> 分享 <span style="margin: 0px 2px;">·</span> <span id="zan"><?php  echo $item['best'];?> </span>赞
    </div>
    <div id="reviewbox" style="cursor:pointer;width:38px;height:38px;position: absolute;left:15px;bottom:15px;">
        <img style="width:100%;height: 100%;" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/pl.png" alt="">
    </div>
    <div id="like_div" style="cursor:pointer;width:38px;height:38px;position: absolute;left:80px;bottom:15px;">
        <img id="like" style="width:100%;height: 100%;" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/<?php  if($isbested) { ?>xin2.png<?php  } else { ?>xin1.png<?php  } ?>" alt="">
    </div>
    <div id="share" style="cursor:pointer;position:absolute;bottom:15px;font-size:14px;right:20px;width:100px;height:38px;line-height:38px;color:#ffFFFF;text-align:center;border-radius:6px;letter-spacing:1px;background-color: #2CB144;box-shadow:1px  2px 0 1px #000000">分享相册</div>
    <?php  if($cfg['ispay']) { ?><div id="pay" style="cursor:pointer;width:38px;height:38px;border-radius: 100%;background-color: #ff4f49;position: absolute;left:150px;line-height:40px;font-weight:bold;font-size:18px;bottom:15px;text-align: center;color:#ffFFFF;">赏</div><?php  } ?>
    <div id="zhizuo" style="cursor:pointer;position:absolute;bottom:15px;font-size:14px;right:140px;width:100px;height:38px;line-height:38px;text-align:center;color:#ffFFFF;border-radius:6px;letter-spacing: 1px;background-color: #ed494e;box-shadow:1px  2px 0 1px #000000">点击制作</div>
</div>
<?php  } ?>
<?php  if($model == 'edit') { ?>
<div class="edbox">
    <div class="navItems border-r" id="setSkin">
        <div class="bgbox">
            <image class="fpic" src='<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/mb.png'></image>
        </div>
    </div>
    <div class="navItems border-r border-l"  id="setMusic">
        <div class="bgbox">
            <image class="fpic" src='<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/musics.png'></image>
        </div>
    </div>
    <div class="navItems border-r border-l"  id="setPic">
        <div class="bgbox">
            <image class="fpic" src='<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/pic.png'></image>
        </div>
    </div>
    <div class="navItems border-r border-l"  id="setText">
        <div class="bgbox">
            <image class="fpic" src='<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/txt.png'></image>
        </div>
    </div>
    <div class="navItems navMargin border-l"  id="setSave">
        <div class="bgbox">
            <image class="fpic" src='<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/save.png'></image>
        </div>
    </div>
</div>
<?php  } ?>
<script type="text/javascript">
    function random(min,max)
    {
        return Math.floor(min+Math.random()*(max-min));
    }
    function on_music_init()
    {
        if(e_title != "")
        {
            document.title = e_title.replace("<br>", "\n").replace("<br/>", "\n");;
        }
        else
        {
            document.title = "音乐相册";
        }
        create_music();
        loadingdiv_out();
    }
    call_me(on_music_init);
    //音乐播放
    var e_music_player = new Audio();
    function play_music()
    {
        if(e_music_url == '')
        {
            return ;
        }
        mymusic = e_music_url;
        e_music_player.src  = mymusic;
        e_music_player.loop = 'loop';
        e_music_player.onerror = function(){
            e_music_player.src = url;
            e_music_player.play();
            e_music_player.onerror = null;
        }

        e_music_player.play();
        //检查音乐是否缓冲成功
        setTimeout(function()
        {
            var timeRanges = e_music_player.buffered;
            var timeBuffered = timeRanges.end(timeRanges.length - 1);
            var bufferPercent = timeBuffered /e_music_player.duration;
            console.log('music:'+bufferPercent);

            if(isNaN(bufferPercent) || bufferPercent == 0)
            {
                e_music_player.src = url;
                e_music_player.play();
            }
        },5000);


        if($('#sound_image'))
        {
            $('#sound_image').css("animation","zhuan 1s linear infinite");
        }

        bplay = 1;
    }

    function create_music()
    {
        if(e_music_url == '')
        {
            return ;
        }
        play_music();
        sound_div = document.createElement("div");
        sound_div.setAttribute("ID", "cardsound");
        sound_div.style.cssText = "position:fixed;right:20px;top:25px;z-index:50;visibility:visible;";
        sound_div.onclick = switchsound;
        bg_htm  = "<img id='sound_image' src='<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/music_note_big.png' style='-webkit-animation:zhuan 1s linear infinite;'>";
        txt_htm = "<div id='music_txt' style='color:white;position:absolute;left:-40px;top:30px;width:60px'></div>"
        sound_div.innerHTML = bg_htm  + txt_htm;
        document.body.appendChild(sound_div);
    }

    var bplay = 0;

    function switchsound()
    {
        au = e_music_player;
        ai = $('#sound_image');
        if(au.paused)
        {
            bplay = 1;
            au.play();
            ai.css("animation","zhuan 1s linear infinite");
            $("#music_txt").text("打开");
            $("#music_txt").css("visibility","visible");
            setTimeout(function(){$("#music_txt").css("visibility","hidden")}, 2500);
        }
        else
        {
            bplay = 0;
            au.pause();
            ai.css("animation","");
            $("#music_txt").text("关闭");
            $("#music_txt").css("visibility","visible");
            setTimeout(function(){$("#music_txt").css("visibility","hidden")}, 2500);
        }
    }

    function loadingdiv_out()
    {
        $('loadingdiv').css("animation","fadeout 0.3s linear both");
        if(navigator.userAgent.indexOf('Windows Phone')!=1)
        {
            $('#loadingdiv').css("display","none");
        }

        setTimeout(function()
        {
            $('#loadingdiv').css("display","none");
            $.post("<?php  echo $_W['siteroot'];?>app/index.php?i=<?php  echo $_W['uniacid'];?>&c=entry&do=click&m=hr_photos&id=<?php  echo $id;?>");
        },400);
    }
    var get_pid = function(url){
        url = url.replace(/\?imageView2\/2\/w\/(\d+)\/q\/(\d+)/ig,'');
        var index1 = url.lastIndexOf("/");
        if(index1 != -1)
        {
            url = url.substr(index1+1,url.length);
            url = url.replace(/\.jpg|\.jpeg|\.gif|\.png/ig,'');
        }
        return url;
    }
    $("#apps").on('click',function(){
        wx.miniProgram.navigateTo({url:'/hr_album/pages/user/app',
            success: function(){
                console.log('success')
            }
        });
    });
    $("#zhizuo").on('click',function(){
        wx.miniProgram.redirectTo({url:'/hr_album/pages/index/index',
            success: function(){
                console.log('success')
            }
        });
    });
    $("#share").on('click',function(){
        wx.miniProgram.navigateTo({url:'/hr_album/pages/share/share?id=<?php  echo $id;?>&shareimg=<?php  echo $this->imgurl().$data[0]['pics']?>&sharetitle=<?php  echo $item['title'];?>',
            success: function(){
                console.log('success')
            }
        });
    });
    $("#reviewbox").on('click',function(){
        wx.miniProgram.navigateTo({url:'/hr_album/pages/review/review?id=<?php  echo $id;?>&openid=<?php  echo $item['openid'];?>',
            success: function(){
                console.log('success')
            }
        });
    });
    <?php  if($model == 'show' && $cfg['ispay']) { ?>
    $("#pay").on('click',function(){
        wx.miniProgram.navigateTo({url:'/hr_album/pages/pay/pay?pid=<?php  echo $id;?>&openid=<?php  echo $item['openid'];?>&nickname=<?php  echo $item['nickname'];?>&avatar=<?php  echo $item['avatar'];?>',
            success: function(){
                console.log('success')
            }
        });
    });
    <?php  } ?>
        <?php  if($model == 'edit') { ?>
        $("#setSkin").on('click',function(){
            wx.miniProgram.redirectTo({url:'/hr_album/pages/user/style?pid=<?php  echo $id;?>',
                success: function(){
                    console.log('success')
                }
            });
        });
        $("#setMusic").on('click',function(){
            wx.miniProgram.redirectTo({url:'/hr_album/pages/user/music?pid=<?php  echo $id;?>',
                success: function(){
                    console.log('success')
                }
            });
        });
        $("#setPic").on('click',function(){
            wx.miniProgram.redirectTo({url:'/hr_album/pages/user/pics?pid=<?php  echo $id;?>',
                success: function(){
                    console.log('success')
                }
            });
        });
        $("#setText").on('click',function(){
            wx.miniProgram.redirectTo({url:'/hr_album/pages/user/text?pid=<?php  echo $id;?>',
                success: function(){
                    console.log('success')
                }
            });
        });
        $("#setSave").on('click',function(){
            wx.miniProgram.redirectTo({url:'/hr_album/pages/user/save?pid=<?php  echo $id;?>&thumb=<?php  echo $this->imgurl()?><?php  echo $data[0]['pics'];?>&title=<?php  echo $item['title'];?>&isshow=<?php  echo $item['isshow'];?>',
                success: function(){
                    console.log('success')
                }
            });
        });
        <?php  } else { ?>
        <?php  if(!$isbested) { ?>
        $("#like_div").on('click',function(){
            $.ajax({
                type:'post',
                url: '<?php  echo $_W['siteroot'];?>app/index.php?i=<?php  echo $_W['uniacid'];?>&from=wxapp&c=entry&a=wxapp&do=dobest&&m=hr_album',
                data:{'id':"<?php  echo $item['id'];?>"},
                dataType: "json",
                success: function(data){
                    var img = '<?php  echo $_W['siteroot'];?>addons/hr_album/style/images/xin2.png';
                    var zan = '<?php  echo $item['best']+1?>';
                    $("#like").attr('src',img);
                    $("#zan").text(zan);
                }
            });
        });
        <?php  } ?>
        <?php  } ?>

</script>
