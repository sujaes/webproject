<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="java.sql.*" %>
<%
	request.setCharacterEncoding("euc-kr");
  String studydat = request.getParameter("STUDYDATE");
	String studysummar = request.getParameter("STUDYSUMMARY");
	session.setAttribute("STUDYDATE",studydat);
	session.setAttribute("STUDYSUMMARY",studysummar);

		String studydate = (String)session.getAttribute("STUDYDATE");
		String studysummary = (String)session.getAttribute("STUDYSUMMARY");
		String id = (String)session.getAttribute("ID"); 
		Connection  conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "jang201311240");
			stmt = conn.createStatement();
      String command  = String.format("insert into study values ('%s','%s','%s');",studydate,studysummary,id);
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
	response.sendRedirect("study.jsp");
		
%>
<HTML>
    <HEAD><TITLE></TITLE></HEAD>
    <BODY>
   
    </BODY>
</HTML>