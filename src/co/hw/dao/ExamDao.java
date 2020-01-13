package co.hw.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import co.hw.dto.ExamDto;
import co.hw.dto.QuestDto;

public class ExamDao extends DAO {
	private ExamDto dto;
	private ArrayList<ExamDto> list;
	
	public ExamDao() {
		super();
	}
	
	public int eInsert(ExamDto dto) {
		int n = 0;
		String sql = "insert into exam (exam_no,exam_nm,quest_cnt,exam_time,quest_group,exam_desc,exam_type)"
				+ "values(exam_num.nextval,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.geteName());
			pstmt.setInt(2, dto.geteCnt());
			pstmt.setInt(3, dto.geteTime());
			pstmt.setString(4, dto.geteGroup());
			pstmt.setString(5, dto.geteDesc());
			pstmt.setString(6, dto.geteType());
			n = pstmt.executeUpdate();
			System.out.println(dto.geteName()+ "의 시험이 "+ n + "건 입력되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return n;
		
	}
	public int qInsert(QuestDto dto) {
		int n = 0;
		String sql = "insert into quest (quest_no,quest_content,quest_type,answer1,answer2,answer3,answer4,right_answer,explain)"
				+ "values(quest_num.nextval,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getqContent());
			pstmt.setString(2, dto.getqType());
			pstmt.setString(3, dto.getqAns1());
			pstmt.setString(4, dto.getqAns2());
			pstmt.setString(5, dto.getqAns3());
			pstmt.setString(6, dto.getqAns4());
			pstmt.setString(7, dto.getqRans());
			pstmt.setString(8, dto.getqExplain());
			n = pstmt.executeUpdate();
			System.out.println(dto.getqType()+ "의 문제가 "+ n +"건 등록되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close();
		return n;
	}
}
