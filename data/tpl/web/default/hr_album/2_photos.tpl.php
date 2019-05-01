<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>相册管理</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<link rel="stylesheet" type="text/css" href="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/layui/css/layui.css" media="all">
	<style>
     body{padding:10px 15px 10px 15px;}
     .piclist ul {
    padding-left:3%; 	
    width:100%;
	}
.piclist li {
	position:relative;
    float: left;
    width: 200px;
    height: 312px;
    overflow: hidden;
    margin-right: 30px;
}
.piclist li  img {
    float: left;
    width: 188px;
    height: 250px;
    overflow: hidden;
}
.piclist li:active {
	background-color:#0000;
}
.cover-pic{
	position:absolute;z-index:2;background-color:rgba(0,0,0,0.5);width:188px;height:250px;text-align:center;color:#FFF;line-height:250px;letter-spacing:2px;font-size:20px
}
     
.pagination {
    display: inline-block;
    padding-left: 0;
    margin: 5px 0;
    border-radius: 4px;
}
.pagination>li {
    display: inline;
}
.pagination>li:first-child>a, .pagination>li:first-child>span {
    margin-left: 0;
    border-bottom-left-radius: 4px;
    border-top-left-radius: 4px;
}
.pagination>.active>a, .pagination>.active>span, .pagination>.active>a:hover, .pagination>.active>span:hover, .pagination>.active>a:focus, .pagination>.active>span:focus {
    z-index: 2;
    color: #fff;
    cursor: default;
    background-color: #009688;
    border-color: #009688;
}
.pagination>li>a, .pagination>li>span {
    position: relative;
    float: left;
    padding: 6px 12px;
    margin-left: -1px;
    line-height: 1.428571429;
    text-decoration: none;
    background-color: #fff;
    border: 1px solid #ddd;
}
.pagination>.active>a, .pagination>.active>span, .pagination>.active>a:hover, .pagination>.active>span:hover, .pagination>.active>a:focus, .pagination>.active>span:focus {
    z-index: 2;
    color: #fff;
    cursor: default;
    background-color: #009688;
    border-color: #009688;
}
.clearfix{clear:both}
.pictext{
	position: absolute;
    z-index: 2;
    bottom: 62px;
    left: 0;
    height: 30px;
    background-color: rgba(0,0,0,0.5);
    color: #FFFFFF;
    line-height: 30px;
    text-align: center;
    width: 188px;
}
	</style>
</head>
<body>
<div class="piclist">
   <ul style="margin-left:20px"> 
   <?php  if(is_array($thumbs)) { foreach($thumbs as $row) { ?>
   <li data-pid="<?php  echo $row['pid'];?>" ><img src="<?php  echo $row['pics'];?>"><span class="pictext"><?php  echo date('Y-m-d',$row['addtime'])?></span></li>   
   <?php  } } ?>
   </ul>
 <div class="clearfix"></div>  
</div>
<div class="text-right" style="float: right;">
		<?php  echo $pager;?>
	</div>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/layui/layui.js"></script>
<script type="text/javascript">
$(function(){
    $('.piclist li').hover(function(){
    	var html = '<div class="cover-pic">删除图片</div>'
        $(this).append(html);
    },function(){
    	$(this).find('.cover-pic').remove();
    });
})
$(".piclist li").on('click',function(){
	    var $this = $(this);
		var src = $(this).find('img').attr('src'); 
		var pid = $(this).data('pid');
		var r=confirm("确认删除此张图片么？")
		  if (r==true)
		    {
			  $.ajax({
			 	   type: 'post',
			        url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=list&m=hr_album&op=delpic',
			        dataType: 'json',
			        data: {pid:pid,src:src},
			        success: function (res) {          	                          
			            if(res.result == 'success'){
			            	$this.remove();
			            }else{
			            	alert('资源下载失败！请检查网络是否通畅！');
			            }
			        }
			    });
		    }
		  else
		    {
			  location=location;
		    }
	 });
</script>
</body>
</html>