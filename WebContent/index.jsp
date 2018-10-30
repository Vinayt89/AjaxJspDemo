<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax Demo</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
</head>
<body>

<script type="text/javascript">

$(document).ready(function() {
	$('#btnHello').click(function(){
		var fullname = $('#fullname').val();
		$.ajax({
			type:'POST',
			data: {
				fullname: fullname,
				action: 'demo1'
			},
			url:'ajaxController',
			success: function(result){
				$('#result1').html(result);
			}
		});
	});
	
	$('#btnSum').click(function(){
		var number1 = $('#number1').val();
		var number2 = $('#number2').val();
		$.ajax({
			type:'POST',
			data: {
				number1: number1,
				number2: number2,
				action: 'demo2'
			},
			url:'ajaxController',
			success: function(result){
				$('#result2').html(result);
			}
		});
	});
});
</script>

	<fieldset>
		<legend>Demo 1</legend>
		<form>
			Name <input type="text" id="fullname"> <input type="button" value="Hello" id="btnHello"><br>
			<span id="result1"></span>
		</form>
		<br>
	</fieldset>
	<fieldset>
	<br>
	<legend>Demo 2</legend>
		<form>
			Number1 <input type="text" id="number1"><br><br>
			Number2 <input type="text" id="number2"><br><br>
			<input type="button" value="Sum" id="btnSum"><br><br>
			<b>Result = </b><span id="result2"></span>
		</form>
	</fieldset>

</body>

</html>