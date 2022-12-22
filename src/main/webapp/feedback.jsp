<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import = "java.text.*,java.util.*"%>
<!DOCTYPE html>
<html>
	<style type="text/css">
			.body{
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.body-center{
				width: 1160px;
				border: 1px solid  #62A7E3;
			}
			.body-title{
				border: 1px solid #C5D7E8;
				justify-content: center;
				align-items: center;
				display: flex;
				background-color: #F7FBFE;
				color: #2C2C2C;
				font-weight: 600;
				height: 34px;
				font-size: 14px;
			}
			.body-centes{
			/* 	border: 1px solid #C5D7E8; */
				height: 34px;
				display: flex;
				justify-content:space-around;
				align-items: center;
				font-size: 12px;
			}
			table{
				border: 1px solid  #C5D7E8;
				border-collapse:collapse;
			}
			.tds{
				height: 34px;
				font-size: 14px;
			}
			.centess{
				text-align: center;
			}
			.tdpadding{
				padding-left: 8px;
			}
			.tdWhdth{
				width: 8%;
			}
			.tdWhdths{
				width: 41%;
			}
			.names{
				display: flex;
				align-items: center;
				color: #FF0000;
			}
		</style>
<head>
<title>回执</title>
</head>
 <%
                            //当前日期时间
                            Date date=new Date();
                            //格式化时间
                            SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
                            String time=format.format(date);
%>
                      
                     
<body>
<div class="body">
			<div class="body-center">
				<div class="body-title">
					<div>矿大橙雨银行网上银行电子回执</div>
				</div>
				<div class="body-centes">
					<div>币种： 人民币元</div>
					<div>日期： <%=date %></div>
					<div>凭证： 12345554545</div>
					<div>账户明细编号-银行交易流水号：1234545646456456465465</div>
				</div>
				<table width="100%" border="1" cellpadding="0" cellspacing="0">
						<tr>
							<td rowspan="3" class="tdWhdth centess">
								付<br>款<br>人
							</td>
							<td class="tds tdWhdths centess">全称：${sessionScope.username}</td>
							<td rowspan="3" class="tdWhdth centess">
								收<br>款<br>人
							</td>
							<td class="tds tdWhdths centess">全称：${sessionScope.targetname}</td>
						</tr>
						<tr>
							<td class="tds tdWhdths centess">账号：32250198883600004564</td>
							<td class="tds tdWhdths centess">账号：32651215841512151511</td>
						</tr>
						<tr>
							<td class="tds tdWhdths centess">开户行：矿大橙雨银行股份有限公司南湖支行</td>
							<td class="tds tdWhdths centess">开户行：矿大橙雨银行股份有限公司南湖支行</td>
						</tr>
						
				</table>
				<table width="100%" border="1" cellpadding="0" cellspacing="0" style="border-collapse:collapse;">
						<tr>
							<td class="tdpadding tdWhdth tds">大写金额</td>
							<td class="tdpadding tdWhdths tds">${sessionScope.num}</td>
							<td class="tdpadding tdWhdth tds">小写金额</td>
							<td class="tdpadding tdWhdths tds">${sessionScope.moneys}</td>
						</tr>
						<tr>
							<td class="tdpadding tdWhdth tds">用途</td>
							<td class="tdpadding tdWhdths tds">作业验收</td>
							<td class="tdpadding tdWhdth tds">钞汇标志</td>
							<td class="tdpadding tdWhdths tds">钞</td>
						</tr>
						<tr>
							<td class="tdpadding tdWhdth tds">摘要</td>
							<td colspan="3" class="tdpadding tdWhdths tds">网络转账</td>
						</tr>
				</table>
				<div class="tds names">重要提示：银行受理成功，本回执不作为收,付款交易的最终依据，正式回单请在交易成功第二日打印</div>
			</div>
		</div>

</body>
</html>