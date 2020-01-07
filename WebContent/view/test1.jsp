<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="homework.css">
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet">
    <title>test1.jsp</title>
<script type="text/javascript">

/* tag id 로 접근해 시험문제 유효성 검사  
 * form tag의 onsubmit 속성으로 호출
 */
function check_box_all2(){
	test = 3;
	chk2_cnt = 0;
	result = 0;
	cnt = 0;
	for(i=1; i <= test; i++){
		chk2_cnt = 0;
		for(j=1; j < 5; j++){
			box = "chk" + i + "_" + j; 
			if(document.getElementById(box).checked == true){
				chk2_cnt++;
			}
		}
		if(chk2_cnt != 0){
			cnt++;
		}
	}
	result = test - cnt;
	if(result != 0){
		if(confirm("풀지않은 문항이 " + result +"문항이 있습니다. 제출하시겠습니까?")){
			return true;	
		}else{
			return false;	
		}
	}
}

/* tag name 으로 checkbox 유효성 검사
 * form tag의 onsubmit 속성으로 호출
 */
function check_box_all(){

	chk_cnt = 0;
	a = 0;
	for(i=0; i<frm.chk.length; i++){
		a++;
		if(frm.chk[i].checked != true){
			chk_cnt++;
			}
		
		if(a == 4 && chk_cnt <= 3){
			chk_cnt = 0;
			a = 0;
		}
		if(a == 4 && !chk_cnt <= 3){
			a = 0;
		}
		
	}
	chk_cnt = Math.floor((chk_cnt/4)/2);
	console.log(chk_cnt);
	if(chk_cnt != 0){
		if(confirm("풀지않은 문항이 " + chk_cnt +"문항이 있습니다. 제출하시겠습니까?")){
			return true;	
		}else{
			return false;	
		}			
	}
}

	function check_right(check){  
     for(i=0; i < 4; i++){    	
    	 chk = document.getElementById(check).checked;
    	 chk_r = check.substr(0,3) + "_" + check.substr(3,5);
    	 
    	 if(chk == true){
    		 document.getElementById(chk_r).checked = true;
    	 }else{
    		 document.getElementById(chk_r).checked = false;    
    	 }    		 
     }  
}  
  
	function check_left(check){  
	     for(i=0; i < 4; i++){	    	
	    	 chk = document.getElementById(check).checked;
	    	 chk_l = check.substr(0,3) + check.substr(4,6);
	    	 
	    	 if(chk == true){	    		 	    		 
	    		 document.getElementById(chk_l).checked = true;
	    	 }else{
	    		 document.getElementById(chk_l).checked = false;
	    	 }    		 
	     }  
	}  

 	
	var SetTime = 3600;		// 최초 설정 시간(기본 : 초)

	function msg_time() {	// 1초씩 카운트
		m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
		var msg =  m;
		document.frm.remain.value = msg;		// div 영역에 보여줌 	
		SetTime--;					// 1초씩 감소
		if (SetTime < 0) {			// 시간이 종료 되었으면..
			clearInterval(tid);		// 타이머 해제
			alert("시험 시간이 종료되었습니다.");
			document.frm.submit();
		}
		
	}
	window.onload = function TimerStart(){ tid=setInterval('msg_time()',1000) };

	function fnMove(seq){
	        var offset = $("#td" + seq).offset();
	        $('html, body').animate({scrollTop : offset.top}, 400);
	    }
