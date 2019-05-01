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
.cubtn{
	height: 30px;
    line-height: 30px;
}
	</style>
</head>
<body>
<div class="layui-form-item">
    <div class="layui-input-block" style="margin-left:0">
      <input id="keyword" style="width:30%;float:left" type="text" name="nickname" value="" placeholder="请输入相册名称进行搜索" autocomplete="off" class="layui-input">      
      <button id="seachuser" type="button" style="float:left;margin-left:5px;margin-right:5px;" class="layui-btn layui-btn-normal">搜索相册</button>    
      <?php  if($isshare) { ?><a href="<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=isharedo&m=hr_album" class="layui-btn layui-btn-danger" style="float: right;margin-bottom: 10px;">用户展示作品审核</a><?php  } ?>          
    </div>
  </div>
<table class="layui-table">
  <colgroup>
    <col width="100">
    <col width="200">
    <col width="100">
     <col width="100">
    <col width="100">
    <col width="200">
    <col width="400">
    <col width="200">
    <col width="200">
  </colgroup>
  <thead>
    <tr>
      <th>序号</th>	
      <th>粉丝</th>	
	  <th>浏览量</th>
	  <th>分享数</th>
	  <th>状态</th>
	  <th>相片</th>
	  <th>相册标题</th>
	  <th>添加时间</th>
	  <th>操作</th>
    </tr> 
  </thead>
  <tbody class="pics">
    <?php  if(is_array($list)) { foreach($list as $row) { ?>
		<tr>
		    <td>
				<span><?php  echo $row['id'];?></span>
			</td>
			<td>
				<a href="<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=list&m=hr_album&mid=<?php  echo $row['openid'];?>"><?php  if($row['avatar']) { ?><img src="<?php  echo $row['avatar'];?>" style="width:25px;height:25px;"/><?php  } ?><?php  echo $row['nickname'];?></a>
			</td>
			<td>
				<span><?php  echo $row['click'];?></span>
			</td>
			<td>
				<span><?php  echo $row['share'];?></span>
			</td>
			<td>
				<?php  if(!$row['isshow']) { ?>
				<button class="layui-btn layui-btn-small" data-uid="'<?php  echo $row['id'];?>'" data-status="1" onclick="doshenhe('<?php  echo $row['id'];?>','1')">普通</button>
				<?php  } else { ?>
				<button class="layui-btn layui-btn-small layui-btn-danger" data-uid="'<?php  echo $row['id'];?>'" data-status="0" onclick="doshenhe('<?php  echo $row['id'];?>','0')">热门</button>
				<?php  } ?>
			</td>
			<td class="reviewpic" data-id="<?php  echo $row['id'];?>">
				<span><?php  if($row['piced']['0']) { ?><img src="<?php  echo $row['piced']['0'];?>" style="border-radius:5px;margin-right:5px;width:30px;height:30px;"/><?php  } ?>
					  <?php  if($row['piced']['1']) { ?><img src="<?php  echo $row['piced']['1'];?>" style="border-radius:5px;margin-right:5px;width:30px;height:30px;"/><?php  } ?>
					  <?php  if($row['piced']['2']) { ?><img src="<?php  echo $row['piced']['2'];?>" style="border-radius:5px;width:30px;height:30px;"/><?php  } ?>
				</span>
			</td>
			<td>
				<span><?php  echo $row['title'];?></span>
			</td>			
			<td class=""><?php  echo date("Y-m-d H:i",$row['addtime'])?></td>
			<td>
			   <div class="layui-btn-group">				   
				    <button class="layui-btn layui-btn-danger delpic" data-id="<?php  echo $row['id'];?>">删除</button>
				  </div>
			</td>
		</tr>
		<?php  } } ?>
  </tbody>
</table>
<div class="page" style=float:right;">
		<?php  echo $pager;?>
</div>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/layui/layui.js"></script>
<script type="text/javascript">
$(".pics").on('click','.pcshow',function(){
var url = $(this).data("url");	
layui.use('layer', function(){
var layer = layui.layer; 	
parent.layer.open({
	  type: 2,
	  title: '查看用户相册',
	  shadeClose: true,
	  shade: 0.8,
	  area: ['500px', '100%'],
	  content: [url,'no'] 
}); 
});
});
$(".pics").on('click','.delpic',function(){
	var pid = $(this).data("id");
	var that = $(this);
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('确定删除此相册么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
			  //layer.msg('的确很重要', {icon: 1});
				$.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=list&m=hr_album",{id:pid}, function(data) {
					var data = $.parseJSON(data);
					if(data.result){
						layer.msg('删除成功', {icon: 1});
						that.parent().parent().parent().remove();
					}else{
						layer.msg('删除失败', {icon: 2});
					}					
				});
			}, function(){
			  
			});
	});
});
function doshenhe(id,val){	
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('确定更改此相册状态？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
			  //layer.msg('的确很重要', {icon: 1});
				$.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=list&m=hr_album&op=shenhe",{id:id,val:val}, function(data) {
					var data = $.parseJSON(data);
					if(data.result){
						layer.msg('修改成功', {icon: 1},function(){
							window.location.reload(); 
						});
					}else{
						layer.msg('删除失败', {icon: 2});
					}					
				});
			}, function(){
			  
			});
	});
}
$(".pics").on('click','.reviewpic',function(){
	var pid = $(this).data("id");
	$.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=showpic&m=hr_album",{id:pid}, function(data) {
		var data = $.parseJSON(data);
		layui.use('layer', function(){
			layer.photos({
			    photos: data
			    ,anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
			  });
		});					
	});
});
$("#seachuser").on('click',function(){
	var keyword = $("#keyword").val();
	if(keyword.length < 2){
		layui.use('layer', function(){
			var layer = layui.layer;
			layer.msg('请输入相册名称'); 
		});
		return;
	}
	$.ajax({
  	   type: 'post',
         url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=list&m=hr_album&op=keyword',
         dataType: 'json',
         data: {keyword: keyword},
         success: function (ret) {   
         	if(ret.result){          		
         		$(".pics").html('');
         		$(".page").hide();
         		$(".pics").html(ret.html);
         	}else{
         		
         	}
         }
     });
});
$("#okusers").on('click',function(){
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('确定审核全部相册么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				$.ajax({
				  	   type: 'post',
				         url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=list&m=hr_album&op=isokusers',
				         dataType: 'json',
				         success: function (ret) {   
				        	 if(ret.result){
				        		 layer.msg('批量审核成功', {icon: 1});
				        		 window.location.reload(); 
				        	 }
				         }
				     });
			}, function(){
			  
			});
	});
	
});
</script>
</body>
</html>