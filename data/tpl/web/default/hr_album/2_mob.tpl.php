<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>模板消息管理</title>
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
<button type="button" class="layui-btn layui-btn-danger">大约可群发人数    <?php  echo $user;?> 人</button>
<button id="sendlog" type="button" class="layui-btn layui-btn-normal">发送记录</button>
<button id="help" type="button" class="layui-btn layui-btn-normal">操作帮助</button>
<a href="<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mob&m=hr_album&op=add" class="layui-btn" style="float: right;margin-bottom: 10px;margin-right:10px;">创建模板消息</a>
<button id="clearId" class="layui-btn" style="float: right;margin-bottom: 10px;margin-right:10px;">清理过期群发ID</button>
<button id="testmob" class="layui-btn" style="float: right;margin-bottom: 10px;margin-right:10px;">测试模板消息</button>
<table class="layui-table">
	<colgroup>
		<col width="200">
		<col width="200">
		<col width="200">
		<col width="400">
		<col width="150">
		<col width="100">
		<col width="200">
		<col width="500">
	</colgroup>
	<thead>
	<tr>
		<th>模板ID</th>
		<th>日程主题</th>
		<th>日程时间</th>
		<th>日程描述</th>
		<th>发送频率</th>
		<th>发送数量</th>
		<th>加入时间</th>
		<th>操作</th>
	</tr>
	</thead>
	<tbody>
	<?php  if(is_array($list)) { foreach($list as $row) { ?>
	<tr class="pics">
		<td>
			<span><?php  echo $row['templateid'];?></span>
		</td>
		<td>
			<span><?php  echo $row['content']['0'];?></span>
		</td>
		<td>
			<span><?php  echo $row['content']['1'];?></span>
		</td>
		<td>
			<span><?php  echo $row['content']['2'];?></span>
		</td>
		<td>
			<span><?php  echo $row['rate'];?> / 秒</span>
		</td>
		<td>
			<span><?php  echo $row['send'];?></span>
		</td>
		<td>
			<span><?php  echo date("Y-m-d",$row['addtime'])?></span>
		</td>
		<td>
			<div class="link-group">
				<div class="layui-btn-group">
					<a  class="layui-btn" style="float:left;height: 30px;line-height: 30px;" href= "<?php  echo $this->createWebUrl('mob', array('op'=>'add','id' => $row['id']))?>">编辑</a>
					<button type="button" class="layui-btn  layui-btn-danger cubtn delpic" data-id="<?php  echo $row['id'];?>">删除</button>
					<button type="button" class="layui-btn  layui-btn-normal cubtn smslist" data-id="<?php  echo $row['id'];?>">群发</button>
				</div>
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
    $(function(){
        layui.use('layer', function(){
            layer.msg('发送消息前请先测试模板消息！');
        });
    });
    $(".pics .delpic").on('click',function(){
        var pid = $(this).data("id");
        var that = $(this);
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.confirm('确定删除此条记录么？', {
                btn: ['确定','取消'] //按钮
            }, function(){
                //layer.msg('的确很重要', {icon: 1});
                $.post("<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mob&m=hr_album&op=del",{id:pid}, function(data) {
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
    $(".smslist").on('click',function(){
        var pid = $(this).data("id");
        layui.use('layer', function(){
            layer.open({
                type: 2,
                title: '正在群发请勿关闭窗口',
                content: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mob&m=hr_album&op=send&id='+pid,
                area: ['600px', '200px'],
            });
        });
    });
    $("#clearId").on('click',function(){
        layui.use('layer', function(){
            layer.open({
                type: 2,
                title: '正在清理过期群发ID',
                content: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mob&m=hr_album&op=formid',
                area: ['600px', '200px'],
            });
        });
    });
    $("#testmob").on('click',function(){
        layui.use('layer', function(){
            layer.open({
                type: 2,
                title: '测试模板消息',
                content: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=testmob&m=hr_album',
                area: ['800px', '600px'],
            });
        });
    });
    $("#sendlog").on('click',function(){
        layui.use('layer', function(){
            layer.open({
                type: 2,
                title: '已发送记录',
                content: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mob&m=hr_album&op=sendlog',
                area: ['850px', '500px'],
            });
        });
    });
    $("#help").on('click',function(){
        layui.use('layer', function(){
            layer.open({
                type: 2,
                title: '模板设置帮助',
                content: '<?php  echo $_W['siteroot'];?>web/index.php?c=site&a=entry&do=mob&m=hr_album&op=help',
                area: ['600px', '500px'],
            });
        });
    });
</script>
</body>
</html>