<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/well.css">
    <link rel="stylesheet" href="css/base.css">

    <title>银行主页</title>

    <style>

    body {
        background-color:#fff;
      }
      
        
        #header{
        	float:right;
        }


    #box1{
        width: 960px;
        margin-left: 10px;
        margin-top: 25px;
        display: flex;
        flex-direction: row;
         border-bottom: 5px solid #e18e2b;
         float:left;
         
    }
    #b1,#b2,#b3{
        width: 120px;
        height: 35px;
        border: 1px solid lightgrey;
        background-color: white;
        line-height: 35px;
        text-align: center;
        position: relative;
        overflow: hidden;
    }
    #bank
    {
        width: 320px;
        height: 35px;

        background-color: white;
         position: relative;
        font-size: 30px;
    }
    #icon
    {
    	float:left;
    }
 
    .son1{
        border: 1px solid lightgrey;
        background-color: rgb(247, 159, 127);
        text-align: center;
        width:120px;
        height: 35px;
        line-height: 35px;
        overflow: hidden;
        color: white;
    }
    
    .son1 a{
    color: white;
    }
    .son2{
        border: 1px solid lightgrey;
        background-color: rgb(247, 159, 127);
        text-align: center;
        width: 120px;
        height: 35px;
         line-height: 35px;
       position: relative;
        top: -36px;
        left: 120px;
    }
    #b1:hover,#b2:hover,#b3:hover{
        overflow: visible;
        background-color: rgb(247, 159, 127);
        color: white;
        z-index: 999;
        cursor: pointer;
    }
    .son1:hover,.son2:hover{
        background-color: rgb(238,72,0);
        cursor: pointer;
    }
    #b1-1:hover{
        overflow: visible;
        background-color:  rgb(238,72,0);
        z-index: 999;
        cursor: pointer; 
    } 
    a {
     text-decoration: none;
      Text-align:center;
      magin : auto;
      size : 100px;
    }
</style>

</head>
<body>
    <section class="shortcut">
        <div class="w">
            <div class="fl">
                <ul>
                    <li></li>
                    <li><img src="./image/ding.png" alt="dingwei" width=20px height=20px ></li>
                    <li>
                        xuzhou, Jiangsu, China&nbsp;&nbsp;&nbsp;
                    </li>
                    <li><img src="./image/youjian.png" alt="youjian" width=20px height=20px ></li>
                     <li>
                        517739212@qq.com&nbsp;&nbsp;&nbsp;
                    </li>
                    <li><img src="./image/dianhua.png" alt="dianhua" width=20px height=20px ></li>
                     <li>
                        19552252309&nbsp;&nbsp;&nbsp;
                    </li>
                </ul>
            </div>
            <div class="fr">
                <ul>
                    <li>本网站支持ipv6&nbsp;&nbsp;&nbsp;</li>
                    <li></li>
                    <li>橙雨银行欢迎您：${sessionScope.username}</li>
                    <li></li>
                    <li id="tuichu"><a href="login.jsp">&nbsp;&nbsp;退出登录&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                </ul>
            </div>
        </div>
        
        
    </section>
	<div id="icon"><img src="./image/icon.png" alt="success" width=100px height=85px></div>	
    <div id="box1">
    	<div id="bank">
    		<b>&nbsp橙&nbsp雨&nbsp银&nbsp行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
    	</div>
        <div id="b1">
            支付
            <div id="b1-0">
                <div id="b1-1" class="son1">
                    转账
                    <div>
                        <div id="b1-1-1" class="son2"><a href= "trade.jsp">在线转账</a></div>
                        <div id="b1-1-1" class="son2"><a href= "feedback.jsp">打印凭证</a></div>
                    </div>
                </div>
                <div id="b1-2" class="son1">缴费</div>
                <div id="b1-3" class="son1">充值</div>
            </div>
        </div>
        <div id="b2">
            理财
            <div id="b2-0"> 
                <div id="b2-1" class="son1">
                    基金
                    <div>
                        <div id="b2-1-1" class="son2">购买基金</div>
                        <div id="b2-1-1" class="son2">查看基金</div>
                    </div>
                </div>
                <div id="b2-2" class="son1">证券</div>
                
            </div>
        </div>
        <div id="b3">
            股票
            <div id="b3-0">
                <div id="b3-1" class="son1">
                    购买股票
                    <div>
                        <div id="b3-1-1" class="son2">子菜单1-1</div>
                        <div id="b3-1-1" class="son2">子菜单1-2</div>
                    </div>
                </div>
                <div id="b3-2" class="son1">股票推荐</div>
                <div id="b3-3" class="son1">股票查询</div>
            </div>
        </div>
        <div id="b3">
            基金
            <div id="b3-0">
                <div id="b3-1" class="son1">
                    基金查询
                    <div>
                        <div id="b3-1-1" class="son2">子菜单1-1</div>
                        <div id="b3-1-1" class="son2">子菜单1-2</div>
                    </div>
                </div>
                <div id="b3-2" class="son1">基金购买</div>
                <div id="b3-3" class="son1">基金查询</div>
            </div>
        </div>
        <div id="b3">
            生活缴费
            <div id="b3-0">
                <div id="b3-1" class="son1">
                    话费
                    <div>
                        <div id="b3-1-1" class="son2">水费</div>
                        <div id="b3-1-1" class="son2">电费</div>
                    </div>
                </div>
                <div id="b3-2" class="son1">税费</div>
                <div id="b3-3" class="son1">电费</div>
            </div>
        </div>
        <div id="b3">
            我的
            <div id="b3-0">
                <div id="b3-1" class="son1">
                    <a href= <%=request.getContextPath() +"/FindServlet" %>>查看信息</a>
                    <div>
                        <div id="b3-1-1" class="son2">子菜单1-1</div>
                        <div id="b3-1-1" class="son2">子菜单1-2</div>
                    </div>
                </div>
                <div id="b3-2" class="son1"><a href= "change.jsp">修改信息</a></div>
                <div id="b3-3" class="son1"><a href= "login.jsp">退出登录</a></div>
            </div>
        </div>
    </div>
 

