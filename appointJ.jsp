<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="java.sql.*" %>
<%
    request.setCharacterEncoding("euc-kr");
    String appodat = request.getParameter("APPODATE");
    String apposummar = request.getParameter("APPOSUMMARY");
    session.setAttribute("APPODATE",appodat);
    session.setAttribute("APPOSUMMARY",apposummar);
    
		String appodate = (String)session.getAttribute("APPODATE");
		String apposummary = (String)session.getAttribute("APPOSUMMARY");
		String id = (String)session.getAttribute("ID"); 
		Connection  conn = null;
		Statement stmt = null;
		try {
			//Register JDBC driver

			Class.forName("com.mysql.jdbc.Driver");
			//Open a connection

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "jang201311240");
			stmt = conn.createStatement();

			String command  = String.format("insert into appo values ('%s','%s','%s');",appodate,apposummary,id);
			stmt.executeUpdate(command);
			stmt.close();
			conn.close();
		}
		catch (SQLException ex) {
			ex.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	response.sendRedirect("appo.jsp");
		
%>