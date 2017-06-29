        <%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.sql.*" %>
<%
    request.setCharacterEncoding("euc-kr");
    String id = (String)session.getAttribute("ID"); 
    try{
			Class.forName("com.mysql.jdbc.Driver");
			}catch(ClassNotFoundException e){
				System.err.println("드라이버 검색 실패");
			}
          Connection conn2 = null;
					Statement stmt2 = null;
					ResultSet rs2 = null;
					try{
						conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "jang201311240");//여기가 연결하는부분(어디 인지(서버주소)/아이디/패스워드)
						stmt2 = conn2.createStatement();
						rs2 = stmt2.executeQuery("select mymoney from allowmoney where id = '" + id + "';");// 결과를 받아옴
						while(rs2.next()) {
              String money1 = rs2.getString(1);
              out.print("총액 : ");
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
            <INPUT TYPE=SUBMIT VALUE='지출관리시작'>
        </FORM>

        <FORM ACTION=showmoney.jsp METHOD=POST>
            <INPUT TYPE=SUBMIT VALUE='지출내역보기'>
        </FORM>
        
    </BODY>
</HTML>