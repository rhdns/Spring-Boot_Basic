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
<h1>Your Todos</h1>
<table class="table">
<thead>
    <tr>
        <th>id</th>
        <th>Description</th>
        <th>Target Date</th>
        <th>Is Done?</th>
        <th></th>
        <th></th>
    </tr>
</thead>
<tbody>
    <c:forEach items="${todos}" var="todo">
        <tr>
            <td>${todo.description}</td>
            <td>${todo.targetDate}</td>
            <td>${todo.done}</td>
            <td> <a href="delete-todo?id=${todo.id}"class="btn btn-warning">Delete</a> </td>
            <td> <a href="update-todo?id=${todo.id}"class="btn btn-success">Update</a> </td>
        </tr>
    </c:forEach>
</tbody>

</table>
<a href="add-todo" class = "btn btn-success">Add todo</a>
</div>
<%@ include file="common/footer.jsp"%>
