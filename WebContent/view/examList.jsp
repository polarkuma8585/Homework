<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/homework.css">
    <link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet">
    <title>examList.jsp</title>
<script>

function examModify(n) {
	frm.action = "examModify.do";
	frm.eNo.value = n;
	frm.submit();
}

function examDelete(n) {
	if(confirm("시험을  삭제 하시겠습니까?") == true ){
		frm.action = "examDelete.do";
		frm.eNo.value = n;
		frm.submit();
	}else{
		return;	
	}
}

</script>
</head>
<body>
	<div style="position:relative; width:1200px; height:867px; margin:0 auto; font-family: 'Nanum Gothic', sans-serif;">
                <div style="position:absolute; top:63px; left:76px; width:300px; height:36px; font-weight:bold; font-size: 25px;">
					시험목록
                </div>
        <form id="frm" name="frm" action="" method="post">
        	<input type="hidden" id="eNo" name="eNo">
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
	                            <option value="001" >데이터베이스</option>
	                            <option value="002" >자바</option>
	                            <option value="003" >오라클</option>
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
	                    <th colspan="2">관리</th>
	                </tr>
	                <c:forEach var="dto" items="${list }">
	                	<tr align="center" style="border-bottom: 1px solid #cccccc;">
	                		<td>
	                		${dto.eNo }	               
	                		</td>	           	
	                		<c:if test="${dto.eGroup == '001' }">
	                		<td>데이터베이스</td>
	                		</c:if>
	                		<c:if test="${dto.eGroup == '002' }">
	                		<td>자바</td>
	                		</c:if>
	                		<c:if test="${dto.eGroup == '003' }">
	                		<td>오라클</td>
	                		</c:if>
	                		<td>${dto.eName }</td>
	                		<td><input type="button" value="응시하기" id="testbtn" onclick="location.href='test.do'"></td>
	                		<td><input type="button" value="수정" id="testbtn1" onclick="examModify(${dto.eNo})"></td>	                		
	                		<td><input type="button" value="삭제" id="testbtn2" onclick="examDelete(${dto.eNo})"></td>
	                	</tr>	                
	                </c:forEach>	                
           	 </table>
           	 <div style="position:relative; top:20px; left: 250px;">
                 <ul id="page"> 
	                     <li><</li> 
    	                 <li>1</li> 
        	             <li>2</li> 
            	         <li>3</li> 
                	     <li>4</li>
                	     <li>5</li>  
                    	 <li>></li> 
                 </ul> 	
             </div>
            </div>            
    	</form>
	</div>
</body>
</html>