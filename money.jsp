        <%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.sql.*" %>
<%
    request.setCharacterEncoding("euc-kr");
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
						conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "jang201311240");//���Ⱑ �����ϴºκ�(��� ����(�����ּ�)/���̵�/�н�����)
						stmt2 = conn2.createStatement();
						rs2 = stmt2.executeQuery("select mymoney from allowmoney where id = '" + id + "';");// ����� �޾ƿ�
						while(rs2.next()) {
              String money1 = rs2.getString(1);
              out.print("�Ѿ� : ");
              out.print(money1);
     				}
						stmt2.close();
						conn2.close();
					}catch (SQLException ex) {
						ex.printStackTrace();
					} catch (Exception e){
						e.printStackTrace();
					}
%>
<HTML>
    <HEAD><TITLE></TITLE>
      <style>
body{
     background-image:url("allow.jpg");
     background-repeat:no-repeat;
     background-size:100% 100%;
}
</style></HEAD>
    <BODY>
        
        <FORM ACTION=moneyallow.jsp METHOD=POST>
            <INPUT TYPE=SUBMIT VALUE='�����������'>
        </FORM>

        <FORM ACTION=showmoney.jsp METHOD=POST>
            <INPUT TYPE=SUBMIT VALUE='���⳻������'>
        </FORM>
        
    </BODY>
</HTML>