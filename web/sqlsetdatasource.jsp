<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<html>  
<head>  
<title>sql:setDataSource Tag</title>  
</head>  
<body>  
   
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/test"  
     user="root"  password="1234"/>  


<sql:query dataSource="${db}" var="rs">  
SELECT * from Students;  
</sql:query>  

<sql:update dataSource="${db}" var="count">  
INSERT INTO Students VALUES (154,'thuoc', 'hello', 25);  
</sql:update>  





<%  
Date DoB = new Date("2000/10/16");  
int studentId = 151;  
%>  
<sql:transaction dataSource="${db}">  
   <sql:update var="count">  
      UPDATE Student SET First_Name = 'PHam' WHERE Id = 150  
   </sql:update>  
   <sql:update var="count">  
      UPDATE Student SET Last_Name= 'Thuoc' WHERE Id = 153  
   </sql:update>  
   <sql:update var="count">  
     INSERT INTO Student   
     VALUES (154,'hihi', 'hello', '1995/10/6');  
   </sql:update>  
</sql:transaction>  
</body>  
</html>  