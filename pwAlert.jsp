<%@page contentType="text/html; charset=euc-kr"%>
<%
	response.setContentType("text/html; charset=euc-kr");
	String pw = request.getParameter("PASSWORD");
%>
<html>
	<head>
		<title>PWSearch</title>
	</head>
	<body>
		<script>
			var pw = "<%= pw %>";
			if (pw == "NULL") {
				alert("�Է��Ͻ� ����� ��ġ�ϴ� ȸ�������� �����ϴ�. �ٽ� Ȯ�� �� �Է����ּ���.");
				window.location = "project_search.jsp";
			}
			else {
				alert("��й�ȣ�� '" + pw + "'�Դϴ�.");
				window.location = "project_search.jsp";
			}
		</script>
	</body>
</html>