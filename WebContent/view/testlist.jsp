<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/homework.css">
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet">
    
    <title>testlist.jsp</title>
</head>
<body>
	<div style="position:relative; width:1200px; height:867px; margin:0 auto; font-family: 'Nanum Gothic', sans-serif;">
                <div style="position:absolute; top:63px; left:76px; width:300px; height:36px; font-weight:bold; font-size: 25px;">
					시험목록
                </div>
        <form id="frm" name="frm" action="" method="post">
            <div style="position: absolute; top: 115px; left: 76px; width:900px; height: 120px; background-color: #e7e7e7; padding:10px 5px 5px 10px">
	            <table width="750" cellpadding="5px">
	                <tr height="55px">
	                    <th width="120px">응시여부</th>
	                    <td colspan="3">
	                        <input id="all" type="checkbox" value="all" checked="checked">
	                        <label for="all" style="cursor:pointer;"><span></span>전체</label>
	                        &nbsp;&nbsp;&nbsp;
	                        <input id="nontake" type="checkbox" value="nontake" checked="checked">
	                        <label for="nontake" style="cursor:pointer;"><span></span>미응시</label>
	                        &nbsp;&nbsp;&nbsp;
	                        <input id="take" type="checkbox" value="take" checked="checked">
	                        <label for="take" style="cursor:pointer;"><span></span>응시</label>
	                    </td>
	                </tr>
	                <tr>
	                    <th>시험종목</th>
	                    <td width="200px">
	                        <select style="width:150px; height:40px; border:1px solid #cccccc; border-radius: 5px;">
	                            <option value="DB" >데이터베이스</option>
	                        </select>
	                    </td>
	                    <th width="100px" align="center">시험명</th>
	                    <td><input type="text" placeholder="내용을 입력해주세요." style="width:250px; height:40px;border:1px solid #cccccc; border-radius: 5px; padding:0 0 0 5px"></td>
	                    
	                </tr>
	            </table>
        	</div>
	        <input type="reset" id="resetbtn" value="초기화" style="position:absolute; top: 140px; left: 870px;">
	        <input type="button" id="searchbtn" value="검색" style="position:absolute; top: 190px; left: 870px;">
            <div style="position:absolute; top: 260px; left: 700px;">
                <input type="button" id="listbtn" value="문제등록" onclick="location.href='setquestion.do'">&nbsp;
            </div>
            <div style="position:absolute; top: 260px; left: 850px;">
                <input type="button" id="listbtn" value="시험지등록" onclick="location.href='testregister.do'">
            </div>
            <div style="position: absolute; top: 300px; left: 76px; width:900px; height: 100px; padding:10px 0 10px 0;">
	            <table id="tb1" width="915" cellpadding="5px" style="border-collapse: collapse; border-top: 2px solid #cccccc; border-bottom: 3px solid #cccccc;">
	                <tr style="background-color: #e7e7e7; border-bottom: 1px solid #cccccc;">
	                    <th width="100">No.</th>
	                    <th width="200">시험종목</th>
	                    <th width="350">시험명</th>
	                    <th>응시여부</th>
	                </tr>
	                <tr align="center" style="border-bottom: 1px solid #cccccc;">
	                    <td>89</td>
	                    <td>데이터베이스</td>
	                    <td>3월 정기시험</td>
	                    <td><input type="button" value="응시하기" id="testbtn" onclick="location.href='test.do'"></td>
	                </tr>
	                <tr align="center" style="border-bottom: 1px solid #cccccc;">
	                    <td>88</td>
	                    <td>프로그래밍</td>
	                    <td>진급시험</td>
	                    <td><input type="button" value="결과확인" id="result" onclick="location.href='result.do'"></td>
	                </tr>
	                <tr align="center" style="border-bottom: 1px solid #cccccc;">
	                    <td>87</td>
	                    <td>운영체제</td>
	                    <td>3월 정기시험</td>
	                    <td><input type="button" value="응시하기" id="testbtn" onclick="location.href='test.do'"></td>
	                </tr>
	                <tr align="center" style="border-bottom: 1px solid #cccccc;">
	                    <td>86</td>
	                    <td>프로그래밍</td>
	                    <td>신입사원 레벨 테스트</td>
	                    <td><input type="button" value="결과확인" id="result" onclick="location.href='result.do'"></td>
	                </tr>
	                <tr align="center" style="border-bottom: 1px solid #cccccc;">
	                    <td>85</td>
	                    <td>정보기초</td>
	                    <td>신입사원 레벨 테스트</td>
	                    <td><input type="button" value="응시하기" id="testbtn" onclick="location.href='test.do'"></td>
	                </tr>
           	 </table>
            </div>
            <div style="position:absolute; top:580px; left: 350px;">
                <ul id="page">
                    <li><</li>
                    <li>1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                    <li>></li>
                </ul>
            </div>
    	</form>
	</div>
</body>
</html>