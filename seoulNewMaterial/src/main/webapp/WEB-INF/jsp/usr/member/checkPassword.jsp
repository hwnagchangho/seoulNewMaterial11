<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="pageTitle" value="비밀번호 확인" />
<%@ include file="../common/header.jspf"%>
<section class="mt-5 con-min-width">
  <div class="con px-3">
    <form class="table-box-type-1" method="POST" action="../member/doCheckPassword">
      <input type="hidden" name="replaceUri" value="${param.replaceUri}"/>
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
          <th>로그인 비밀번호</th>
          <td>
            <input name="loginPw" class="input input-bordered w-96" type="password" placeholder="로그인비밀번호" required="required"/>
          </td>
        </tr>
        <tr>
          <th>비고</th>
          <td>
            <button type="submit" class="btn btn-outline btn-info">비밀번호 확인</button>
            <button type="button" class="btn btn-outline btn-info" onclick="history.back();">뒤로가기</button>
          </td>
        </tr>
      </table>
    </>
  </div>
</section>
<%@ include file="../common/footer.jspf"%>