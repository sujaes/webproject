<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.sql.*" %>
<%@ page import = "java.util.*"%>
<%@ page import = "java.lang.*"%>

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
					String mymoney = null;
					try{
						conn2 = DriverManager.getConnection("jdbc:mysql://localhost/webdb", "root", "jang201311240");//���Ⱑ �����ϴºκ�(��� ����(�����ּ�)/���̵�/�н�����)
						stmt2 = conn2.createStatement();
						rs2 = stmt2.executeQuery("select mymoney from allowmoney where id = '" + id + "';");// ����� �޾ƿ�
						while(rs2.next()) {
              mymoney = rs2.getString(1);
            }
            int int_money = Integer.parseInt(mymoney);

  String moneydat = request.getParameter("MONEYDATE");
	String moneysummar = request.getParameter("MONEYSUMMARY");
	String moneywithdra = request.getParameter("MONEYWITHDRAW");
	String moneydeposi = request.getParameter("MONEYDEPOSIT");
	
	int int_withdra = Integer.parseInt(moneywithdra);
	int int_deposit = Integer.parseInt(moneydeposi);
  int total = int_money - int_withdra + int_deposit;
  
      String command  = String.format("insert into allow values ('%s','%s','%s','%s','%s');",moneydat,moneysummar,moneydeposi,moneywithdra,id);
	stmt2.executeUpdate(command);
      String command1  = String.format("update allowmoney set mymoney=" + total + " where id = '" + id + "';");
	stmt2.executeUpdate(command1);
			
			stmt2.close();
			conn2.close();
		}
		catch (SQLException ex) {
			ex.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	response.sendRedirect("money.jsp");
		
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�뵷</title>
 
                   
                   
</head>
<body>

</body>
</html>