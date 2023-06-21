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
/**
 * 게시판 데이터 전송 객체(DTO)
 * 게시판 항목(id, title, content, writer)을 저장하는 클래스입니다.
 */
public class BulletinBoardDto {
	private String id;
	private String title;
	private String content;
	private String writer;
	
	 /**
     * 게시글 ID를 반환합니다.
     * @return 게시글 ID
     */

	public String getId() {
		return id;
	}
	/**
     * 게시글 ID를 설정합니다.
     * @param id 게시글 ID
     */
	public void setId(String id) {
		this.id = id;
	}

	  /**
     * 게시글 제목을 반환합니다.
     * @return 게시글 제목
     */
	public String getTitle() {
		return title;
	}
	 /**
     * 게시글 제목을 설정합니다.
     * @param title 게시글 제목
     */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
     * 게시글 내용을 반환합니다.
     * @return 게시글 내용
     */
	public String getContent() {
		return content;
	}
	 /**
     * 게시글 내용을 설정합니다.
     * @param content 게시글 내용
     */
	public void setContent(String content) {
		this.content = content;
	}
	/**
     * 작성자를 반환합니다.
     * @return 작성자
     */
	public String getWriter() {
		return writer;
	}
	 /**
     * 작성자를 설정합니다.
     * @param writer 작성자
     */
	public void setWriter(String writer) {
		this.writer = writer;
	}
	/**
     * 게시글 정보를 모두 설정하는 생성자입니다.
     * @param id 게시글 ID
     * @param title 게시글 제목
     * @param content 게시글 내용
     * @param writer 작성자
     */
	public BulletinBoardDto(String id, String title,String content, String writer ) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.writer = writer;
	}
	  /**
     * 기본 생성자입니다.
     */
	public BulletinBoardDto() {
		// TODO Auto-generated constructor stub
	}
	
}