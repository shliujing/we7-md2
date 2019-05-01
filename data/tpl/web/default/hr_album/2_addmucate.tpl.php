<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>添加音乐分类</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">	
	<link rel="stylesheet" type="text/css" href="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/layui/css/layui.css" media="all">
	<style>
.layui-form-pane .layui-form-label {
    min-width: 200px;
}
.layui-form-pane .layui-input-block {
    margin-left: 200px;
}
.demoimg,#logoimg{
	width: 38px;height: 38px; margin-left: 10px;display:none;
}
.demoimg img,#logoimg img{width: 100%; border-radius: 5px;height: 100%;}
	</style>
</head>
<body>
<form class="layui-form layui-form-pane" style="padding:20px;" action="<?php  echo url('site/entry/addmucate', array('m' => 'hr_album'));?>" method="post">
<input type="hidden" name="qiniuid" value="<?php  echo $qiniu['id'];?>">
  <div class="layui-form-item">
    <label class="layui-form-label">分类排序：</label>
    <div class="layui-input-block">
      <input type="text" name="displayorder"  lay-verify="required" value=""  placeholder="数值越大越靠前" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">分类名称：</label>
    <div class="layui-input-block">
      <input type="text" name="musictitle"  lay-verify="required" value="<?php  echo $musictitle;?>"  placeholder="请输入名称，不要超过三个字符否则会造成样式错乱。" autocomplete="off" class="layui-input">
    </div>
  </div>    
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="layui-form">立即提交</button>
      <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>     
    </div>
  </div>
</form>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/layui/layui.js"></script>
<script type="text/javascript">
layui.use(['form','upload'],function(){
    var form = layui.form();
    layui.upload({
    	  url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=setaudio&m=hr_album',
    	  type:'audio',
    	  success: function(res){
    		  layer.msg('音乐上传成功'); 
    		  $("#bgmusic").val(res.src);         
    	    console.log(res); //上传成功返回值，必须为json格式
    	  }
    	});      
});
$("#audiolink").on('click',function(){
	layui.use('layer', function(){
		layer.open({
			  type: 2, 
			  title: '搜索音乐',
			  content: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=seachmusic&m=hr_album',
			  area: ['600px', '600px'],
			});  
	});
});
</script>
</body>
</html>