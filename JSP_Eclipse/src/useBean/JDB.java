package useBean;

import java.sql.*;

public class JDB {
	
	static private Connection conn = null;
	static private PreparedStatement pstmt = null;
	private static final String HOST = "jdbc:mysql://baka.kr:3306/dongyang";
	private static final String USERNAME = "dongyang";
	private static final String PASSWORD = "dongyang";
	
	public JDB(){
		//static 클래스입니다.
	}
	
	//DB연결
	private static void connect_MYSQL() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(HOST, USERNAME, PASSWORD);
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	//DB연결 해제
	private static void close_MYSQL() {
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
	}
	
	/*
	 * 로그인
	 */
	public static boolean login(Member member) {
		
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE IDT=?");
			pstmt.setString(1, member.getIdt());
			
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(member.getPassword().equals(rs.getString("password"))) return true;
				else return false;
			}
			else return false;
			
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
		return false;
	}
	
	/*
	 * 회원가입
	 */
	public static boolean signup(Member member) {
		
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("insert into MEMBER(IDT, PASSWORD, NAME, BIRTH, EMAIL) values(?, ?, ?, ?, ?)");
			
			String idt = member.getIdt();
			String passwd = member.getPassword();
			String name = member.getName();
			String birth = member.getBirth();
			String email = member.getEmail();
			
			pstmt.setString(1, idt);
			pstmt.setString(2, passwd);
			pstmt.setString(3, name);
			pstmt.setString(4, birth);
			pstmt.setString(5, email);
			if(pstmt.executeUpdate()>0) return true;
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
		return false;
	}
	
	/*
	 * 회원정보 가져오기
	 */	
	public static void getMyinfo(Member m) {
		
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE IDT=?");
			pstmt.setString(1, m.getIdt());
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				m.setName(rs.getString("NAME"));
				m.setIdt(rs.getString("IDT"));
				m.setEmail(rs.getString("EMAIL"));
				m.setBirth(rs.getString("BIRTH"));
			}
			
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
	}
	
	/*
	 * 비밀번호 변경
	 */
	public static boolean update_password(Member member, String new_password) {
		
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE IDT=?");
			pstmt.setString(1, member.getIdt());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				if(member.getPassword().equals(rs.getString("password"))){
					pstmt = conn.prepareStatement("update MEMBER set password=? where IDT = ?");
					pstmt.setString(1, new_password);
					pstmt.setString(2, member.getIdt());
					if(pstmt.executeUpdate()>0) return true;
				}
			}
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{		
			close_MYSQL();
		}	
		return false;
	}
	
	/*
	 * 회원정보 수정
	 */	
	public static boolean update_info(Member member) {
		
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE IDT=?");
			pstmt.setString(1, member.getIdt());
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(member.getPassword().equals(rs.getString("password"))){
					pstmt = conn.prepareStatement("update MEMBER set name=?, birth=?, email=? where IDT = ?");
					pstmt.setString(1, member.getName());
					pstmt.setString(2, member.getBirth());
					pstmt.setString(3, member.getEmail());
					pstmt.setString(4, member.getIdt());
					if(pstmt.executeUpdate()>0) return true;
				}
			}
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{		
			close_MYSQL();
		}	
		return false;
	}
	
	/*
	 * 회원삭제
	 */	
	public static boolean delete(Member member) {
		
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("SELECT * FROM MEMBER WHERE IDT=?");
			pstmt.setString(1, member.getIdt());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()){
				if(member.getPassword().equals(rs.getString("password"))){
					pstmt = conn.prepareStatement("delete from MEMBER where IDT = ?");
					pstmt.setString(1, member.getIdt());
					if(pstmt.executeUpdate()>0) return true;
				}
			}
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{		
			close_MYSQL();
		}
		return false;
	}
}
