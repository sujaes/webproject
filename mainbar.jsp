<%@page contentType="text/html; charset=euc-kr" %>
<%@page import="java.sql.*" %>
<%
    request.setCharacterEncoding("euc-kr");
    String id = (String)session.getAttribute("ID");
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "jang201311240");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select name from userinfo where id = '" + id + "';");
            while(rs.next()) {
                  out.print("&nbsp;");
                  out.print(rs.getString(1));
                  out.print("님 환영합니다!");
              }   
			stmt.close();
			conn.close();	
			}catch (SQLException ex) {
				ex.printStackTrace();
			}catch (Exception e){
				e.printStackTrace();
			}
%>
<HTML>
    <HEAD><TITLE></TITLE>
    <style>
body{
     background-image:url("mainbar4.jpg");
     background-repeat:no-repeat;
     background-size:100% 100%;
     color:yellow;
     font-size : 32px;
     text-align:right;
}
</style>
    </HEAD>
    <BODY>
    
    </BODY>
</HTML>