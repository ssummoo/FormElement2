<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEST1</title>
</head>
<body>
	<h1>Test1</h1>

	<form:form action="result" modelAttribute="testBean">
		<form:select path="a1">
			<form:option value="data1">data1</form:option>
			<form:option value="data2">data2</form:option>
			<form:option value="data3">data3</form:option>
			<form:option value="data4">data4</form:option>
		</form:select>
		<hr />
		<form:select path="a2">
			<form:options items="${requestScope.data_list1 }"/>
		</form:select>
		<hr />
		<form:select path="a3">
			<form:options items="${requestScope.data_list2 }"/>
		</form:select>
		<hr />
		<form:select path="a4">
			<form:options items="${requestScope.data_list3 }" itemLabel="key" itemValue="value"/>
		</form:select>
		<hr />
		<hr />
		<hr />
		<hr />		
		<form:checkbox path="a5" value="data1"/>항목1
		<form:checkbox path="a5" value="data2"/>항목2
		<form:checkbox path="a5" value="data3"/>항목3
		<!-- String 배열 -->
		<hr />
		<form:checkboxes items="${requestScope.data_list1 }" path="a6"/>
		<hr />
		<!--  ArrayList 배열 -->
		<form:checkboxes items="${requestScope.data_list2 }" path="a7"/>
		<hr />
		<!--  KeyValue 배열 -->
		<form:checkboxes items="${requestScope.data_list3 }" path="a8" itemLabel="key" itemValue="value"/>
		<hr />
		<hr />
		<hr />
		<hr />		
<!-- 		a9와 동일한 것만 선택 -->
		<form:radiobutton path="a9" value="data1"/>항목 1
		<form:radiobutton path="a9" value="data2"/>항목 2
		<form:radiobutton path="a9" value="data3"/>항목 3
		<hr />
		<form:radiobuttons path="a10" items="${requestScope.data_list1 }"/>
		<hr />
		<!--  ArrayList 배열 -->
		<form:radiobuttons path="a11" items="${requestScope.data_list2 }" />
		<hr />
		<!--  KeyValue 배열 -->
		<form:radiobuttons path="a12" items="${requestScope.data_list3 }" itemLabel="key" itemValue="value"/>
		
    </form:form>   
	
</body>
</html>