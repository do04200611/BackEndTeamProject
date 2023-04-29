<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forest</title>
</head>
<body>
    <h1>Album Bulletin Board List</h1>
    <table>
        <thead>
            <tr>
                <th>Album Name</th>
                <th>Artist</th>
                <th>Release Date</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="album" items="${albums}">
                <tr>
                    <td>${album.name}</td>
                    <td>${album.artist}</td>
                    <td>${album.releaseDate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
