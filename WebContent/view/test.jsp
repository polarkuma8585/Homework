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
    <title>test.jsp</title>
<script type="text/javascript">
	function check_all(check){  
    	bCheck = check.checked;  
    	gName = check.value;  
    	obj = frm.chk1;  
    	objId = '';  
    for(i = 0; i < obj.length; i++){  
        objId = obj[i].id;  
        if(objId.match(gName)){  
            obj[i].checked = bCheck;  
        }  
    }  
}  

	var SetTime = 3600;		// 최초 설정 시간(기본 : 초)

	function msg_time() {	// 1초씩 카운트
		m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
		var msg =  m ;
		document.frm.remain.value = msg;		// div 영역에 보여줌 	
		SetTime--;					// 1초씩 감소
		if (SetTime < 0) {			// 시간이 종료 되었으면..
			clearInterval(tid);		// 타이머 해제
			alert("시험 시간이 종료되었습니다.");
			
		}
		submit;
	}
	window.onload = function TimerStart(){ tid=setInterval('msg_time()',1000) };
</script>
</head>
<body>
 	<form id="frm" name="frm" action="testlist.html" method="post">
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
                    <td width="650">1.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                    				우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한    
                    </td>
                </tr>
                <tr align="left">
                    <td>
                        <input type="checkbox" value="1" id="chk1_1" name="chk1" value="1" onclick="check_all(frm.chk1)">
                        <label for="chk1_1"><span></span><font style="cursor:pointer">1</font></label><br>                   
                        <input type="checkbox" value="1" id="chk1_2" name="chk1" value="2" onclick="check_all(frm.chk1)">
                        <label for="chk1_2"><span></span><font style="cursor:pointer">2</font></label><br>
                        <input type="checkbox" value="1" id="chk1_3" name="chk1" value="3" onclick="check_all(frm.chk1)">
                        <label for="chk1_3"><span></span><font style="cursor:pointer">3</font></label><br>
                        <input type="checkbox" value="1" id="chk1_4" name="chk1" value="4" onclick="check_all(frm.chk1)">
                        <label for="chk1_4"><span></span><font style="cursor:pointer">4</font></label><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        2.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                                                우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한
                    </td>
                </tr>
                <tr align="left">
                    <td>
                            <input type="checkbox" value="1" id="chk2_1" checked="checked">
                            <label for="chk2_1"><span></span><font style="cursor:pointer">1</font></label><br>
                            <input type="checkbox" value="1" id="chk2_2" checked="checked">
                            <label for="chk2_2"><span></span><font style="cursor:pointer">2</font></label><br>
                            <input type="checkbox" value="1" id="chk2_3" checked="checked">
                            <label for="chk2_3"><span></span><font style="cursor:pointer">3</font></label><br>
                            <input type="checkbox" value="1" id="chk2_4" checked="checked">
                            <label for="chk2_4"><span></span><font style="cursor:pointer">4</font></label><br>
                    </td>
                </tr>
                <tr>
                    <td>
                    3.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                                        우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한
                    </td>
                </tr>
                <tr align="left">
                    <td>
                            <input type="checkbox" value="1" id="chk3_1" checked="checked">
                            <label for="chk3_1"><span></span><font style="cursor:pointer">1</font></label><br>
                            <input type="checkbox" value="1" id="chk3_2" checked="checked">
                            <label for="chk3_2"><span></span><font style="cursor:pointer">2</font></label><br>
                            <input type="checkbox" value="1" id="chk3_3" checked="checked">
                            <label for="chk3_3"><span></span><font style="cursor:pointer">3</font></label><br>
                            <input type="checkbox" value="1" id="chk3_4" checked="checked">
                            <label for="chk3_4"><span></span><font style="cursor:pointer">4</font></label><br>
                    </td>
                </tr>
        </table>
        
        </div>
        <div style="position:absolute; top:260px; left:900px; width:180px; height:420px; background-color:#e7e7e7;">
            <table width="180px" height="400px" cellpadding="5px" style="border-collapse: collapse;">
                <tr>
                    <td style="vertical-align: top;">

                    1. &nbsp;<input type="checkbox" value="1" id="chk_1_1" name="chk1" value="1" onclick="check_all(frm.chk1)">
                             <label for="chk_1_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_1_2" name="chk1" value="2" onclick="check_all(frm.chk1)">
                             <label for="chk_1_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_1_3" name="chk1" value="3" onclick="check_all(frm.chk1)">
                             <label for="chk_1_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_1_4" name="chk1" value="4" onclick="check_all(frm.chk1)">
                             <label for="chk_1_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                   2. &nbsp;<input type="checkbox" value="1" id="chk_2_1" checked="checked">
                            <label for="chk_2_1"><span></span><font style="cursor:pointer">1</font></label>
                            <input type="checkbox" value="1" id="chk_2_2" checked="checked">
                            <label for="chk_2_2"><span></span><font style="cursor:pointer">2</font></label>
                            <input type="checkbox" value="1" id="chk_2_3" checked="checked">
                            <label for="chk_2_3"><span></span><font style="cursor:pointer">3</font></label>
                            <input type="checkbox" value="1" id="chk_2_4" checked="checked">
                            <label for="chk_2_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                   3. &nbsp;<input type="checkbox" value="1" id="chk_3_1" checked="checked">
                            <label for="chk_3_1"><span></span><font style="cursor:pointer">1</font></label>
                            <input type="checkbox" value="1" id="chk_3_2" checked="checked">
                            <label for="chk_3_2"><span></span><font style="cursor:pointer">2</font></label>
                            <input type="checkbox" value="1" id="chk_3_3" checked="checked">
                            <label for="chk_3_3"><span></span><font style="cursor:pointer">3</font></label>
                            <input type="checkbox" value="1" id="chk_3_4" checked="checked">
                            <label for="chk_3_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                   4. &nbsp;<input type="checkbox" value="1" id="chk_4_1" checked="checked">
                            <label for="chk_4_1"><span></span><font style="cursor:pointer">1</font></label>
                            <input type="checkbox" value="1" id="chk_4_2" checked="checked">
                            <label for="chk_4_2"><span></span><font style="cursor:pointer">2</font></label>
                            <input type="checkbox" value="1" id="chk_4_3" checked="checked">
                            <label for="chk_4_3"><span></span><font style="cursor:pointer">3</font></label>
                            <input type="checkbox" value="1" id="chk_4_4" checked="checked">
                            <label for="chk_4_4"><span></span><font style="cursor:pointer">4</font></label>
                            <br>
                    5. &nbsp;<input type="checkbox" value="1" id="chk_5_1" checked="checked">
                             <label for="chk_5_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_5_2" checked="checked">
                             <label for="chk_5_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_5_3" checked="checked">
                             <label for="chk_5_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_5_4" checked="checked">
                             <label for="chk_5_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>                                 
                    6. &nbsp;<input type="checkbox" value="1" id="chk_6_1" checked="checked">
                             <label for="chk_6_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_6_2" checked="checked">
                             <label for="chk_6_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_6_3" checked="checked">
                             <label for="chk_6_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_6_4" checked="checked">
                             <label for="chk_6_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>
                    7. &nbsp;<input type="checkbox" value="1" id="chk_7_1" checked="checked">
                             <label for="chk_7_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_7_2" checked="checked">
                             <label for="chk_7_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_7_3" checked="checked">
                             <label for="chk_7_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_7_4" checked="checked">
                             <label for="chk_7_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>
                    8. &nbsp;<input type="checkbox" value="1" id="chk_8_1" checked="checked">
                             <label for="chk_8_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_8_2" checked="checked">
                             <label for="chk_8_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_8_3" checked="checked">
                             <label for="chk_8_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_8_4" checked="checked">
                             <label for="chk_8_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>
                    9. &nbsp;<input type="checkbox" value="1" id="chk_9_1" checked="checked">
                             <label for="chk_9_1"><span></span><font style="cursor:pointer">1</font></label>
                             <input type="checkbox" value="1" id="chk_9_2" checked="checked">
                             <label for="chk_9_2"><span></span><font style="cursor:pointer">2</font></label>
                             <input type="checkbox" value="1" id="chk_9_3" checked="checked">
                             <label for="chk_9_3"><span></span><font style="cursor:pointer">3</font></label>
                             <input type="checkbox" value="1" id="chk_9_4" checked="checked">
                             <label for="chk_9_4"><span></span><font style="cursor:pointer">4</font></label>
                             <br>
                    10.<input type="checkbox" value="1" id="chk_10_1" checked="checked">
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
            <input type="submit" value="제출하기" id="apply" onclick="location.href='result.html'"> 
    </div> 
    </form>
</body>
</html>