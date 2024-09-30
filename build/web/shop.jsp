<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cara</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>

    <%@include file="./inc/header.jsp"%>
    <section id="page-header">
        <h2>#${category.name}</h2>
        <p>Save more with coupons & up to 70% off!</p>
        <form action="SearchServlet" class="w-full" method="get">
            <div class="from-control flex items-center relative w-full">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon-search" fill="none" viewBox="0 0 24 24"
                     stroke="currentColor" stroke-width="2" height="16">
                <path stroke-linecap="round" stroke-linejoin="round"
                      d="M21 211-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                </svg>
                <input name="keyword" placeholder="Search ..." type="text"
                       class="search-input w-full bg-while border-[1px] rounded-[5px] h-[4px] border-[#b3b3b3] p1-[40px]">
            </div>
        </form>
    </section>
    <section id="product1" class="section-p1">
        <div class="prod-cont">
             <c:forEach items="${productList}" var="product">
                <div class="prod">
                    <img src="${product.thumbnail}" alt="">
                    <div class="des">
                        <span>adidas</span>
                        <h5>${product.name}</h5>
                        <div class="star">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <h4>${product.price}</h4>
                    </div>
                    <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
                </div>
             </c:forEach>
        </div>
    </section>

    <section id="pagination" class="section-p1">
        <c:if test="${page > 1}">
            <a href="ShopServlet?page=${page - 1}">${page - 1}</a>
        </c:if>
        <a class="active" href="ShopServlet?page=${page}">${page}</a>
        <!--<c:if test="${page < numberPage}">
            <a href="ShopServlet?page=${page + 1}">${page + 1}</a>
        </c:if>-->

        <a href="ShopServlet?page=${page + 1}"><i class="fa-solid fa-arrow-right"></i></a>
    </section>


    
    <%@include file="./inc/footer.jsp"%>

</body>

</html>

