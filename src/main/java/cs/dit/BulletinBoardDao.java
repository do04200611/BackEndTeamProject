package cs.dit;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BulletinBoardDao {

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/gh");
		Connection con = ds.getConnection();
		return con;
	}
	
	  public void insert(BulletinBoardDto dto) {
	  
	  String sql = "INSERT INTO request(ID, Title,Content, Writer ) VALUES(?,?,?,?)";
	  try ( 
			  Connection con = getConnection(); 
			  PreparedStatement pstmt = con.prepareStatement(sql); 
			  ) 
	  {
		  
	  pstmt.setString(1, dto.getId());
	  pstmt.setString(2, dto.getTitle());
	  pstmt.setString(3, dto.getContent());
	  pstmt.setString(4, dto.getWriter());
	
	  
	  pstmt.executeUpdate(); 
	  } catch (Exception e){ 
		  e.printStackTrace(); 
		  }
	  }
	 

	public ArrayList<BulletinBoardDto> list() {
		String sql = "SELECT * FROM request";
		ArrayList<BulletinBoardDto> dtos = new ArrayList<BulletinBoardDto>();

		try (Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
						) 
		{

			while (rs.next()) {
				BulletinBoardDto dto = new BulletinBoardDto();
				
				dto.setId(rs.getString("id"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setContent(rs.getString("content"));
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}

	public BulletinBoardDto selectOne(String id) {
		String sql = "SELECT * FROM request WHERE id=?";
		BulletinBoardDto dto = new BulletinBoardDto();

		try (Connection con = getConnection(); 
				PreparedStatement pstmt = con.prepareStatement(sql);
				) 
		{ 		pstmt.setString(1, id);

			try (ResultSet rs = pstmt.executeQuery();) 
			{
					rs.next();
					
					dto.setId(id);
					dto.setWriter(rs.getString("writer"));
					dto.setContent(rs.getString("content"));
					dto.setTitle(rs.getString("title"));
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	public void update(BulletinBoardDto dto) {
		String sql = "UPDATE request SET title =?, writer=?,content= ? WHERE Id =?";
		try (
			Connection con = getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);
				) 
		{
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getWriter());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getId());

			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
	
	public void delete(String id) {
		String sql = "DELETE FROM request WHERE id =?";
		
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			)
		{
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	/*
	 * public void loginChange(BulletinBoardDto dto, String flag) {
	 * PreparedStatement pstmt = null; try (Connection con = getConnection(); ) { if
	 * (flag.equals("i")) { String sql =
	 * "INSERT INTO request (Content, Title, WRITER) VALUES(?, ?, ?)"; pstmt =
	 * con.prepareStatement(sql); pstmt.setString(1, dto.getContent());
	 * pstmt.setString(2, dto.getTitle()); pstmt.setString(3, dto.getWriter()); }
	 * 
	 * } }
	 */
}