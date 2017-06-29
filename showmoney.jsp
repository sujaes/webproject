

<HTML>
	<HEAD>
<style>
body{
     background-image:url("allow.jpg");
     background-repeat:no-repeat;
     background-size:100% 100%;
}
</style>
		<TITLE></TITLE>
	</HEAD>
	<BODY>
		<H3>수입·지출 내역보기</H3>
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
						conn2 = DriverManager.getConnection("jdbc:mysql://localhost/webdb", "root", "jang201311240");//여기가 연결하는부분(어디 인지(서버주소)/아이디/패스워드)
						stmt2 = conn2.createStatement();
						rs2 = stmt2.executeQuery("select mymoney from allowmoney where id = '" + id + "';");// 결과를 받아옴
						while(rs2.next()) {
              String money1 = rs2.getString(1);
              out.print("현재 내돈 : ");
              out.print(money1);
              out.print("<BR>");
     				}
     				rs2 = stmt2.executeQuery("select * from allow where id = '" + id + "';");// 결과를 받아옴
						while(rs2.next()) {
              String money2 = rs2.getString(1);
              String money3 = rs2.getString(2);
              String money4 = rs2.getString(3);
              String money5 = rs2.getString(4);
              out.print(" 날짜 : ");
              out.print(money2);
              out.print(" 내용 : ");
              out.print(money3);
              out.print(" 수입 : ");
              out.print(money4);
              out.print(" 지출 : ");
              out.print(money5);
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
		<FORM ACTION=money.jsp METHOD=POST>
			<INPUT TYPE=SUBMIT VALUE='뒤로가기'>
		</FORM>
	</BODY>
</HTML>