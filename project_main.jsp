<%@page contentType="text/html; charset=euc-kr"%>
<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("ID");
	session.setAttribute("ID", id);
%>
<!DOCTYPE html>
<html>
<head>
	<title>main </title>
    <frameset frameborder=0 rows="100,*">
        <frame src="mainbar.jsp">
            <frameset frameborder=0 cols="900,*">
                <frame src="calen.jsp">
                    <frameset frameborder=0 rows="100,*">
                        <frame src="study.jsp" name="study">
                            <frameset frameborder=0 rows="100,*">
                                <frame src="appo.jsp" name="appointment">
                                    <frameset frameborder=0 rows="100,*">
                                        <frame src="anni.jsp" name="anniversary">
                                            <frameset frameborder=0 rows="100,*">
                                                <frame src="diary.jsp" name="diary" id="diary">
                                                <frame src="money.jsp" name="money">
                                            </frameset>
                                    </frameset>
                            </frameset>
                    </frameset>
            </frameset>
    </frameset>
</head>
<body>
    
</body>
</html>