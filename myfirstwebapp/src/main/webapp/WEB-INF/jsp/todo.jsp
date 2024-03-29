<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2024-03-22
  Time: 오후 5:08
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>
    <div class="container">
    <h1>Enter Todo Details</h1>
        <form:form method="post" modelAttribute="todo">
            <fieldset class="mb-3">
                <form:label path="description">Description</form:label>
                <form:input type="text" path="description" required="required"/>
                <form:errors path="description" cssClass="text-warning"/>
            </fieldset>
            <fieldset class="mb-3">
                <form:label path="targetDate">Target Date</form:label>
                <form:input type="text" path="targetDate" required="required"/>
                <form:errors path="targetDate" cssClass="text-warning"/>
            </fieldset>

            <form:input type="hidden" path="done"/>
            <form:input type="hidden" path="id"/>
        <input type="submit" class="btn btn-success">
    </form:form>
    </div>
<%@ include file="common/footer.jsp"%>
<script type = "text/javascript">
    $('#targetDate').datepicker({
        format: 'yyyy-mm-dd',
    });
</script>


