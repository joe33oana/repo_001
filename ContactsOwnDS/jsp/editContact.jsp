<%@include file="taglib_includes.jsp" %>

<html>
<head>
	<script type="text/javascript" src="js/contacts.js"></script>
	<title><spring:message code="App.Title"></spring:message> </title>
</head>
<body style="font-family: Arial; font-size:smaller;">

<table bgcolor="#EDEDED" width="500" align="center" style="border-collapse: collapse;" border="1" bordercolor="#006699" >
	<tr bgcolor="#FAF75A">
		<td align="center"><h3>Edit Contact Form</h3></td>
	</tr>
  <tr valign="top" align="center">
    <td align="center">
 		<form:form action="updateContact.do" method="post" commandName="editContact">
				<table width="500" style="border-collapse: collapse;" border="0" bordercolor="#006699" cellspacing="2" cellpadding="2">					
					<tr>
						<td width="100" align="right">id</td>
						<td width="150">
						<form:input path="id" readonly="true"/></td>
						<td align="left">
						<form:errors path="id" cssStyle="color:red"></form:errors>  </td>
					</tr>
					<tr>
						<td width="100" align="right">name</td>
						<td>
						<form:input path="name"/></td>
						<td align="left">
						<form:errors path="name" cssStyle="color:red"></form:errors> 
						</td>
					</tr>
					
					<tr>
						<td width="100" align="right">date of birth</td>
						<td><form:input path="dob"/></td>
						<td align="left"><form:errors path="dob" cssStyle="color:red"></form:errors>  </td>
					</tr>
					<tr>
						<td width="100" align="right">gender</td>
						<td>						
							<form:select path="gender">
					            <form:option value="M" label="Male"/>
					            <form:option value="F" label="Female"/>
					        </form:select>						
						</td>
						<td>
						</td>						
					</tr>
					<tr>
						<td width="100" align="right">address</td>
						<td><form:input path="address"/></td>
						<td align="left">
						<form:errors path="address" cssStyle="color:red"></form:errors>  </td>
					</tr>
					<tr>
						<td width="100" align="right">email</td>
						<td><form:input path="email"/></td>
						<td align="left"><form:errors path="email" cssStyle="color:red"></form:errors>  </td>
					</tr>
					<tr>
						<td width="100" align="right">mobile</td>
						<td><form:input path="mobile"/></td>
						<td align="left">
						<form:errors path="mobile" cssStyle="color:red"></form:errors>  </td>
					</tr>
					<tr valign="bottom">
						<td colspan="3" align="center">
						<input type="button"  value="Delete" onclick="javascript:deleteContact('deleteContact.do?id=${editContact.id}');">
						&nbsp;&nbsp;
						<input type="submit" name="" value="Save">						
						&nbsp;&nbsp;
						<input type="button"  value="Back" onclick="javascript:go('viewAllContacts.do');">
						</td>
					</tr>
					
				</table>				
		</form:form>
    </td>    
  </tr>
</table>


</body>
</html>
