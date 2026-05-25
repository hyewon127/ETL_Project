<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>검색 결과</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #f8f9fa; color: #333; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        .back-btn { display: inline-block; margin-bottom: 20px; text-decoration: none; color: #007bff; }
    </style>
</head>
<body>
    <a href="/searchpage" class="back-btn">← 다시 검색하기</a>
    
    <h2>🔍 '${categoryName}' 검색 결과</h2>
    <p>총 검색된 매장 수: ${stores.size()}개</p>

    <table>
        <thead>
            <tr>
                <th>상호명</th>
                <th>업종분류</th>
                <th>판매음식</th>
                <th>지번주소</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="store" items="${stores}">
                <tr>
                    <td>${store['상호명']}</td>
                    <td>${store['상권업종중분류명']}</td>
                    <td>${store['상권업종소분류명']}</td>
                    <td>${store['지번주소']}</td>
                </tr>
            </c:forEach>
            
            <c:if test="${empty stores}">
                <tr>
                    <td colspan="4" style="text-align:center; padding: 50px;">
                        데이터가 없습니다. 검색어를 확인해 주세요!
                    </td>
                </tr>
            </c:if>
        </tbody>
    </table>
</body>
</html>