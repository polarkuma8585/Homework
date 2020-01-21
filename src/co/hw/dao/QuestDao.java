package co.hw.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import co.hw.dto.QuestDto;

public class QuestDao extends DAO {
	private QuestDto dto;
	private ArrayList<QuestDto> list;
	
	public QuestDao() {
		super();
	}
	//입력
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
	//수정
	public int update(QuestDto dto) {
		int n = 0;
		String sql = "update set quest quest_content=?, quest_type=?,"
				+ "answer1=?, answer2=?, answer3=?,answer4=?, right_answer=?, explain=?"
				+ " where quest_no = ?";
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
			pstmt.setInt(9, dto.getqNo());
			n = pstmt.executeUpdate();
			System.out.println(dto.getqNo()+" 번의 문제가 "+ n +"건 수정되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	//삭제
	public int delete(int qno) {
		int n = 0;
		String sql = "delete from quest where quest_no= ?";
				
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qno);
			n = pstmt.executeUpdate();
			System.out.println(qno +" 번의 시험이 삭제되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	//한 건 조회
	public QuestDto selectOne(int qno) {
		String sql ="select quest_no,quest_content,quest_type,answer1,answer2,answer3,answer4,explain"
				+ " from quest where quest_no = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				QuestDto dto = new QuestDto();
				dto.setqNo(qno);
				dto.setqContent(rs.getString("quest_content"));
				dto.setqType(rs.getString("quest_type"));
				dto.setqAns1(rs.getString("answer1"));
				dto.setqAns2(rs.getString("answer2"));
				dto.setqAns3(rs.getString("answer3"));
				dto.setqAns4(rs.getString("answer4"));
				dto.setqExplain(rs.getString("explain"));						
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
	}
	//모두 조회
	public ArrayList<QuestDto> selectAll() {
		String sql ="select quest_no,quest_content,quest_type,answer1,answer2,answer3,answer4,explain"
				+ " from quest order by quest_no";
				
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				QuestDto dto = new QuestDto();
				dto.setqNo(rs.getInt("quest_no"));
				dto.setqContent(rs.getString("quest_content"));
				dto.setqType(rs.getString("quest_type"));
				dto.setqAns1(rs.getString("answer1"));
				dto.setqAns2(rs.getString("answer2"));
				dto.setqAns3(rs.getString("answer3"));
				dto.setqAns4(rs.getString("answer4"));
				dto.setqExplain(rs.getString("explain"));		
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
}
