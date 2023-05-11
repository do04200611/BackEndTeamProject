<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>다른 이미지 목록</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // 버튼 클릭 이벤트 처리
            $("#loadImagesBtn").click(function() {
                // AJAX 요청 설정
                $.ajax({
                    url: "이미지 목록을 가져올 서버의 URL을 입력하세요", // 예: "/get-image-list",
                    method: "GET",
                    dataType: "json",
                    success: function(response) {
                        // 이미지 목록을 받아와서 표시하는 로직
                        var imageList = response.imageList;

                        // 이미지 목록을 반복하여 표시
                        for (var i = 0; i < imageList.length; i++) {
                            var imageUrl = imageList[i];
                            var imgElement = $("<img>").attr("src", imageUrl);
                            $("#imageContainer").append(imgElement);
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error("Error occurred while fetching image list: " + error);
                    }
                });
            });
        });
    </script>
</head>
<body>
    <h1>다른 이미지 목록</h1>
    <button id="loadImagesBtn">이미지 목록 불러오기</button>
    <div id="imageContainer"></div>
</body>
</html>
