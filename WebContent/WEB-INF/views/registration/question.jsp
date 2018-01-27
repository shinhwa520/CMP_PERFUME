<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="org.apache.commons.lang.StringEscapeUtils" %>
<%@ include file="../../common/taglib.jsp" %>

<section class="content">
	<div class="topic">please answer the following questions :</div>
	<form:form method="POST" modelAttribute="UserInfoForm">
		<form:hidden path="userId" id="userId" />
		<c:if test="${!UserInfoForm.quesMap.isEmpty() }">
			<c:forEach var="vo" items="${ UserInfoForm.quesMap }">
				${vo.key.content }<br/>
					<c:forEach var="detail" items="${ vo.value }">
						<input type="radio" name=${vo.key.id } value=${detail.id } id=${detail.id }> ${detail.content }<br/>
					</c:forEach>
					<br/>
			</c:forEach>
					<input class="btn btn-lg btn-success btn-block" type="button" name="submitBtn" value="提交答案  完成註冊" onclick="doSubmit()"/>
		</c:if>
	</form:form>
</section>

<!-- jQuery 2.1.4 -->
<script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript">
	function doSubmit() {
		var getResult = function () {
		    var result = [];
		    $('input:radio').each(function () {
		        var $this = $(this), id = $this.attr('id');
		        if ($(this).prop('checked')) {
		            result.push(id);
		        }
		    });
		    return result;
		};
		results = getResult().join(',');
		console.log(results);

		
		$.ajax({
				url : '${pageContext.request.contextPath}/registration/ans?id=' + $('#userId').val() + '&results=' +results,
				type : "GET",
				dataType : 'json',
				async: false,
				contentType:"application/json;charset=utf-8", 
				success : function(data) {
                    if (data.status === 200) {
                        successMessage(data.message);
                		setTimeout(function(){
                			window.location.href = '<%=StringEscapeUtils.escapeHtml(request.getContextPath())%>/login';
                		}, 3000);
                        
                    } else {
                        errorMessage(data.message);
                    }
				},

				error : function(xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError);
				}
			});
	}

	function successMessage(message) {
		var msg = $('#message');
		msg.addClass('alert-info');
		msg.html(message);
		      
		msg.fadeIn();
		setTimeout(function(){
			msg.fadeOut();
		}, 2000);
	}
	function errorMessage(message) {
		var msg = $('#message');
		$(window).scrollTop(msg.offset().top);
		msg.addClass('alert-danger');
		msg.append(message);
		      
		msg.fadeIn();
		setTimeout(function(){
			msg.fadeOut();
		}, 2000);
	}
</script>