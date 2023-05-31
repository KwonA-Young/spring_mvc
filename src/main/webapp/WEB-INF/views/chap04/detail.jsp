<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <div class="container">
        <h1>${score.studentNumber}번 학생 성적정보</h1>
        <table class="table table-hover">

                <tr>
                    <th>이름</th>
                    <th>${score.name}</th>
                </tr>
                <tr>
                    <th>국어</th>
                    <th>${score.korScore}</th>
                </tr>
                <tr>
                    <th>수학</th>
                    <th>${score.mathScore}</th>
                </tr>
                <tr>
                    <th>영어</th>
                    <th>${score.engScore}</th>
                </tr>
                <tr>
                    <th>총점</th>
                    <th>${score.korScore + score.mathScore + score.engScore}</th>
                </tr>
                <tr>
                    <th>평균</th>
                    <th>${{score.korScore + score.mathScore + score.engScore}/3}</th>
                </tr>

        </table>
    <a href="/score/list" class="btn btn-primary">리스트로 돌아가기</a>
    <form action="/score/remove" method="POST">
        <input type="hidden" name="studentNumber" value="${score.studentNumber}">
        <input type="submit" class="btn btn-secondary" value="삭제하기">

    </form>
</div>
</body>
</html>