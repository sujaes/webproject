<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.sql.*" %>
<HTML>
    <HEAD><TITLE>약속일정</TITLE>
      <style>
body{
     background-image:url("appo.jpg");
     background-repeat:no-repeat;
     background-size:100% 100%;
}
</style></HEAD>
    <BODY>
        <H3>약속일정</H3>
	<%
    request.setCharacterEncoding("euc-kr");
    String date = request.getParameter("DATE");
    String id = (String)session.getAttribute("ID");
    try{
			Class.forName("com.mysql.jdbc.Driver");
			}catch(ClassNotFoundException e){
				System.err.println("드라이버 검색 실패");
			}
          Connection conn1 = null;
					Statement stmt1 = null;
					ResultSet rs1 = null;
					try{
						conn1 = DriverManager.getConnection("jdbc:mysql://localhost/webdb", "root", "jang201311240");
						stmt1 = conn1.createStatement();
						rs1 = stmt1.executeQuery("select * from appo where appodate = '" + date + "' and id = '" + id + "';");
						while(rs1.next()) {
              String appo1 = rs1.getString(1);
              String appo2 = rs1.getString(2);
              out.print(appo1);
              out.print(appo2);
              out.print("<BR>");
     				}
						stmt1.close();
						conn1.close();
					}catch (SQLException ex) {
						ex.printStackTrace();
					} catch (Exception e){
						e.printStackTrace();
					}
%>
        <FORM ACTION=appoint.jsp METHOD=POST>
            <INPUT TYPE=SUBMIT VALUE='추가'>
        </FORM>
    </BODY>
</HTML>