<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function add_tab(url,title){
		$.post(url,function(data){
			var b = $('#tt').tabs('exists',title);
			if(!b){
				$('#tt').tabs('add',{
					title:title,
					content:data,
					closable:true,
					tools:[{
						iconCls:'icon-mini-refresh',
						handler:function(){
							alert('refresh');
						}
					}]
				});
			}else{
				$('#tt').tabs('select',title);
			}
		})
	}
	function add_tab2(url,title){
		$('#tt').tabs('add',{
			title:title,
			href:url,
			closable:true,
			tools:[{
				iconCls:'icon-mini-refresh',
				handler:function(){
					alert('refresh');
				}
			}]
		});
	}
</script>
<title>金毛商城</title>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px"><h2 style="font-family: Microsoft YaHei;">后台管理首页</h2></div>
	<div data-options="region:'west',split:true,title:'West'" style="width:190px;padding:10px;">
		<div class="easyui-accordion" style="width:160px;height:300px;">
			<div title="商品信息管理" data-options="iconCls:'icon-ok'">
				<ul>
					<li><a href="javascript:add_tab('goto_spu.do','商品信息管理')" >商品信息管理</a></li>
					<li><a href="javascript:add_tab('goto_attr.do','商品属性管理')" >商品属性管理</a></li>
					<li><a href="javascript:add_tab('goto_sku.do','商品库存单元管理')" >商品库存单元管理</a></li>
				</ul>
			</div>
			<div title="商品缓存管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
				商品缓存管理<br>
			</div>
		</div>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	<div data-options="region:'center',title:'Center'">
		<div id="tt" class="easyui-tabs">
		</div>
	</div>
	
	
</body>
</html>