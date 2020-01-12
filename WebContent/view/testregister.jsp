<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/homework.css">

<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet">
<script type="text/javascript" src="js/myJs.js"></script>
<title>testregister.jsp</title>

	<script type="text/javascript">
        function formCheck(){
            if(frm.testname.value == ""){
                alert("시험명을 입력해주세요.")
                frm.testname.focus();
                return false;
            }
            if(frm.testcnt.value == ""){
                alert("문항 수를 입력해주세요.")
                frm.testcnt.focus();
                return false;
            }
            if(frm.testtype.value == ""){
                alert("시험 종목을 선택해주세요.")
                frm.testtype.focus();
                return false;
            }
            if(frm.testtime.value == ""){
                alert("시험 시간을 입력해주세요.")
                frm.testtime.focus();
                return false;
            }
            if(frm.content.value.length == 0){
                alert("시험 상세정보를 입력해주세요.")
                frm.content.focus();
                return false;
            }          
            var checked_items = 0;
            for (i=0; i<frm.elements.length; i++) {
            if ((frm.elements[i].name == "ttype") &&
            (frm.elements[i].checked))
            checked_items++;
            }
            if (checked_items == 0)
            {
            alert("테스트 유형을 선택해 주세요.")
            return false;
            }
            alert("시험 등록이 완료되었습니다.")
            return true;
        }
    </script>
</head>
<body>
	<div style="position: relative; width: 1200px; height: 867px; margin: 0 auto; font-family: 'Nanum Gothic', sans-serif;">
		<form id="frm" name="frm" action="insertExamOk.do" method="post" onsubmit="return formCheck()">
			<div style="position: absolute; top: 55px; left: 76px; width: 300px; height: 36px; font-weight: bold; font-size: 25px;">
				시험지 등록
			</div>
			<table cellpadding="15px" style="position: absolute; top: 115px; left: 76px; width: 1000px; height: 100px; border-collapse: collapse;">
				<tr>
					<th>시험명</th>
					<td colspan="3">
					<input type="text" placeholder="신입사원 레벨 테스트" id="testname" name="testname" style="border-radius: 5px; height: 30px; width: 670px; padding: 0 0 0 5px; border: 1px #cccccc solid">
					</td>
				</tr>
				<tr>
					<th width="100">문항 수</th>
					<td><input type="text" placeholder="10" id="testcnt"
						name="testcnt"
						style="border-radius: 5px; height: 30px; width: 150px; padding: 0 0 0 5px; border: 1px #cccccc solid">
					</td>
					<th>시험시간</th>
					<td>
					<input type="text" placeholder="1시간" id="testtime" name="testtime" style="border-radius: 5px; height: 30px; width: 150px; padding: 0 0 0 5px; border: 1px #cccccc solid">
					</td>
				</tr>
				<tr>
					<th>시험종목</th>
					<td colspan="3">
					<select id="testtype" name="testtype" style="border-radius: 5px; height: 30px; width: 160px; border: 1px #cccccc solid">
							<option value="" selected>종목선택</option>
							<option value="001">데이터베이스</option>
							<option value="002">자바</option>
							<option value="003">오라클</option>
					</select>
					</td>
				</tr>
				<tr>
					<th>상세정보</th>
					<td colspan="3"><textarea id="txt" name="content" placeholder="예담 주식회사 2020년 신입사원 공채 실기 테스트입니다."></textarea>
					</td>
				</tr>
				<tr>
					<th>출제유형</th>
					<td colspan="3"><input id="rd1" name="ttype" type="checkbox" value="R">
					<label for="rd1"><span></span>&nbsp;랜덤출제&nbsp;&nbsp;&nbsp;</label>
					<input id="rd2" name="ttype" type="checkbox" value="A"> 
					<label for="rd2"><span></span>&nbsp;고정출제</label></td>
				</tr>
			</table>
			<div style="position: absolute; top: 530px; left: 500px;">
				<input type="submit" value="등록" id="regbtn">&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" value="목록" id="listbtn2" onclick="location.href='testlist.do'">
			</div>
		</form>
	</div>
</body>
</html>