<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="form_box">
            <table border="1">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>

                <c:forEach items="${boardList}" var="board">
                    <tr>
                        <td>${board.id}</a></td>
                        <td><a href="#none">${board.title}</a></td>
                        <td>${board.createdAt}</td>
                    </tr>
                </c:forEach>
            </table>
            <br>
        </div>
        <div class="write">
            <a href="#none">글쓰기</a>
        </div>
        <%@ include file="../layout/footer.jsp" %>