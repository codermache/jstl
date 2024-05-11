<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<html>  
<head>  
<title>Using JSTL Function </title>  
</head>  
<body>  
  <c:set var="site" value="Project"/>  
  <c:set var="author" value="Thuoc"/>  
  Hi, This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)}.  
  <br><!-- comment -->
 
  <c:set var="string" value="Welcome to JSP Programming"/>  
${fn:toLowerCase("HELLO,")}  
${fn:toLowerCase(string)}  
</body>  
</html> 