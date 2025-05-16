package vo;

public class SonVO {
	
	//DB에서 가져온 여러가지 정보를 하나로 묶어서 관리하기 위한 클래스
	private String id;
	private String pwd;
	private int age;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
