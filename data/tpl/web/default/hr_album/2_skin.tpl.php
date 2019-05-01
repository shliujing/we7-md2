<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>模板管理</title>
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
<button id="demusic" class="layui-btn layui-btn-danger" style="float: right;margin-bottom: 10px;">导入内置模板</button>
<a href="<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=skincate&m=hr_album" class="layui-btn layui-btn-warm" style="float: right;margin-bottom: 10px;margin-right:10px;">模板分类管理</a>
<?php  if($cfg['remoteskin']) { ?><button id="resetskin" class="layui-btn" style="float: right;margin-bottom: 10px;">重置模板远程存储【慎重】</button><?php  } ?>
<table class="layui-table">
  <colgroup>
    <col width="300">
    <col width="400">
    <col width="200">
    <col width="200">
    <col width="350">
  </colgroup>
  <thead>
    <tr>
      <th>模板名称</th>
	  <th>模板分类</th>
	  <th>背景音乐</th>
	  <th>添加时间</th>
	  <th>操作</th>
    </tr> 
  </thead>
  <tbody>
    <?php  if(is_array($list)) { foreach($list as $row) { ?>
		<tr class="pics" id="div_<?php  echo $row['id'];?>">
		    <td>
				<span><?php  echo $row['skintitle'];?></span>
			</td>			
			<td>
				<span><?php  echo $cate[$row['cid']]['title'];?></span>
			</td>
			<td>
				<span><?php  echo $row['music'];?></span>
			</td>
			<td>
				<span><?php  echo date("Y-m-d h:i",$row['addtime'])?></span>
			</td>
			<td>
				<div class="layui-btn-group">
					  <a  class="layui-btn" href= "<?php  echo $this->createWebUrl('skin', array('op'=>'edit','id' => $row['id']))?>">编辑</a>
					  <button data-id="<?php  echo $row['id'];?>" class="layui-btn delskin">删除</button>
					  <?php  if($cfg['remoteskin'] && !$row['remoted']) { ?><button data-skiname="<?php  echo $row['skiname'];?>" data-skinid="<?php  echo $row['id'];?>" class="upskin layui-btn layui-btn-danger">远程存储  </button><?php  } ?>				  
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
$("#demusic").on('click',function(){
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('确定导入相册模板？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				$.ajax({
				 	   type: 'post',
				        url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=skin&m=hr_album&op=sysskin',
				        dataType: 'json',
				        success: function (res) {          	                          
				            if(res.result == 'success'){
				            	layer.msg('相册模板导入成功',function(){
				            		location=location;
				            	});
				            	
				            }else{
				            	layer.msg('相册模板导入失败');
				            }
				        }
				    });
			}, function(){
			  
			});
	});
	
});
$(".upskin").on('click',function(){
	var id = $(this).data('skinid');
	var skiname = $(this).data('skiname');
	layui.use('layer', function(){
		  var layer = layui.layer; 	
		  var loading = layer.load(2);
		  $.ajax({
		 	   type: 'post',
		        url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=upskin&m=hr_album',
		        dataType: 'json',
		        data:{id:id,skiname:skiname},
		        success: function (res) {    
		        	layer.close(loading);
		            if(res.result == 'success'){
		            	layer.msg('模板上传成功',function(){
		            		location=location;
		            	});
		            	
		            }else{
		            	layer.msg('模板上传失败');
		            }
		        }
		    });
	});	  
});
$(".delskin").on('click',function(){
    var that = $(this);
    var id = $(this).data("id");
    layui.use('layer', function(){
        var layer = layui.layer;
        layer.confirm('确定要删除此模板么？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            $.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=skin&m=hr_album&op=delskin",{id:id}, function(data) {
                var data = $.parseJSON(data);
                if(data.result){
                    layer.msg('删除成功');
                    $("#div_"+id).remove();
                }else{
                    layer.msg('删除失败', {icon: 2});
                }
            });
        }, function(){

        });
    });
});
$("#resetskin").on('click',function(){
	layui.use('layer', function(){
		  var layer = layui.layer; 		  
		  layer.confirm('确定重置模板远程存储？', {
			  btn: ['确定','取消'] //按钮
			}, function(){
				$.ajax({
				 	   type: 'post',
				        url: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=skin&m=hr_album&op=resskin',
				        dataType: 'json',
				        success: function (res) {          	                          
				            if(res.result == 'success'){
				            	layer.msg('设置成功',function(){
				            		location=location;
				            	});
				            	
				            }else{
				            	layer.msg('设置失败');
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