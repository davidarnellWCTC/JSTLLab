<%-- 
    Document   : home
    Author     : David Arnell
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Lab</title>
    </head>
    <body>
        <h1>JSTL Lab</h1>

        <p>Click the button below to get the list of strings.</p>

        <div>
            <form method="POST" action="${pageContext.request.contextPath}/StringController" 
                  id="stringList" name="stringList">
                <input type="submit" name="submit" value="Get Strings"/>
            </form>
        </div>

        <div>
            <%
                Object responseObject = request.getAttribute("wordList");
// testing to see if the responseObject is null
                if (responseObject != null) {
                    out.println("not null");
                }
// testing to see if the response object is null
                if (responseObject == null) {
                    out.println("is null");
                }
            %>



            <table style="width:50%">
                <tr>
                    <th>String</th>
                    <th>String Length</th>
                </tr>
                <!-- iterating through the List -->
                <c:forEach items="${wordList}" var="word">
                    <tr>
                        <td><c:out value="${word}"/></td>
                        <td><c:out value="${word.length}"/></td>                        
                    <tr>
                    </c:forEach>
            </table>

        </div>

    </body>
</html>
