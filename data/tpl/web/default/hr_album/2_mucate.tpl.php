<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>音乐管理管理</title>
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
<button id="demusic" class="layui-btn layui-btn-danger" style="float: right;margin-bottom: 10px;">导入内置分类</button>
<a href="<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=addmucate&m=hr_album" class="layui-btn" style="float: right;margin-bottom: 10px;margin-right:10px;">添加音乐分类</a>
<form action="" method="post" onsubmit="return formcheck(this)">
<table class="layui-table">
  <colgroup>
    <col width="100">
    <col width="400">
    <col width="200">
    <col width="200">  
  </colgroup>
  <thead>
    <tr>
      <th>排序</th>
      <th>分类名称</th>
	  <th>添加时间</th>
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
				<span><?php  echo $row['title'];?></span>
			</td>
			<td>
				<span><?php  echo date("Y-m-d h:i",$row['addtime'])?></span>
			</td>
			<td>
				<div class="link-group">
					<div class="layui-btn-group">
					  <a  class="layui-btn cubtn qrcode" href= "<?php  echo $this->createWebUrl('mucate', array('op'=>'edit','id' => $row['id']))?>">编辑</a>
					  <?php  if(!$row['oldtitle']) { ?>
					  <button type="button" class="layui-btn  layui-btn-danger cubtn delpic" data-id="<?php  echo $row['id'];?>">删除</button>
					  <?php  } ?>
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
		  layer.confirm('确定删除此音乐分类么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
			  //layer.msg('的确很重要', {icon: 1});
				$.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mucate&m=hr_album&op=delmucate",{id:pid}, function(data) {
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
$("#demusic").on('click',function(){
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('确定导入系统内置分类么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				$.ajax({
				 	   type: 'post',
				        url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mucate&op=sysmucate&m=hr_album',
				        dataType: 'json',
				        success: function (res) {          	                          
				            if(res.result == 'success'){
				            	layer.msg('音乐分类导入成功',function(){
				            		location=location;
				            	});
				            	
				            }else{
				            	layer.msg('音乐分类导入失败');
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