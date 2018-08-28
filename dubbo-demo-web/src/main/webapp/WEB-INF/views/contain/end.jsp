<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style type="text/css">
	.right-hand{position:absolute;top:-9999px;left:-9999px;}
	.right-hand ul{float:left;border:1px solid #979797;background:#f1f1f1  24px 0 repeat-y;padding:2px;box-shadow:2px 2px 2px rgba(0,0,0,.6);}
	.right-hand ul li{float:left;clear:both;height:24px;cursor:pointer;line-height:24px;white-space:nowrap;padding:0 30px;}
	.right-hand ul li.sub{background-repeat:no-repeat;background-position:right 9px;}
	.right-hand ul li.active{background-color:#f1f3f6;border-radius:3px;border:1px solid #aecff7;height:22px;line-height:22px;background-position:right -8px;padding:0 29px;}
	.right-hand ul ul{display:none;position:absolute;}
	
	.h-nav-con ul li span.h-tab-close{
		background: url("${appServer}/css/frame/images/icon.png") -4px -4px no-repeat;
		display:none;
		cursor: pointer;
	    height: 12px;
	    position: absolute;
	    right: 0px;
	    top: 0px;
	    width: 12px;
    }
    
    .h-nav-con ul li span.h-tab-close:hover{
    	background-position:-24px -4px;   
    }
    
    .row {
	    margin-left: -10px;
	    margin-top: 5px;
	}
	</style>
    <div id="quickMenu" class="right-hand">
	    <ul>
	        <li onclick="addQuickMenu();"><strong>设置为快捷方式</strong></li>
	    </ul>
    </div>
    
     
</body>

<script type="text/javascript" >
Horn.Frame=Horn.Frame||{};
Horn.Frame.params=Horn.Frame.params||{};
$.extend(Horn.Frame.params,$!horn.printParamCaches()||{});
</script>