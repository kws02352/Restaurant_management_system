<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <title> ����������� ȸ������ </title>
    </head>
    <body>
    <form name=form method="post" action="joinInfo.jsp">
      <table width=650 border="1px" align=center>
        <tr>
          <th colspan="2" bgcolor="#E4F7BA" >����������� ȸ������</th>
        </tr>
        <tr>
          <td>�̸�</td>
          <td><input type="text" name="name"></td>
        </tr>
        <tr>
          <td>���̵�</td>
          <td><input type="text" name="id"> </td>
        </tr>
        <tr>
          <td>��й�ȣ</td>
          <td><input type="password" name="pw"> </td>
        </tr>
        <tr>
          <td>�ڵ��� ��ȣ</td>
          <td><input type="text" name="phone">- ���� ��������</td>
        </tr>
        <tr>
          <td>�ֹε�Ϲ�ȣ</td>
          <td><input type="text" name="birth1">-<input type="password" name="birth2"></td>
        </tr>
        <tr>
        	<td>�����Դϱ�?</td>
        	<td><input type="radio" name="chkbox" value="1">��    <input type="radio" name="chkbox" value="0">�ƴϿ�</td>
        </tr>
        
      </table>
      <p align=center>
        <input type="submit" name="join" value="ȸ�� ����">&nbsp;&nbsp;&nbsp;
        <input type="reset" name="reset" value="�ٽ� �Է�">
        
      </p>
    </form>
    <%session.invalidate(); %>
    </body>
</html>