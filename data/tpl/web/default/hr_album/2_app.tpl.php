<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>模板分类管理</title>
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
<a href="<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=app&m=hr_album&op=add" class="layui-btn" style="float: right;margin-bottom: 10px;margin-right:10px;">添加应用</a>
<form action="" method="post" onsubmit="return formcheck(this)">
<table class="layui-table">
  <colgroup>
    <col width="100">
    <col width="200">
    <col width="400">
    <col width="200">
    <col width="200">
    <col width="200">  
  </colgroup>
  <thead>
    <tr>
		<th>排序</th>
		<th>appid</th>
		<th>缩略图</th>
		<th>标题</th>
		<th>描述</th>
		<th>操作</th>
    </tr> 
  </thead>
  <tbody>
    <?php  if(is_array($list)) { foreach($list as $row) { ?>
		<tr class="pics">
		    <td>
				<input class="layui-input" name="displayorder[<?php  echo $row['id'];?>]" value="<?php  echo $row['displayorder'];?>">
			</td>
			<td>
				<img class="picss" style="width:50px;height:50px;" data-url="<?php  echo $imgurl;?><?php  echo $row['thumb'];?>" src="<?php  echo $imgurl;?><?php  echo $row['thumb'];?>" />
			</td>
			<td>
				<span><?php  echo $row['appid'];?></span>
			</td>
			<td>
				<span><?php  echo $row['title'];?></span>
			</td>
			<td>
				<span><?php  echo $row['desc'];?></span>
			</td>
			<td>
				<div class="link-group">
					<div class="layui-btn-group">
					  <a  class="layui-btn cubtn" href= "<?php  echo $this->createWebUrl('app', array('op'=>'add','id' => $row['id']))?>">编辑</a>
					  <button type="button" class="layui-btn  layui-btn-danger cubtn delpic" data-id="<?php  echo $row['id'];?>">删除</button>
					</div>
				</div>
			</td>
		</tr>
		<?php  } } ?>
  </tbody>
</table>
  <tr style="float: right;  margin-right: 30px;">
		<td>
								<input name="submit" type="submit" class="layui-btn cubtn qrcode" value="提交" style="float: right; margin-right: 20px;">								<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
							</td>					
						</tr>
						</form>
<div style=float:right;">
		<?php  echo $pager;?>
</div>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/layui/layui.js"></script>
<script type="text/javascript">
$(".pics .delpic").on('click',function(){
	var pid = $(this).data("id");
	var that = $(this);
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('确定删除么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
			  //layer.msg('的确很重要', {icon: 1});
				$.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=app&m=hr_album&op=del",{id:pid}, function(data) {
					var data = $.parseJSON(data);
					if(data.result){
						layer.msg('删除成功', {icon: 1}); 
						that.parent().parent().parent().parent().remove();
					}else{
						layer.msg('删除失败', {icon: 2});
					}					
				});
			}, function(){
			  
			});
	});
});
$(".doshowed").on('click',function(){
	var id = $(this).data("id");
	var showed = $(this).data("showed");
	var that = $(this);
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('确定修改分类么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				var index = layer.load(2, {
					  shade: [0.5,'#000'] //0.1透明度的白色背景
				});
				$.ajax({
				 	   type: 'post',
				        url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=skincate&op=showed&m=hr_album',
				        dataType: 'json',
				        data:{id:id,showed:showed},
				        success: function (res) {   
				        	layer.close(index);
				            if(res.result){
				            	layer.msg('分类修改成功',function(){
				            		location=location;
				            	});
				            	
				            }else{
				            	layer.msg('分类修改失败');
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