<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.sql.*" %>
<HTML>
    <HEAD><TITLE></TITLE>
    <style>
body{
     background-image:url("anni.jpg");
     background-repeat:no-repeat;
     background-size:100% 100%;
}
</style></HEAD>
    <BODY>
        <H3>�����</H3>
	<%
    request.setCharacterEncoding("euc-kr"); 
    String date = request.getParameter("DATE");
    String id = (String)session.getAttribute("ID");
    try{
			Class.forName("com.mysql.jdbc.Driver");
			}catch(ClassNotFoundException e){
				System.err.println("����̹� �˻� ����");
			}
          Connection conn2 = null;
					Statement stmt2 = null;
					ResultSet rs2 = null;
					try{
						conn2 = DriverManager.getConnection("jdbc:mysql://localhost/webdb", "root", "jang201311240");//���Ⱑ �����ϴºκ�(��� ����(�����ּ�)/���̵�/�н�����)
						stmt2 = conn2.createStatement();
						rs2 = stmt2.executeQuery("select * from anni where annidate = '" + date + "' and id = '" + id + "';");// ����� �޾ƿ�
						while(rs2.next()) {
              String anni1 = rs2.getString(1);
              String anni2 = rs2.getString(2);
              out.print(anni1);
              out.print(anni2);
              out.print("<BR>");
     				}
						stmt2.close();
						conn2.close();
					}catch (SQLException ex) {
						ex.printStackTrace();
					} catch (Exception e){
						e.printStackTrace();
					}
%>
        <FORM ACTION=anniver.jsp METHOD=POST>
            <INPUT TYPE=SUBMIT VALUE='�߰�'>
        </FORM>
         
    </BODY>
</HTML>