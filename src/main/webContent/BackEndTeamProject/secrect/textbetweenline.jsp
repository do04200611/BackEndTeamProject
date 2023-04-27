<!DOCTYPE html>
<html>
  <head>
    <style>
      .word {
        display: inline-block; /* enable border-right to work */
        font-size: 24px; /* set font size */
      }
      .word span {
        display: inline-block; /* enable border-right to work */
        border-right: 2px solid black; /* create vertical line */
        padding-right: 10px; /* add space between letters */
      }
      .word span:last-child {
        border-right: none; /* remove border from last letter */
      }
    </style>
  </head>
  <body>
    <div class="word">
      <span>구매한 상품과 비슷한 상품 목록</span>
      <span>구매 데이터를 학습하고 고객님의 구매의도를 파악하여 AI모델이 제시하는 상품 목록</span>
      <span>L</span>
      <span>L</span>
      <span>O</span>
    </div>
  </body>
</html>