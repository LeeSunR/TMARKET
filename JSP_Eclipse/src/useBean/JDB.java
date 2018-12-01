package useBean;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class JDB {
	
	static private Connection conn = null;
	static private PreparedStatement pstmt = null;
	private static final String HOST = "jdbc:mysql://192.168.219.101:3306/dongyang";
	private static final String USERNAME = "dongyang";
	private static final String PASSWORD = "dongyang";
	
	public JDB(){
		//static 클래스입니다.
	}
	
	
	/*
	context.xml
	<Resource name="jdbc/dongyang"
           auth="Container"
           type="javax.sql.DataSource"
           driverClassName="com.mysql.jdbc.Driver" 
           username="dongyang"
           password="dongyang"
           url="jdbc:mysql://baka.kr:3306/dongyang"
           maxWait="5000"       
	/>

	web.xml
	<resource-ref>
	    <description>jsptest db</description>
	    <res-ref-name>jdbc/jsptest</res-ref-name>
	    <res-type>javax.sql.DataSource</res-type>
	    <res-auth>Container</res-auth>
	</resource-ref>
	*/
	
	
	//DB연결
	private static void connect_MYSQL() {
		try {
		    Context init = new InitialContext();
		    DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/dongyang");
		    conn = ds.getConnection();
		    
		} catch (NamingException e) {
		    e.printStackTrace();
		} catch (SQLException e) {
		    e.printStackTrace();
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
				if(member.getPassword().equals(rs.getString("password"))) {
					member.setGrade(rs.getString("grade"));
					return true;
				}
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
			pstmt = conn.prepareStatement("insert into MEMBER(IDT, PASSWORD, NAME, BIRTH, EMAIL, GRADE) values(?, ?, ?, ?, ?, ?)");
			
			
			String idt = member.getIdt();
			String passwd = member.getPassword();
			String name = member.getName();
			String birth = member.getBirth();
			String email = member.getEmail();
			String grade = "member";
			
			pstmt.setString(1, idt);
			pstmt.setString(2, passwd);
			pstmt.setString(3, name);
			pstmt.setString(4, birth);
			pstmt.setString(5, email);
			pstmt.setString(6, grade);
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
	
	public static ArrayList<Member> getAllInfo() {
		
		ArrayList<Member> arrlist = new ArrayList<Member>();
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("SELECT * FROM MEMBER");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				Member m = new Member();
				m.setName(rs.getString("NAME"));
				m.setIdt(rs.getString("IDT"));
				m.setEmail(rs.getString("EMAIL"));
				m.setBirth(rs.getString("BIRTH"));
				m.setGrade(rs.getString("GRADE"));
				arrlist.add(m);
			}
			
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
		return arrlist;
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
	
	/*
	 * 아이템등록
	 */	
	public static boolean insert_item(Item item) {
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("insert into ITEM(NAME, PRICE, DATE) values(?, ?, ?)");
			
			int tid = 0;
			String name = item.getName();
			int price = item.getPrice();
			String[] sizes = item.getSize();
			String[] colors = item.getColor();
			
			java.sql.Date date = new java.sql.Date(new Date().getTime());
			
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setDate(3, date);
			
			if(pstmt.executeUpdate()!=1) return false;
			
			pstmt = conn.prepareStatement("SELECT TID FROM ITEM WHERE NAME=? AND PRICE=?");
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) item.setTid(rs.getInt("TID"));
			else return false;
			
			tid = item.getTid();
			
			
			for(String size : sizes) {
				pstmt = conn.prepareStatement("insert into ITEMSIZE(TID, SIZE) values(?, ?)");
				pstmt.setInt(1, tid);
				pstmt.setString(2, size);
				if(pstmt.executeUpdate()!=1) return false;
			}
			
			for(String color : colors) {
				pstmt = conn.prepareStatement("insert into ITEMCOLOR(TID, COLOR) values(?, ?)");
				pstmt.setInt(1, tid);
				pstmt.setString(2, color);
				if(pstmt.executeUpdate()!=1) return false;
			}
			
			return true;
			
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
		return false;
	}
	
	
	public static Item getItemInfo(int tid) {
		Item item = new Item();
		item.setTid(tid);
		connect_MYSQL();
		try{
			pstmt = conn.prepareStatement("SELECT * FROM ITEM WHERE TID=?");
			pstmt.setInt(1, tid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				item.setPrice(rs.getInt("PRICE"));
				item.setName(rs.getString("NAME"));
			}
			
			String color = "";
			pstmt = conn.prepareStatement("SELECT COLOR FROM ITEMCOLOR WHERE TID=?");
			pstmt.setInt(1, tid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String c = rs.getString("COLOR");
				color += c+"\n";
			}
			item.setColor(color.split("\n"));
			
			String size = "";
			pstmt = conn.prepareStatement("SELECT SIZE FROM ITEMSIZE WHERE TID=?");
			pstmt.setInt(1, tid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String s = rs.getString("SIZE");
				size += s+"\n";
			}
			item.setSize(size.split("\n"));
			
		}catch(Exception e){
				System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
		return item;
	}
	
	/*세일중인 아이템 상위6개*/
	public static Item[] getSaleItemListTop6() {
		Item[] items = {new Item(), new Item(), new Item(), new Item(), new Item(), new Item()};
		int i = 0;
		connect_MYSQL();
		
		try{
			pstmt = conn.prepareStatement("SELECT * FROM `ITEM` WHERE SALE=1 ORDER BY TID DESC LIMIT 6");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				items[i].setName(rs.getString("NAME"));
				items[i].setPrice(rs.getInt("PRICE"));
				items[i++].setTid(rs.getInt("TID"));
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
		System.out.println("ssss");
		return items;
	}
	
	/*인기상품 상위6개*/
	public static Item[] getBestItemListTop6() {
		Item[] items = {new Item(), new Item(), new Item(), new Item(), new Item(), new Item()};
		int i = 0;
		connect_MYSQL();
		
		try{
			pstmt = conn.prepareStatement("SELECT * FROM `ITEM` ORDER BY COUNT DESC LIMIT 6");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				items[i].setName(rs.getString("NAME"));
				items[i].setPrice(rs.getInt("PRICE"));
				items[i++].setTid(rs.getInt("TID"));
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
		
		return items;
	}
	
	/*새로운 상품 상위 6개*/
	public static Item[] getNewItemListTop6() {
		Item[] items = {new Item(), new Item(), new Item(), new Item(), new Item(), new Item()};
		connect_MYSQL();
		int i = 0;
		try{
			pstmt = conn.prepareStatement("SELECT * FROM `ITEM` ORDER BY DATE DESC LIMIT 6");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				items[i].setName(rs.getString("NAME"));
				items[i].setPrice(rs.getInt("PRICE"));
				items[i++].setTid(rs.getInt("TID"));
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally{
			close_MYSQL();
		}
		
		return items;
	}
}
