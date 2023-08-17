<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int java = Integer.parseInt(request.getParameter("java")); 
	int web = Integer.parseInt(request.getParameter("web")); 
	int iot = Integer.parseInt(request.getParameter("iot")); 
	int android = Integer.parseInt(request.getParameter("android"));
	int avg = (java+web+iot+android)/4;
	
	String grade = "";
	
	if(avg >= 95){
		grade = "A+";
	}else if(avg >= 90){
		grade = "A";
	}else if(avg >= 85){
		grade = "B+";
	}else if(avg >= 80){
		grade = "B";
	}else {
		grade = "F";
	}
	 %>
<fieldset>
   <legend>학점확인프로그램</legend>
   <table align="center">
      <tr>
         <td>이름</td>
         <td><%=name %></td>         
      </tr>
      <tr>
         <td>Java 점수</td>
         <td><%=java %></td>
      </tr>
      <tr>
         <td>Web 점수</td>
         <td><%=web %></td>
      </tr>
      <tr>
         <td>Iot 점수</td>
         <td><%=iot %></td>
      </tr>
      <tr>
         <td>Android 점수</td>
         <td><%=android %></td>
      </tr>    
      <tr>
         <td>평균</td>
         <td><%=avg %></td>
      </tr>    
      <tr>
         <td>학점</td>
         <td><%=grade %></td>
      </tr>    
   </table>
</fieldset>
</body>
</html>