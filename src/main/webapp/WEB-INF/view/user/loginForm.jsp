<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>

        <div class="form_box">
            <form action="/login" method="post">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td>
                            <input type="text" name="username" required>
                        </td>
                    </tr>

                    <tr>
                        <th>패스워드</th>
                        <td>
                            <input type="password" name="password" required>
                        </td>
                    </tr>
                </table>

                <div class="button_box">
                    <button type="submit">로그인</button>
                </div>
            </form>
        </div>
        <%@ include file="../layout/footer.jsp" %>