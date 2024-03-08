<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!--css-->
<link rel="stylesheet" href="/static/css/list.css">

<c:set var="pageTitle" value="${category.parent_id}/${category.c_name}"/>
<%@ include file="../common/header.jspf"%>
<div class="product-list">
  <div class="con">
    <div class="product-list__head">
      <div class="flex mt-5 ml-2">
        <strong>${productCnt}</strong>개 상품
        <div class="flex-grow"></div>
        <c:if test="${rq.isLogined() && rq.loginedMemberId == 1}">
          <button type="button" class="btn btn" onclick="location.href='write'">상품 등록하기</button>
        </c:if>
      </div>
    </div>
    <div class="product-list__body flex flex-wrap">
      <c:forEach  var="product" items="${products}">
        <div class="product">
          <a href="../product/detail?id=${product.id}">
            <!--<img src="${product.image}" alt="상품이미지">-->
            <img src="/static/image/${product.image}" />
          </a>
          <span class="desc_box">
              <span class="item_brand">
                ${product.brandName}
              </span>
              <span class="item_txt">${product.productName}</span>
              <span class="item_price_box mt-5">
                <span class="price">${product.price}</span>
                <span class="discount">${product.discount}%</span>
              </span>
          </span>
        </div>
      </c:forEach>
    </div>

  </div>
</div>
<%@ include file="../common/footer.jspf"%>