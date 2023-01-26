<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>

        <div class="form_box">

            <form action="/user/${principal.id}/update" method="post">
                <table border="1">
                    <tr>
                        <th>유저네임</th>
                        <td> ${principal.username}
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
                <button type="submit">수정완료</button>
            </form>
        </div>

        <%@ include file="../layout/footer.jsp" %>