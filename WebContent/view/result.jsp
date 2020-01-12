<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/homework.css">
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet">
    <title>result.html</title>
</head>
<body>
    <div style="position:relative; width:1200px; height:867px; margin:0 auto; font-family: 'Nanum Gothic', sans-serif;">
        <div style="position:absolute; top:63px; left:76px; width:300px; height:36px; font-weight:bold; font-size: 25px;">
            시험결과
        </div>
        <div style="position: absolute; top: 115px; left: 76px; width:990px; height: 100px; background-color: #e7e7e7; padding:10px 5px 5px 5px">
        <table cellpadding="5px" align="center" style="border-collapse: collapse;">
            <tr>
                <td style="font-weight:bold;">
                    시험명
                </td>
                <td>
                    <input type="text" value="신입사원 레벨 테스트" style="height:35px; width:200px; border-radius: 5px;background-color: #e7e7e7; padding: 0 0 0 5px; border:1px solid #a3a3a3" readonly>
                </td>
                <td style="font-weight:bold;">
                    문항수
                </td>
                <td align="center">
                    <input type="text" value="10" style="height:35px; width:200px; border-radius: 5px;background-color: #e7e7e7; padding: 0 0 0 5px; border:1px solid #a3a3a3" readonly>
                </td>
                <td style="font-weight:bold;">
                    시험시간
                </td>
                <td align="right">
                    <input type="text" value="1시간" style="height:35px; width:200px; border-radius: 5px;background-color: #e7e7e7; padding: 0 0 0 5px; border:1px solid #a3a3a3" readonly>
                </td>
            </tr>
            <tr>
                <td style="font-weight:bold;">
                    상세정보
                </td>
                <td colspan="5">
                    <input type="text" value="예담 주식회사 2020년 신입사원 공채 실기 테스트입니다." style="height:35px; width:840px; border-radius: 5px;background-color: #e7e7e7; padding: 0 0 0 5px; border:1px solid #a3a3a3" readonly>
                </td>
            </tr>
        </table>
        </div>
        <div align="center" style="position:absolute; top: 250px; left:76px; width:1000px; height:60px; background-color:#e7e7e7; font-size: 15px; padding: 25px 0px 10px 0px; ">
            홍길동 님의 결과는 
            <span style="font-size:35px; color:dodgerblue">
            70점 
            </span>
            입니다.
        </div>
        <div style="position:absolute; top:380px; left:76px; font-size: 25px; font-weight: bold;">
            틀린문제 다시 보기
        </div>
        <table cellpadding="5px" style="position:absolute; top:440px; left:76px; width:1000px; font-size:15px">
            <tr>
                <td colspan="2">
                    1.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                    우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한
                </td>
            </tr>
            <tr>
                <td width="50px">정답</td>
                <td>
                   <input id="chk1_1" type="checkbox" checked="checked">
                   <label for="chk1_1"><span></span>1</label>
                </td>
            </tr>
            <tr>
                <td>해설</td><td>해설</td>
            </tr>
            <tr>
                <td colspan="2">
                    5.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                    우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한
                </td>
            </tr>
            <tr>
                <td>정답</td>
                <td>
                    <input id="chk2_1" type="checkbox" checked="checked">
                    <label for="chk2_1"><span></span>1</label>
                </td>
            </tr>
            <tr>
                <td>해설</td><td>해설</td>
            </tr>
            <tr>
                <td colspan="2">
                        8.하는 것이다 보라 청춘을! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가?
                        우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 고나현익이며 미묘한
                </td>
            </tr>
            <tr>
                <td>정답</td>
                <td>
                    <input id="chk3_1" type="checkbox" checked="checked">
                    <label for="chk3_1"><span></span>1</label>
                </td>
            </tr>
            <tr>
                <td>해설</td><td>해설</td>
            </tr>
        </table>
        <div style="position:absolute; top:830px; left:500px;">
                <input type="button" value="시험목록으로" id="rttbtn" onclick="location.href='testlist.do'">
        </div>
    </div>
</body>
</html>