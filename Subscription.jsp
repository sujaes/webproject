<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="java.sql.*" %>
<%
	request.setCharacterEncoding("euc-kr");
	String agree = request.getParameter("AGREE");
	String result = null;
	if (agree.equals("YES")) {
		String name = (String)session.getAttribute("NAME");
		String gender = (String)session.getAttribute("GENDER");
		String phone = (String)session.getAttribute("PHONE");
		String email = (String)session.getAttribute("EMAIL");
		String address = (String)session.getAttribute("ADDRESS");
		String id = (String)session.getAttribute("ID");
		String password = (String)session.getAttribute("PASSWORD");
		String passwordhint = (String)session.getAttribute("PASSWORDHINT");
		String hint = (String)session.getAttribute("HINT");
		String protectauto = (String)session.getAttribute("PROTECTAUTO");
		Connection  conn = null;
		Statement stmt = null;
		try {
			//Register JDBC driver

			Class.forName("com.mysql.jdbc.Driver");
			//Open a connection

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "jang201311240");
			stmt = conn.createStatement();

			String command  = String.format("insert into userinfo values ('%s','%s','%s','%s','%s','%s','%s','%s','%s');",
				name, gender, phone, email, address, id, password, passwordhint, hint);
			stmt.executeUpdate(command);
			stmt.executeUpdate("insert into allowmoney values (0, '" + id + "');");
			//if (rowNum < 1) {
			//	throw new Exception("�����͸� DB�� �Է��� �� �����ϴ�.");
			//}
			//else
			
			//close a connection
			stmt.close();
			conn.close();
			result = "SUCCESS";
		}
		catch (SQLException ex) {
			ex.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	else {
		result = "FAIL";
	}
	response.sendRedirect("Result.jsp?RESULT="+result);
		
%>