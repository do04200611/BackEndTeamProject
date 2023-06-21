/**==============================*
 * 작성자 : kimga
 * 작성일 : 2023. 6. 13.
 * 파일명 : LoginDto.java
 *프로그램 설명 :
 *==============================**/
package cs.dit;


/**
 * @author kimga
 *
 */
public class BulletinBoardDto {
	private String id;
	private String title;
	private String content;
	private String writer;
	
	

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public BulletinBoardDto(String id, String title,String content, String writer ) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.writer = writer;
	}
	/**
	 * 
	 */
	public BulletinBoardDto() {
		// TODO Auto-generated constructor stub
	}
	
}