<%@page contentType="text/html; charset=euc-kr"%>
<%
	response.setContentType("text/html; charset=euc-kr");
	String result = request.getParameter("RESULT");
%>
<html>
	<head>
		<title>login</title>
	</head>
	<body>
		<script>
			var result = "<%= result %>";
			if (result == "DISCORD") {
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
				window.location = "login.html";
			}
			else {
				alert("���̵� �������� �ʽ��ϴ�.");
				window.location = "login.html";
			}
		</script>
	</body>
</html>