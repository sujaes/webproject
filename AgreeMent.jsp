<%@page contentType="text/html;charset=euc-kr"%>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String passwordhint = request.getParameter("passwordhint");
	String hint = request.getParameter("hint");
	String protectauto = request.getParameter("protectauto");
	session.setAttribute("NAME",name);
	session.setAttribute("GENDER",gender);
	session.setAttribute("PHONE",phone);
	session.setAttribute("EMAIL",email);
	session.setAttribute("ADDRESS", address);
	session.setAttribute("ID",id);
	session.setAttribute("PASSWORD",password);
	session.setAttribute("PASSWORDHINT",passwordhint);
	session.setAttribute("HINT",hint);
	session.setAttribute("PROTECTAUTO",protectauto);
%>
<HTML>
	<HEAD>
		<TITLE>ȸ����û��</TITLE>
	</HEAD>
	<BODY>
		<H3>���</H3>
		1. ȸ�� ������ �� ����Ʈ�� ��� ���ؼ��� ���˴ϴ�.<BR>
		2. �� ����Ʈ�� ���� ��� �����ϴ� ȸ���� Ż�� ó���մϴ�.<BR>
		<FORM ACTION=Subscription.jsp METHOD=POST>
			���� ����� �����Ͻʴϱ�?
			<INPUT TYPE=RADIO NAME=AGREE VALUE=YES>������
			<INPUT TYPE=RADIO NAME=AGREE VALUE=NO>�������� ����<BR><BR>
			<INPUT TYPE=SUBMIT VALUE='Ȯ��'>
		</FORM>
	</BODY>
</HTML>