<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="qweadzs.DBConn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%
	String userid = null; //������ ������ �ǵ��ư�, ȸ������ �κп��� ����
	if (session.getAttribute("userid") != null) {
		userid = (String) session.getAttribute("userid");
	}
	if (userid != null) {
		out.print("<script>");
		out.print("alert('�̹� �α����� �Ǿ��ֽ��ϴ�.');");
		out.print("history.back();");
		out.print("history.back();");
		out.print("</script>");
	}
	Connection conn = DBConn.getMySqlConnection();
	Statement stmt = conn.createStatement();

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	String sql = "select admin from customer where id='" + id + "' and pw='" + pw + "'";
	ResultSet rs = stmt.executeQuery(sql);//������ ����

	if (rs.next()) {
		if (rs.getInt(1) == 1) {
			session.setAttribute("userid", id); //���� �����
			out.print("<script>");
			out.print("alert('������ �α��ο� �����Ͽ����ϴ�.');");
			out.print("location.href = 'AHome.jsp';");
			out.print("</script>");
		} else {
			session.setAttribute("userid", id);
			out.print("<script>");
			out.print("alert('����� �α��ο� �����Ͽ����ϴ�.');");
			out.print("location.href = 'CHome.jsp';");
			out.print("</script>");
		}
	} else {
		out.print("<script>");
		out.print("alert('�н����� �Ǵ� ���̵� �߸��� ���Դϴ�.');");
		out.print("history.back();");
		out.print("</script>");
	}
%>