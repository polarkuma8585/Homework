<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="homework.css">
<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css"
	rel="stylesheet">
<title>setquestion.jsp</title>
<script type="text/javascript">
	function questFormCheck(){
		if(frm.qtype.value == ""){
		alert("문제 종목을 선택해주세요.")
		frm.qtype.focus();
		return false;
		}
		if(frm.qcontent.value.length == 0){
		alert("문제가 입력되지 않았습니다.")
		frm.qcontent.focus();
		return false;
		}
		if(frm.e1.value == ""){
			alert("보기1을 입력해주세요.")
			frm.e1.focus();
			return false;
		}
		if(frm.e2.value == ""){
			alert("보기2를 입력해주세요.")
			frm.e2.focus();
			return false;
		}
		if(frm.e3.value == ""){
			alert("보기3을 입력해주세요.")
			frm.e3.focus();
			return false;
		}
		if(frm.e4.value == ""){
			alert("보기4를 입력해주세요.")
			frm.e4.focus();
			return false;
		}
		if(frm.qexplain.value == 0){
			alert("문제의 해설을 입력해주세요.")
			frm.qexplain.focus();
			return false;
		}
		var checked_items = 0;
        for (i=0; i<frm.elements.length; i++) {
        if ((frm.elements[i].name == "answer") &&
        (frm.elements[i].checked))
        checked_items++;
        }
        if (checked_items == 0)
        {
        alert("정답을 선택해 주세요.")
        return false;
        }
		alert("문제 등록이 완료되었습니다.")
		return true;
	}
</script>
</head>
<body>
	<div style="position: relative; width: 1200px; height: 867px; margin: 0 auto; font-family: 'Nanum Gothic', sans-serif;">
	<form id="frm" name="frm" action="testlist.html" method="post" onsubmit="return questFormCheck()">
		<div style="position: absolute; top: 55px; left: 76px; width: 300px; height: 36px; font-weight: bold; font-size: 25px;">
			문제 등록</div>
		<table cellpadding="5px" style="position: absolute; top: 115px; left: 76px; width: 1000px; height: 100px;">
			<tr>
				<td width="60">종목</td>
				<td>
				<select id="qtype" name="qtype" style="border-radius: 5px; height: 40px; width: 170px; border: 1px #cccccc solid">
							<option value="" selected>종목선택</option>
							<option value="001">데이터베이스</option>
							<option value="002">자바</option>
							<option value="003">오라클</option>
				</select>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">문제</td>
				<td>
				<textarea rows="3" cols="100" id="qcontent" name="qcontent" style="width: 825px; resize: none; border-radius: 5px; padding: 15px; border: 1px #cccccc solid"></textarea>
				</td>
			</tr>
			<tr>
				<td>보기1</td>
				<td>
				<input type="text" id="e1" name="e1" placeholder="신입사원 레벨 테스트" style="border-radius: 5px; height: 50px; width: 840px; padding: 0 0 0 15px; border: 1px #cccccc solid">
				</td>
			</tr>
			<tr>
				<td>보기2</td>
				<td>
				<input type="text" id="e2" name="e2" placeholder="신입사원 레벨 테스트" style="border-radius: 5px; height: 50px; width: 840px; padding: 0 0 0 15px; border: 1px #cccccc solid">
				</td>
			</tr>
			<tr>
				<td>보기3</td>
				<td>
				<input type="text" id="e3" name="e3" placeholder="신입사원 레벨 테스트" style="border-radius: 5px; height: 50px; width: 840px; padding: 0 0 0 15px; border: 1px #cccccc solid">
				</td>
			</tr>
			<tr>
				<td>보기4</td>
				<td>
				<input type="text" id="e4" name="e4" placeholder="신입사원 레벨 테스트" style="border-radius: 5px; height: 50px; width: 840px; padding: 0 0 0 15px; border: 1px #cccccc solid">
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">해설</td>
				<td>
				<textarea id="qexplain" name="qexplain" placeholder="신입사원 레벨 테스트" style="border-radius: 5px; height: 50px; width: 840px; padding: 15px 0 0 15px; border: 1px #cccccc solid; vertical-align: middle; resize: none;"></textarea>
				</td>
			</tr>
			<tr>
				<td>정답</td>
				<td><input id="chk1" type="checkbox" name="answer">
					<label for="chk1"><span></span>1</label>&nbsp;&nbsp; 
					<input id="chk2" type="checkbox" name="answer"> 
					<label for="chk2"><span></span>2</label>&nbsp;&nbsp; 
					<input id="chk3" type="checkbox" name="answer"> 
					<label for="chk3"><span></span>3</label>&nbsp;&nbsp;
					<input id="chk4" type="checkbox" name="answer"> 
					<label for="chk4"><span></span>4</label>
				</td>
			</tr>
		</table>
		<div style="position: absolute; top: 700px; left: 500px;">
			<input type="submit" value="등록" id="regbtn">&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="목록" onclick="location.href='testlist.html'" id="listbtn2">
		</div>
		</form>
	</div>
</body>
</html>