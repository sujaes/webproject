<%@page contentType="text/html; charset=euc-kr"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<HTML>
	<HEAD>
		<TITLE>����߰�</TITLE>
<style>
body{
     background-image:url("allow.jpg");
     background-repeat:no-repeat;
     background-size:100% 100%;
}
</style>
	</HEAD>
	<BODY>
		<H3>�߰�</H3>
		<FORM ACTION=moneyJ.jsp METHOD=POST>
			��¥: <INPUT TYPE=DATE NAME=MONEYDATE><BR>
			����: <INPUT TYPE=TEXT NAME=MONEYSUMMARY><BR>
			���: <INPUT TYPE=TEXT NAME=MONEYWITHDRAW VALUE ="0"><BR>
			�Ա�: <INPUT TYPE=TEXT NAME=MONEYDEPOSIT VALUE ="0"><BR>
			<INPUT TYPE=SUBMIT VALUE='�߰�'>
		</FORM>
		<FORM ACTION=money.jsp METHOD=POST>
			<INPUT TYPE=SUBMIT VALUE='�ڷΰ���'>
		</FORM>
	</BODY>
</HTML>