<br><br>
<nav class="nav">
                <div class="dropdown">
                    <div class="dt">常用功能</div>
                    <div class="dd">
                        <ul>
                            <li ><a href="trade.jsp" target="_blank">转账</a> </li>
                        <li>
                         <span><a href=<%=request.getContextPath() +"/FindServlet" %>>个人信息</a></span>
                        </li>
                        <li>
                          <span><a href="product.jsp" target="_blank">产品购买</a></span> 
                        </li>
                         <li>
                           <span><a href="http://jiaoyu.ahwang.cn/" target="_blank">股票</a></span> 
                          </li>
                          <li>
                         <span><a href="userquery.jsp" target="_blank">查询交易记录</a></span> 
                          </li>
                           <li>
                          <span><a href="change.jsp" target="_blank">修改密码</a></span> 
                          </li>
                          <li>
                           <span><a href="http://www.ahwang.cn/kandian/" target="_blank">我的</a></span> 
                         </li>
                        </ul>
                     </div>
                </div>
                 <div class="focus">
                       <div id="slide">
                           <ul id="photos">
                                 <li><img src="image/1.jpg"></li>
                                 <li><img src="image/3.jpg"></li>
                                 <li><img src="image/2.jpg"></li>
                                 <li><img src="image/4.jpg"></li>
                          </ul>
                       </div>
                 </div>
                 <div class="news_con">
		                 <!-- 最左侧的盒子 -->
		                <div class="news_l">
			                    <h3 class="news_title">最新公告</h3>
			                      <ul class="news_list">
			                     	<li>
				                     	<a>在售理财产品列表</a>
				                   </li>
				                    <li>
				                    	<a>关于12月3日-4日系统升级期间暂...</a>
				                   </li>
				                   <li>
				                       	<a>关于12月4日系统升级期间暂停企...</a>
				                  </li>
			                      </ul>
		                  </div>
		                  <div class="news_l">
			                    <h3 class="news_title">服务价目公示</h3>
			                      <ul class="news_list">
			                     	<li>
				                     	<a>关于我行信用卡2023年1-6月部分...</a>
				                   </li>
				                    <li>
				                    	<a>关于调整银行承兑汇票承兑手续...</a>
				                   </li>
				                   <li>
				                       	<a>关关于调整信用卡电子渠道交易手...</a>
				                  </li>
			                      </ul>
		                  </div>
		                  <div class="news_l">
			                    <h3 class="news_title">宏观经济研究</h3>
			                      <ul class="news_list">
			                     	<li>
				                     	<a>《宏观观察》2022年第53期：中...</a>
				                   </li>
				                    <li>
				                    	<a>《宏观观察》2022年第52期：高...</a>
				                   </li>
				                   <li>
				                       	<a>《宏观观察》2022年第50期：氢...</a>
				                  </li>
			                      </ul>
		                  </div>
              </div>
         <footer class="footer">
                <div class="mod_copyright">
                    <div class="links">
                        <a href="#">关于我们</a> | <a href="#">联系我们</a> | 联系客服 | 企业入驻 | 营销中心 | 手机银行 | 友情链接 |
                        橙雨公益 | English Site | Contact U
                    </div>
                    <div class="copyright">
                        地址：江苏省徐州市泉山区大学路一号 邮编：020409 电话：400-618-4000 传真：010-82935100 <br>
                        京ICP备08001421号京公网安备110108007702
                    </div>
                </div>
        </footer>
   </nav>

</body>


<html>
