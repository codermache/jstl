<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
  
<html>  
<head>  
  <title>x:choose Tag</title>  
</head>  
<body>  
<h3>Books Information:</h3>  
  
<c:set var="xmltext">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Thuoc</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>TuanAnh</author>  
  <price>2000</price>  
</book>  
</books>  
</c:set>  
  
<x:parse xml="${xmltext}" var="output"/>  
<x:choose>  
   <x:when select="$output//book/author = 'Thuoc1'">  
      Book is written by Thuoc 
   </x:when>  
   <x:when select="$output//book/author = 'TuanAnh'">  
      Book is written by Tuan Anh
   </x:when>  
   <x:otherwise>  
      The author is unknown...  
   </x:otherwise>  
</x:choose>  
  
</body>  
</html>  