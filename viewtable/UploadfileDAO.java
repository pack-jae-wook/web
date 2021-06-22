package viewtable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UploadfileDAO {
   
   private Connection conn;
   private ResultSet rs;
   
   public UploadfileDAO() {
      try {
         String dbURL = "jdbc:mysql://localhost:3306/BUSAN?useUnicode=true&characterEncoding=utf8";
         String dbID = "root";
         String dbPassword = "apmsetup";
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
         
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
   
   public String getDate() { //현재 시간 가져오는 함수.(현재 서버의 시간을 넣어줌)
      String SQL = "select now()";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          rs = pstmt.executeQuery();
          if (rs.next()) {
             return rs.getString(1);
          }
      }catch(Exception e) {
         e.printStackTrace();
      }
      return""; //데이터베이스 오류
   }
   
   public int getNext() { //글 번호 주기
      String SQL = "select loadtourismID from UPLOADVIEWTABLE order by loadtourismID desc";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          rs = pstmt.executeQuery();
          if (rs.next()) {
             return rs.getInt(1) + 1;
          }
          return 1; //현재가 첫번째 게시물인 경우
      }catch(Exception e) {
         e.printStackTrace();
      }
      return -1; //데이터베이스 오류
   }

   public int write(String loadtourismTitle, String userID, String loadtourismContent, String fileName) {
      String SQL="insert into UPLOADVIEWTABLE values ( ?, ?, ?, ?, ?, ?, ?)";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, getNext());
          pstmt.setString(2, loadtourismTitle);
          pstmt.setString(3, userID);
          pstmt.setString(4, getDate());
          pstmt.setString(5, loadtourismContent);
          pstmt.setInt(6, 1);
          pstmt.setString(7, fileName);
          return pstmt.executeUpdate();
      }catch(Exception e) {
         e.printStackTrace();
      }
      return -1; //데이터베이스 오류
   }
   
   public ArrayList<Uploadfile> getList(int pageNumber){
      String SQL = "select * from UPLOADVIEWTABLE where loadtourismID < ? and loadtourismAvailable = 1 order by loadtourismID desc limit 10";
      ArrayList<Uploadfile> list = new ArrayList<Uploadfile>();
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
          rs = pstmt.executeQuery();
          while (rs.next()) {
        	 Uploadfile viewtable = new Uploadfile();
             viewtable.setLoadtourismID(rs.getInt(1));
             viewtable.setLoadtourismTitle(rs.getString(2));
             viewtable.setuserID(rs.getString(3));
             viewtable.setLoadtourismDate(rs.getString(4));
             viewtable.setLoadtourismContent(rs.getString(5));
             viewtable.setLoadtourismAvailable(rs.getInt(6));
             viewtable.setFileName(rs.getString(7));
             list.add(viewtable);
          }
      }catch(Exception e) {
         e.printStackTrace();
      }
      return list; 
   }
   
   public boolean nextPage(int pageNumber) {
      String SQL = "select * from UPLOADVIEWTABLE where loadtourismID < ? and loadtourismAvailable = 1";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
          rs = pstmt.executeQuery();
          if (rs.next()) {
             return true;
          }
      }catch(Exception e) {
         e.printStackTrace();
      }
      return false; //데이터베이스 오류
   }
   public Uploadfile getViewtable(int loadtourismID) {
      String SQL = "select * from UPLOADVIEWTABLE where loadtourismID = ?";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, loadtourismID);
          rs = pstmt.executeQuery();
          if (rs.next()) {
        	 Uploadfile viewtable = new Uploadfile();
             viewtable.setLoadtourismID(rs.getInt(1));
             viewtable.setLoadtourismTitle(rs.getString(2));
             viewtable.setuserID(rs.getString(3));
             viewtable.setLoadtourismDate(rs.getString(4));
             viewtable.setLoadtourismContent(rs.getString(5));
             viewtable.setLoadtourismAvailable(rs.getInt(6));
             viewtable.setFileName(rs.getString(7));
             return viewtable;
          }
      }catch(Exception e) {
         e.printStackTrace();
      }
      return null;
   }
   
   public int update(int loadtourismID, String loadtourismTitle, String loadtourismContent, String fileName) {
      String SQL="update UPLOADVIEWTABLE set loadtourismTitle =? , loadtourismContent = ? , fileName = ? where loadtourismID= ?";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setString(1, loadtourismTitle);
          pstmt.setString(2, loadtourismContent);
          pstmt.setString(3, fileName);
          pstmt.setInt(4, loadtourismID);
          return pstmt.executeUpdate();
   } catch (Exception e) {
      e.printStackTrace();
   }
      return -1;
   
   }
   
   public int delete(int loadtourismID) {
      String SQL="update UPLOADVIEWTABLE set loadtourismAvailable = 0 where loadtourismID= ?";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, loadtourismID);
          return pstmt.executeUpdate();
   } catch (Exception e) {
      e.printStackTrace();
   }
      return -1;
      
   }
}   
