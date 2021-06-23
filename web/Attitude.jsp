<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="qweadzs.DBConn" %>
<% request.setCharacterEncoding("euc-kr"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div style="text-align: center">
<span
			style="font-family: arial; font-size: 3em; font-weight: bold; text-align: center;">Attitude.</span>
			</div>
<table width="100%" border="1">
    <thead>
        <tr>
            <th>�̸�</th>
            <th>�ֹ� ���ڸ� </th>
            <th>���ڸ� </th>
            <th>�ڵ�����ȣ </th>
            <th>��å</th>
            <th>����</th>
            <th>������</th>
            <th>�޿�</th>
        </tr>
    </thead>
    <tbody>
    <%
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
         
        try{
        	conn = DBConn.getMySqlConnection();
             
            Statement stmt = null;
            stmt = conn.createStatement();
            String query = "select * from staff";
            rs = stmt.executeQuery(query);
             
            while(rs.next()){
    %>
        <tr>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("birth1") %></td>
            <td><%= rs.getString("birth2") %></td>
            <td><%= rs.getString("phoneNumber") %></td>
            <td><%= rs.getString("class") %></td>
            <td><%= rs.getString("attitude") %></td>
            <td><%= rs.getString("eval") %></td>
            <td><%= rs.getString("salary") %></td>
        </tr>
    <%
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %>
    </tbody>
</table>

</body>
</html>