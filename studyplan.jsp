<%@page contentType="text/html; charset=euc-kr"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<HTML>
	<HEAD>
		<TITLE>���ΰ�ȹ�߰�</TITLE>
<style>
body{
     background-image:url("study.jpg");
     background-repeat:no-repeat;
     background-size:100% 100%;
}
</style>
	</HEAD>
	<BODY>
		<H3>�߰�</H3>
		<FORM ACTION=studyplanJ.jsp METHOD=POST>
			��¥: <INPUT TYPE=DATE NAME=STUDYDATE><BR>
			����: <INPUT TYPE=TEXT NAME=STUDYSUMMARY><BR>
			<INPUT TYPE=SUBMIT VALUE='�߰�'>
		</FORM>
		<FORM ACTION=study.jsp METHOD=POST>
			<INPUT TYPE=SUBMIT VALUE='�ڷΰ���'>
		</FORM>
	</BODY>
</HTML>