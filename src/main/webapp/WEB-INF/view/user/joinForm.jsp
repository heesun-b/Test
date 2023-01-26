<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>

        <div class="form_box">
            <form action="/join" method="post">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td>
                            <input type="text" name=username required>
                        </td>
                    </tr>

                    <tr>
                        <th>패스워드</th>
                        <td>
                            <input type="password" name="password" required>
                        </td>
                    </tr>

                    <tr>
                        <th>이메일</th>
                        <td>
                            <input type="email" name="email" required>
                        </td>
                    </tr>
                </table>
                <div class="button_box">
                    <button type="submit">회원가입완료</button>
                </div>
            </form>
        </div>
        <%@ include file="../layout/footer.jsp" %>