package co.hw.dto;



public class ExamDto {
	private int eNo;
	private String eName;
	private int eCnt;
	private int eTime;
	private String eGroup;
	private String eDesc;
	private String eType;
	
	public int geteNo() {
		return eNo;
	}
	public void seteNo(int eNo) {
		this.eNo = eNo;
	}
	public String geteName() {
		return eName;
	}
	public void seteName(String eName) {
		this.eName = eName;
	}
	public int geteCnt() {
		return eCnt;
	}
	public void seteCnt(int eCnt) {
		this.eCnt = eCnt;
	}
	public int geteTime() {
		return eTime;
	}
	public void seteTime(int eTime) {
		this.eTime = eTime;
	}
	public String geteGroup() {
		return eGroup;
	}
	public void seteGroup(String eGroup) {
		this.eGroup = eGroup;
	}
	public String geteDesc() {
		return eDesc;
	}
	public void seteDesc(String eDesc) {
		this.eDesc = eDesc;
	}
	public String geteType() {
		return eType;
	}
	public void seteType(String eType) {
		this.eType = eType;
	}

	
	}
