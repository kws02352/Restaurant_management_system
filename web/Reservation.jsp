<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<span
			style="font-family: arial; font-size: 3em; font-weight: bold; text-align: center;">Reservation.</span>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>���� �ý���</legend>

<!-- Select Basic -->
<div class="control-group">
  <label class="control-label" for="selectbasic">�ð��� �����ϼ���.</label>
  <div class="controls">
    <select id="selectbasic" name="selectbasic" class="input-xlarge">
      <option>18��</option>
      <option>19��</option>
      <option>20��</option>
      <option>21��</option>
      <option>22��</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="control-group">
  <label class="control-label" for="selectbasic">���� �����ϼ���</label>
  <div class="controls">
    <select id="selectbasic" name="selectbasic" class="input-xlarge">
      <option>10��</option>
      <option>20��</option>
      <option>30��</option>
      <option>40��</option>
      <option>50��</option>
    </select>
  </div>
</div>

<!-- Multiple Checkboxes (inline) -->
<div class="control-group">
  <label class="control-label" for="checkboxes">�޴��� �����ϼ���.(���� ���� ����)</label>
  <div class="controls">
    <label class="checkbox inline" for="checkboxes-0">
      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="0. No Select">
      0. No Select
    </label>
    <label class="checkbox inline" for="checkboxes-1">
      <input type="checkbox" name="checkboxes" id="checkboxes-1" value="1. Pasta">
      1. Pasta
    </label>
    <label class="checkbox inline" for="checkboxes-2">
      <input type="checkbox" name="checkboxes" id="checkboxes-2" value="2.Steak">
      2.Steak
    </label>
    <label class="checkbox inline" for="checkboxes-3">
      <input type="checkbox" name="checkboxes" id="checkboxes-3" value="3. Pizza">
      3. Pizza
    </label>
    <label class="checkbox inline" for="checkboxes-4">
      <input type="checkbox" name="checkboxes" id="checkboxes-4" value="4.Stew">
      4.Stew
    </label>
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="control-group">
  <label class="control-label" for="radios">�ο����� �����ϼ���.</label>
  <div class="controls">
    <label class="radio inline" for="radios-0">
      <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
      1
    </label>
    <label class="radio inline" for="radios-1">
      <input type="radio" name="radios" id="radios-1" value="2">
      2
    </label>
    <label class="radio inline" for="radios-2">
      <input type="radio" name="radios" id="radios-2" value="3">
      3
    </label>
    <label class="radio inline" for="radios-3">
      <input type="radio" name="radios" id="radios-3" value="4">
      4
    </label>
    <label class="radio inline" for="radios-4">
      <input type="radio" name="radios" id="radios-4" value="5�� �̻�">
      5�� �̻�
    </label>
  </div>
</div>

</fieldset>
</form>
<a href="#" class="btn btn-lg btn-success"><span class="glyphicon glyphicon-circle-arrow-down"></span> �����ϱ�</a>

</body>
</html>