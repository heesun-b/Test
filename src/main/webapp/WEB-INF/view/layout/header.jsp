<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>test</title>
            <style>
                .header_box {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    background-color: skyblue;
                    height: 100px;
                }

                .header_box2 {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    column-gap: 10px;
                    padding: 10px;
                }

                a {
                    text-decoration: none;
                }

                .footer_box {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    background-color: skyblue;
                    height: 100px;
                }

                .form_box,
                .write {
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    padding: 10px;
                }
            </style>

        </head>



        <body>

            <div class="header_box">
                <h1>${pagename} 페이지
            </div>
            <hr>
            <div class="header_box2">
                <c:choose>
                    <c:when test="${principal == null}">
                        <a href="/">홈</a>
                        <a href="/loginForm">로그인</a>
                        <a href="/joinForm">회원가입</a>
                    </c:when>

                    <c:otherwise>
                        <a href="/">홈</a>
                        <a href="/user/${principal.id}/userInfo">회원정보</a>
                        <a href="/user/${principal.id}/updateForm">회원정보수정</a>
                        <a href="/user/${principal.id}/boardList">My게시글</a>
                        <a href="/logout">로그아웃</a>

                    </c:otherwise>
                </c:choose>
            </div>