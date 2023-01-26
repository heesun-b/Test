<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>

        <div class="form_box">

            <table border="1">
                <tr>
                    <th>유저네임</th>
                    <td>${principal.username} </td>
                </tr>

                <tr>
                    <th>패스워드</th>
                    <td> ${principal.password}</td>
                </tr>

                <tr>
                    <th>이메일</th>
                    <td>${principal.email}</td>
                </tr>
            </table>
        </div>

        <%@ include file="../layout/footer.jsp" %>