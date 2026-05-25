<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>화곡동 상권 데이터 검색</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin-top: 100px; }
        .search-box { margin-bottom: 20px; }
        input[type="text"] { padding: 10px; width: 300px; border: 1px solid #ddd; }
        button { padding: 10px 20px; background-color: #007bff; color: white; border: none; cursor: pointer; }
        button:hover { background-color: #0056b3; }
    </style>
</head>
<body>
    <h1>📍 화곡동 소상공인 상권 검색</h1>
    <p>찾고 싶은 음식점 카테고리를 입력하세요.</p>
    
    <div class="search-box">
        <form action="/dosearch" method="get">
            <input type="text" name="category" placeholder="예: 한식, 중식, 일식, 주점" required>
            <button type="submit">검색하기</button>
        </form>
    </div>
</body>
</html>