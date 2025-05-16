package vo;

public class PersonVo {
	
	//VO(ValueObject) 또는
	//DTO(DataTransactionObject)
	// : DB에서 가져온 여러가지 정보를 하나로 묶어서 관리하기 위한 클래스
	private String name;
	private int age;
	private String tel;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
}
