<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户管理</title>
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
    <div class="layui-input-block" style="width:80%;float:left;margin-left:0;display: block;">
      <input id="keyword" style="width:30%;float:left" type="text" name="keyword" value="" placeholder="请输入粉丝昵称进行搜索" autocomplete="off" class="layui-input">      
      <button id="seachuser" type="button" style="float:left;margin-left:5px;margin-right:5px;" class="layui-btn layui-btn-normal">搜索粉丝</button>          
    </div>
	<button id="delusers" type="button" style="float:right;margin-right:15px;" class="layui-btn">禁止粉丝列表</button>
  </div>
<table class="layui-table">
  <colgroup>
    <col width="100">
    <col width="200">
    <col width="150">
    <col width="100">
    <col width="200">
    <col width="300">
  </colgroup>
  <thead>
    <tr>
      <th>序号</th>	
      <th>粉丝昵称</th>	
	  <th>粉丝头像</th>
	  <th>余额</th>
	  <th>状态</th>	  
	  <th>加入时间</th>
	  <th>操作</th>
    </tr> 
  </thead>
  <tbody class="pics">
    <?php  if(is_array($list)) { foreach($list as $row) { ?>
		<tr id="user_<?php  echo $row['id'];?>">
		    <td>
				<span><?php  echo $row['id'];?></span>
			</td>			
			<td>
				<span><?php  echo $row['nickname'];?></span>
			</td>	
			<td>
				<span><img src="<?php  echo $row['avatar'];?>" style="border-radius:100%;width:25px;height:25px;"/></span>
			</td>	
			<td>
				<span><?php  echo $row['fee'];?> 元</span>
			</td>	
			<td>
				<button class="tr_<?php  echo $row['id'];?> layui-btn layui-btn-small <?php  if($row['status']) { ?>layui-btn-danger<?php  } ?>"><?php  if(!$row['status']) { ?>正常<?php  } else { ?>封禁<?php  } ?></button>
			</td>	
			<td class=""><?php  echo date("Y-m-d H:i",$row['addtime'])?></td>
			<td>
			   <div class="layui-btn-group">
				    <a class="layui-btn" href="<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=list&m=hr_album&mid=<?php  echo $row['openid'];?>">相册(<?php  echo $row['totalcard'];?>)</a>	
				    <button type="button" class="layui-btn edituser" data-id="<?php  echo $row['id'];?>">修改</button>			   
				    <button class="layui-btn layui-btn-danger" onclick="deluser('<?php  echo $row['openid'];?>','<?php  echo $row['id'];?>')">删除用户</button>
				  </div>
			</td>
		</tr>
		<?php  } } ?>
  </tbody>
</table>
<div style=float:right;">
		<?php  echo $pager;?>
</div>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/hr_album/style/component/layui/layui.js"></script>
<script type="text/javascript">
function deluser(id,ids){
	var pid = id;
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('删除用户将删除其所有相册，确认操作么？', {
			  btn: ['确定','取消'] //按钮
			}, function(){				
			  //layer.msg('的确很重要', {icon: 1});
				$.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=user&m=hr_album&op=deluser",{id:pid}, function(data) {
					var data = $.parseJSON(data);
					if(data.result){
						layer.msg('删除成功', {icon: 1});
						$("#user_"+ids).remove();
					}else{
						layer.msg('删除失败', {icon: 2});
					}					
				});
			}, function(){
			  
			});
	});
}
function dostatus(uid,status){
	if(parseInt(status) > 0){
		var strinfo = '确定恢复此用户么？'
	}else{
		var strinfo = '确定禁止此用户么？'
	}
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm(strinfo, {
			  btn: ['确定','取消'] //按钮
			}, function(){
				$.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=user&m=hr_album&op=status",{uid:uid,status:status}, function(data) {
					var data = $.parseJSON(data);
					if(data.result){
						layer.msg('操作成功', {icon: 1});
						location=location;
					}else{
						layer.msg('操作失败', {icon: 2});
					}					
				});
			});
	});
}
$("#seachuser").on('click',function(){
	var keyword = $("#keyword").val();
	if(keyword.length < 2){
		layui.use('layer', function(){
			var layer = layui.layer;
			layer.msg('请输入粉丝昵称'); 
		});
		return;
	}
	$.ajax({
  	   type: 'post',
         url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=user&m=hr_album&op=keyword',
         dataType: 'json',
         data: {keyword: keyword},
         success: function (ret) {   
         	if(ret.result){          		
         		$(".pics").html('');
         		$(".pics").html(ret.html);
         	}else{
         		
         	}
         }
     });
});
$(".pics").on('click','.edituser',function(){
	var id = $(this).data("id");
	layui.use('layer', function(){
		layer.open({
			  type: 2,
			  title: '编辑用户设置',
			  content: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=user&m=hr_album&op=edit&id='+id,
			  area: ['600px', '500px'],
			});  
	});
});
$("#delusers").on('click',function(){
        layui.use('layer', function(){
            layer.open({
                type: 2,
                title: '禁止用户列表',
                content: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=user&m=hr_album&op=deluserlist',
                area: ['800px', '500px'],
            });
        });
    });
</script>
</body>
</html>