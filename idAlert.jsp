<%@page contentType="text/html; charset=euc-kr"%>
<%
	response.setContentType("text/html; charset=euc-kr");
	String id = request.getParameter("ID");
%>
<html>
	<head>
		<title>IDSearch</title>
	</head>
	<body>
		<script>
			var id = "<%= id %>";
			if (id == "NULL") {
				alert("�Է��Ͻ� ����� ��ġ�ϴ� ȸ�������� �����ϴ�. �ٽ� Ȯ�� �� �Է����ּ���.");
				window.location = "project_search.jsp";
			}
			else {
				alert("���̵�� '" + id + "'�Դϴ�.");
				window.location = "project_search.jsp";
			}
		</script>
	</body>
</html>