</script>
</head>
<body>
 	<form id="frm" name="frm" action="testlist.html" method="post" onsubmit="return check_box_all2()">
        <div style="position:relative; width:1200px; height:867px; margin:0 auto; font-family: 'Nanum Gothic', sans-serif;">
            <div style="position:absolute; top:63px; left:76px; width:300px; height:36px; font-weight:bold; font-size: 25px;">
                        시험응시
            </div>
            <div style="position: absolute; top: 115px; left: 76px; width:990px; height: 100px; background-color: #e7e7e7; padding:10px 5px 5px 10px">
                <table width="990" align="left">
                <tr >
                    <td>응시자</td>
                    <td width="170px"><input type="text" value="홍길동" style="height:40px; width:150px; border-radius: 5px; border:1px solid #e7e7e7; padding:0 0 0 10px" readonly></td>
                    <td width="80px" align="center">시험명</td>
                    <td width="260px"><input type="text" value="신입사원 레벨 테스트" style="height:40px; width:250px; border-radius: 5px; border:1px solid #e7e7e7; padding:0 0 0 10px" readonly></td>
                    <td width="80px" align="center">문항 수</td>
                    <td width="60px"><input type="text" value="10" style="height:40px; width:50px; border-radius: 5px; border:1px solid #e7e7e7; padding:0 0 0 10px" readonly></td>
                    <td align="center">시험시간</td>
                    <td align="center"><input type="text" value="1시간"style="height:40px; width:90px; border-radius: 5px; border:1px solid #e7e7e7; padding:0 0 0 10px" readonly></td>
                </tr>
                <tr >
                    <td>상세정보</td>
                    <td colspan="5">
                    <input type="text" value="예담 주식회사 2020년 신입사원 공채 실기 테스트입니다." style="width:670px; height:40px; border-radius: 5px; border:1px solid #e7e7e7; padding:0 0 0 10px" readonly>
                    </td>
                    <td align="center">남은시간</td>
                    <td align="center">
                    <input type="text" id="remain" value="" name="remain" style="height:40px; width:90px; border-radius: 5px; border:1px solid #e7e7e7; padding:0 0 0 10px; color:blue;" readonly>
                    </td>
                </tr>
                </table>
            </div>
            <div style="position:absolute; top: 260px; left: 76px; width:800px; height: 570px; background-color: #e7e7e7; padding:10px 5px 5px 5px">
            <table width="800px" cellpadding="10px">
                <tr valign="top">
                    <td width="650" id="td1" name="td1">
                    1.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                                        우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한    
                    </td>
                </tr>
                <tr align="left">
                    <td>
                        <input type="checkbox" id="chk1_1" name="chk" value="1" onclick="check_right('chk1_1')">
                        <label for="chk1_1"><span></span><font style="cursor:pointer">1</font></label><br>                   
                        <input type="checkbox" id="chk1_2" name="chk" value="2" onclick="check_right('chk1_2')">
                        <label for="chk1_2"><span></span><font style="cursor:pointer">2</font></label><br>
                        <input type="checkbox" id="chk1_3" name="chk" value="3" onclick="check_right('chk1_3')">
                        <label for="chk1_3"><span></span><font style="cursor:pointer">3</font></label><br>
                        <input type="checkbox" id="chk1_4" name="chk" value="4" onclick="check_right('chk1_4')">
                        <label for="chk1_4"><span></span><font style="cursor:pointer">4</font></label><br>
                    </td>
                </tr>
                <tr>
                    <td id="td2" name="td2">
                        2.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                                                우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한
                    </td>
                </tr>
                <tr align="left">
                    <td>
                            <input type="checkbox" id="chk2_1" name="chk" value="1" onclick="check_right('chk2_1')">
                            <label for="chk2_1"><span></span><font style="cursor:pointer">1</font></label><br>
                            <input type="checkbox" id="chk2_2" name="chk" value="2" onclick="check_right('chk2_2')">
                            <label for="chk2_2"><span></span><font style="cursor:pointer">2</font></label><br>
                            <input type="checkbox" id="chk2_3" name="chk" value="3" onclick="check_right('chk2_3')">
                            <label for="chk2_3"><span></span><font style="cursor:pointer">3</font></label><br>
                            <input type="checkbox" id="chk2_4" name="chk" value="4" onclick="check_right('chk2_4')">
                            <label for="chk2_4"><span></span><font style="cursor:pointer">4</font></label><br>
                    </td>
                </tr>
                <tr>
                    <td id="td3" name="td3">
                    3.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                                        우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한
                    </td>
                </tr>
                <tr align="left">
                    <td>
                            <input type="checkbox" value="1" id="chk3_1" name="chk" onclick="check_right('chk3_1')">
                            <label for="chk3_1"><span></span><font style="cursor:pointer">1</font></label><br>
                            <input type="checkbox" value="2" id="chk3_2" name="chk" onclick="check_right('chk3_2')">
                            <label for="chk3_2"><span></span><font style="cursor:pointer">2</font></label><br>
                            <input type="checkbox" value="3" id="chk3_3" name="chk" onclick="check_right('chk3_3')">
                            <label for="chk3_3"><span></span><font style="cursor:pointer">3</font></label><br>
                            <input type="checkbox" value="4" id="chk3_4" name="chk" onclick="check_right('chk3_4')">
                            <label for="chk3_4"><span></span><font style="cursor:pointer">4</font></label><br>
                    </td>
                </tr>
                
        </table>        
        </div>
        <div style="position:absolute; top:260px; left:900px; width:180px; height:420px; background-color:#e7e7e7;">
            <table width="180px" height="400px" cellpadding="5px" style="border-collapse: collapse;">
                <tr>
                    <td style="vertical-align: top;">
					<a href="#td1">1.</a>
                    &nbsp;<input type="checkbox" id="chk_1_1" name="chk" value="1" onclick="check_left('chk_1_1')">
                             <label for="chk_1_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" id="chk_1_2" name="chk" value="2" onclick="check_left('chk_1_2')">
                             <label for="chk_1_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" id="chk_1_3" name="chk" value="3" onclick="check_left('chk_1_3')">
                             <label for="chk_1_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" id="chk_1_4" name="chk" value="4" onclick="check_left('chk_1_4')">
                             <label for="chk_1_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                   <a href="#td2">2.</a> 
                   	  &nbsp;<input type="checkbox" id="chk_2_1" name="chk" value="1" onclick="check_left('chk_2_1')">
                            <label for="chk_2_1"><span></span><font style="cursor:pointer">1</font></label>
                            <input type="checkbox" id="chk_2_2" name="chk" value="2" onclick="check_left('chk_2_2')">
                            <label for="chk_2_2"><span></span><font style="cursor:pointer">2</font></label>
                            <input type="checkbox" id="chk_2_3" name="chk" value="3" onclick="check_left('chk_2_3')">
                            <label for="chk_2_3"><span></span><font style="cursor:pointer">3</font></label>
                            <input type="checkbox" id="chk_2_4" name="chk" value="4" onclick="check_left('chk_2_4')">
                            <label for="chk_2_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                   <a href="#td3">3.</a>
                   	  &nbsp;<input type="checkbox" value="1" id="chk_3_1" name="chk" onclick="check_left('chk_3_1')">
                            <label for="chk_3_1"><span></span><font style="cursor:pointer">1</font></label>
                            <input type="checkbox" value="2" id="chk_3_2" name="chk" onclick="check_left('chk_3_2')">
                            <label for="chk_3_2"><span></span><font style="cursor:pointer">2</font></label>
                            <input type="checkbox" value="3" id="chk_3_3" name="chk" onclick="check_left('chk_3_3')">
                            <label for="chk_3_3"><span></span><font style="cursor:pointer">3</font></label>
                            <input type="checkbox" value="4" id="chk_3_4" name="chk" onclick="check_left('chk_3_4')">
                            <label for="chk_3_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                   <a href="#td4">4.</a> 
                      &nbsp;<input type="checkbox" value="1" id="chk_4_1" checked="checked">
                            <label for="chk_4_1"><span></span><font style="cursor:pointer">1</font></label>
                            <input type="checkbox" value="1" id="chk_4_2" checked="checked">
                            <label for="chk_4_2"><span></span><font style="cursor:pointer">2</font></label>
                            <input type="checkbox" value="1" id="chk_4_3" checked="checked">
                            <label for="chk_4_3"><span></span><font style="cursor:pointer">3</font></label>
                            <input type="checkbox" value="1" id="chk_4_4" checked="checked">
                            <label for="chk_4_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                    <a href="#td5">5.</a>  
                       &nbsp;<input type="checkbox" value="1" id="chk_5_1" checked="checked">
                             <label for="chk_5_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_5_2" checked="checked">
                             <label for="chk_5_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_5_3" checked="checked">
                             <label for="chk_5_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_5_4" checked="checked">
                             <label for="chk_5_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>                                 
                    <a href="#td6">6.</a> 
                       &nbsp;<input type="checkbox" value="1" id="chk_6_1" checked="checked">
                             <label for="chk_6_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_6_2" checked="checked">
                             <label for="chk_6_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_6_3" checked="checked">
                             <label for="chk_6_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_6_4" checked="checked">
                             <label for="chk_6_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>
                    <a href="#td7">7.</a>  
                        &nbsp;<input type="checkbox" value="1" id="chk_7_1" checked="checked">
                             <label for="chk_7_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_7_2" checked="checked">
                             <label for="chk_7_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_7_3" checked="checked">
                             <label for="chk_7_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_7_4" checked="checked">
                             <label for="chk_7_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>
 	                <a href="#td8">8.</a>  
                       &nbsp;<input type="checkbox" value="1" id="chk_8_1" checked="checked">
                             <label for="chk_8_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_8_2" checked="checked">
                             <label for="chk_8_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_8_3" checked="checked">
                             <label for="chk_8_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_8_4" checked="checked">
                             <label for="chk_8_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>
                    <a href="#td9">9.</a> 
                       &nbsp;<input type="checkbox" value="1" id="chk_9_1" checked="checked">
                             <label for="chk_9_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_9_2" checked="checked">
                             <label for="chk_9_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_9_3" checked="checked">
                             <label for="chk_9_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_9_4" checked="checked">
                             <label for="chk_9_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>
                    <a href="#td10">10.</a> 
                    	    <input type="checkbox" value="1" id="chk_10_1" checked="checked">
                            <label for="chk_10_1"><span></span><font style="cursor:pointer">1</font></label>
                            <input type="checkbox" value="1" id="chk_10_2" checked="checked">
                            <label for="chk_10_2"><span></span><font style="cursor:pointer">2</font></label>
                            <input type="checkbox" value="1" id="chk_10_3" checked="checked">
                            <label for="chk_10_3"><span></span><font style="cursor:pointer">3</font></label>
                            <input type="checkbox" value="1" id="chk_10_4" checked="checked">
                            <label for="chk_10_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                    </td>
                </tr>
            </table>
        </div>
        <div style="position:absolute; top:860px; left:76px; width:180px; height:420px;">
            <input type="submit" value="제출하기" id="apply"> 
    </div> 
    </form>
</body>
</html>