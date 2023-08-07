<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>마이페이지</title>
        <link rel="stylesheet" href="../resources/css/myPageStyle.css">
    </head>
    <body>
       <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <h1>마이페이지</h1>
            <section id="recent-orders">
                <h2>최근 주문 내역</h2>
                <div class="order-item">
                    <img src="../resources/images/슬리퍼.jpg" alt="제품 사진">
                    <div class="order-details">
                        <h3>주문 번호: #12345</h3>
                        <p>상품명: 슬리퍼</p>
                        <p>가격: $99.99</p>
                        <p>주문 일자: 2023-06-07</p>
                        <button class="write-review">상품 후기 작성</button>
                    </div>
                </div>
                <div class="order-item">
                    <img src="../resources/images/솔리드 크루삭.jpg" alt="제품 사진">
                    <div class="order-details">
                        <h3>주문 번호: #67890</h3>
                        <p>상품명: 솔리드 크루삭</p>
                        <p>가격: $49.99</p>
                        <p>주문 일자: 2023-06-05</p>
                        <button class="write-review">상품 후기 작성</button>
                    </div>
                </div>

            </section>
            <section id="shopping-cart">
                <h2 id="cart">장바구니</h2>
                <div class="cart-item">
                    <img src="../resources/images/BW아미.jpg" alt="제품 사진">
                    <div class="cart-details">
                        <h3>상품명: BW 아미/h3>
                        <p>가격: $79.99</p>
                        <button class="remove-from-cart">장바구니에서 제거</button>
                    </div>
                </div>
                <div class="cart-item">
                    <img src="../resources/images/아디폼스탠스미스뮬.jpg" alt="제품 사진">
                    <div class="cart-details">
                        <h3>상품명: 아디폼스탠스미스뮬</h3>
                        <p>가격: $59.99</p>
                        <button class="remove-from-cart">장바구니에서 제거</button>
                    </div>
                </div>
                <button id="paymentAll">전체 결제하기</button>
            </section>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        <script>
            // "상품 후기 작성" 버튼 클릭 시 작은 윈도우 창 띄우기
            const writeReviewButtons = document.querySelectorAll('.write-review');
            writeReviewButtons.forEach((button) => {
                button.addEventListener('click', () => {
                    window.open('productReview.html', 'Review', 'width=600,height=700');
                    // 추가적인 후기 작성 동작 수행
                });
            });
           // 장바구니에서 제품 제거
            const removeButtons = document.querySelectorAll('.remove-from-cart');
            removeButtons.forEach((button) => {
                button.addEventListener('click', (event) => {
                    const cartItem = event.target.closest('.cart-item');
                    cartItem.remove();
                    
                    // 장바구니가 비어있을 때 전체 결제하기 버튼 숨김 처리
                    const cartItems = document.querySelectorAll('.cart-item');
                    const checkoutButton = document.querySelector('#paymentAll');
                    if (cartItems.length === 0) {
                        checkoutButton.style.display = 'none';
                        document.getElementById("cart").style.display='none';
                    }
                });
            });
        </script>
    </body>
</html>