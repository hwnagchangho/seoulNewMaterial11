<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="pageTitle" value="마이페이지" />
<%@ include file="../common/header.jspf"%>
<section class="mt-5 con-min-width">
  <div class="con px-3">
    <div class="table-box-type-1">
      <table>
        <colgroup>
          <col width="200"/>
        </colgroup>
        <tbody>
        <tr>
          <th>로그인 아이디</th>
          <td>
            ${rq.loginedMember.loginId}
          </td>
        </tr>
        <tr>
          <th>이름</th>
          <td>
            ${rq.loginedMember.name}
          </td>
        </tr>
        <tr>
          <th>닉네임</th>
          <td>
            ${rq.loginedMember.nickname}
          </td>
        </tr>
        <tr>
          <th>주소</th>
          <td>
           ${rq.loginedMember.sample4_roadAddress}, ${rq.loginedMember.sample4_detailAddress}
          </td>
        </tr>
        <tr>
          <th>이메일</th>
          <td>
            ${rq.loginedMember.email}
          </td>
        </tr>
        <tr>
          <th>전화번호</th>
          <td>
            ${rq.loginedMember.cellphoneNo}
            <!--            ${Ut.getUriEncoded('../article/modify')}-->
            <!--            ${Ut.getUriEncoded('../member/modify')}-->
            <!--     이건왜써주는거지 ????       -->
          </td>
        </tr>
        <tr>
          <th>비고</th>
          <td>
            <a href="../member/checkPassword?replaceUri=${Ut.getUriEncoded('../member/modify')}" class="btn btn-outline btn-success">회원정보 수정</a>
            <button type="button" class="btn btn-outline btn-info" onclick="history.back();">뒤로가기</button>
          </td>
        </tr>
      </table>
    </div>
  </div>
</section>
<%@ include file="../common/footer.jspf"%>