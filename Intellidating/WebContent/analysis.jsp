<%@page import="com.DTO.printbookDTO"%>
<%@page import="com.DAO.printbookDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DTO.bookDTO"%>
<%@page import="com.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" sizes="192x192"
	href="https://static.wixstatic.com/media/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png/v1/fill/w_32%2Ch_32%2Clg_1%2Cusm_0.66_1.00_0.01/398446_4bdc0328ac584d5f8a739f7a7012d6ed%7Emv2.png">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<SCRIPT LANGUAGE="JavaScript">
<!--
function fchk() {
    var chk_obj = document.getElementsByName("choice");
    var chk_leng = chk_obj.length;
    var checked = 0;
    for (i=0; i < chk_leng; i++) {
        if (chk_obj[i].checked == true) {
            checked += 1;
        }
    }
    if (checked < 5 ) {
        alert("�׸��� 5�� �������ּ���");
        return false;
    }
}

// ������ ���� �̻� üũ �Ұ�.
var count = 0;
function check_q1(chk_obj) {
    if(chk_obj.checked == true) {
        count++;
    } else {
        count--;
    }
    if(count <= 5) {
        return true;
    } else {
        count--;
        return false;
    }
}

function check(obj,condition, n) {
    if(condition == false){
        obj.checked = false;
        alert(n + "���� �ʰ� ���� �Ұ��մϴ�");
    }
}
//-->
</SCRIPT>
</head>
<body>
	<%
		memberDTO m_dto = (memberDTO) session.getAttribute("member");
		printbookDAO dao = new printbookDAO();
		ArrayList<printbookDTO> al_book = dao.allBook();
	%>
	<header>
		<div>
			<p>
			<h2>
				<a href="main.jsp">���ڸ�������</a>
			</h2>
			</p>
		</div>
	</header>
	<nav>
		<div>
			<ul>
				<li><a href="searchbook.jsp">å �˻��ϱ�</a></li>
				<%
					if (m_dto == null) {
				%>
				<li><a href="login.html">�α���</a></li>
				<li><a href="join.jsp">ȸ������</a></li>
				<%
					} else {
				%>
				<li><a href="mypage.jsp">����������</a>
				<li><a href="logoutService">�α׾ƿ�</a></li>
			</ul>
			<%
				}
			%>
			<hr />
		</div>
	</nav>
	<div>
		<div>
			<h1><%=m_dto.getNickname()%>�����ϴ� å 5���� ����ּ���!</h1>
		</div>

		<form name="form" action="analysisService" method="get" onsubmit="return fchk();">
			<div>
			<table>
				<%
				out.println("<tr>");
					for(int i=0;i<al_book.size();i++){
						out.println("<td align='center' height='500px' width='300px'><img src='"+al_book.get(i).getBook_image()+"' height='350px' width='200px'><br>");
						out.println("<input type='checkbox' name='choice' onclick='check(this,check_q1(this),5);' value="+al_book.get(i).getBook_category3()+"></label>");
						out.println("<label>"+al_book.get(i).getBook_name()+"</td>");
						if((i+1)%5==0){
							out.println("</tr>");
							out.println("<tr>");
						}
					}
				%>
				<input type="hidden" name="mem_num" value=<%=m_dto.getNum() %> >
				<tr align='center'><td colspan="5"><input type="submit" value="�����ϱ�" class="btngray"></td></tr>
			</table>
			</div>
		</form>
	</div>


	<footer>
		<div>
			<p>
				<a href="#">���� ���� ����</a>
			</p>
			<p>
				<a href="#">�����ϱ�</a>
			</p>
			<p>
				<a href="#">���α�</a>
			</p>
			<br> <br> <br>
			<p>�ֽ�ȸ�� ���ڸ�������</p>
		</div>
	</footer>

</body>
</html>
