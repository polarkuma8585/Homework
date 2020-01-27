package co.hw.dao;

import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import co.hw.dto.ExamDto;

public class ExamDao extends DAO {
	private ExamDto dto;
	private ArrayList<ExamDto> list;
	
	public ExamDao() {
		super();
	}
	//입력
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
		} finally {
			close();	
		}
		return n;
		
	}
	//수정
	public int update(ExamDto dto) {
		int n = 0;
		String sql = "update exam set exam_nm=?, quest_cnt=?,exam_time=?,quest_group=?,exam_desc=?, exam_type=?"
				+ " where exam_no=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.geteName());
			pstmt.setInt(2, dto.geteCnt());
			pstmt.setInt(3, dto.geteTime());
			pstmt.setString(4, dto.geteGroup());
			pstmt.setString(5, dto.geteDesc());
			pstmt.setString(6, dto.geteType());
			pstmt.setInt(7, dto.geteNo());
			n = pstmt.executeUpdate();
			System.out.println(dto.geteNo()+" 번의 시험이 "+ n +"건 수정되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	//삭제
	public int delete(int eno) {
		int n = 0;
		String sql = "delete from exam where exam_no= ?";
				
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, eno);
			n = pstmt.executeUpdate();
			System.out.println(eno +" 번의 시험이 삭제되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	//한 건 조회
	public ExamDto selectOne(int eno) {
		ExamDto dto = new ExamDto();
		String sql ="select exam_no,exam_nm,quest_cnt,exam_time,quest_group,exam_desc,exam_type"
				+ " from exam where exam_no=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, eno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new ExamDto();
				dto.seteNo(eno);
				dto.seteName(rs.getString("exam_nm"));
				dto.seteCnt(rs.getInt("quest_cnt"));
				dto.seteTime(rs.getInt("exam_time"));
				dto.seteGroup(rs.getString("quest_group"));
				dto.seteDesc(rs.getString("exam_desc"));
				dto.seteType(rs.getString("exam_type"));		
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;
		
	}
	//모두 조회
	public ArrayList<ExamDto> selectAll() {
		ArrayList<ExamDto> list = new ArrayList<ExamDto>();
		String sql ="select exam_no,exam_nm,quest_cnt,exam_time,quest_group,exam_desc,exam_type"
				+ " from exam order by exam_no desc";
				
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ExamDto dto = new ExamDto();
				dto.seteNo(rs.getInt("exam_no"));
				dto.seteName(rs.getString("exam_nm"));
				dto.seteCnt(rs.getInt("quest_cnt"));
				dto.seteTime(rs.getInt("exam_time"));
				dto.seteGroup(rs.getString("quest_group"));
				dto.seteDesc(rs.getString("exam_desc"));
				dto.seteType(rs.getString("exam_type"));
				list.add(dto);
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	// procedure를 이용한 insert.
	public HashMap<String, Object> insertProc(ExamDto dto) throws Exception {
		CallableStatement cstmt = null ;
		int nextId = 0;
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
		cstmt = conn.prepareCall("{call add_exam_proc(?,?,?,?,?,?,?,?)}");
		cstmt.setString(1, dto.geteName());
		cstmt.setInt(2, dto.geteCnt());
		cstmt.setInt(3, dto.geteTime());
		cstmt.setString(4, dto.geteGroup());
		cstmt.setString(5, dto.geteDesc());
		cstmt.setString(6, dto.geteType());
		cstmt.registerOutParameter(7, java.sql.Types.NUMERIC);
		cstmt.registerOutParameter(8, java.sql.Types.VARCHAR);
		cstmt.executeUpdate();
		
		nextId = cstmt.getInt(7);
		String out_msg = cstmt.getString(8);
		System.out.println(nextId);
		System.out.println(out_msg);
		if (nextId != 0) {
		map.put("eno", nextId);
		map.put("msg", out_msg);
		} else {
		map.put("eno", 0);
		map.put("msg", out_msg);
		}
		} catch (Throwable e) {
		try {
		conn.rollback();
		} catch (SQLException ex) {
			
		}
		map.put("eno", 0);
		map.put("msg", e.getMessage());
		} finally {
		 close();
		}
		return map;
		}
}
