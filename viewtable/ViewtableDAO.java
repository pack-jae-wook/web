package viewtable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewtableDAO {
   
   private Connection conn;
   private ResultSet rs;
   
   public ViewtableDAO() {
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
      String SQL = "select tourismID from VIEWTABLE order by tourismID desc";
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

   public int write(String tourismTitle, String userID, String tourismContent) {
      String SQL="insert into VIEWTABLE values ( ?, ?, ?, ?, ?, ?)";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, getNext());
          pstmt.setString(2, tourismTitle);
          pstmt.setString(3, userID);
          pstmt.setString(4, getDate());
          pstmt.setString(5, tourismContent);
          pstmt.setInt(6, 1);
          return pstmt.executeUpdate();
      }catch(Exception e) {
         e.printStackTrace();
      }
      return -1; //데이터베이스 오류
   }
   
   public ArrayList<Viewtable> getList(int pageNumber){
      String SQL = "select * from VIEWTABLE where tourismID < ? and tourismAvailable = 1 order by tourismID desc limit 10";
      ArrayList<Viewtable> list = new ArrayList<Viewtable>();
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
          rs = pstmt.executeQuery();
          while (rs.next()) {
             Viewtable viewtable = new Viewtable();
             viewtable.setTourismID(rs.getInt(1));
             viewtable.setTourismTitle(rs.getString(2));
             viewtable.setUserID(rs.getString(3));
             viewtable.setTourismDate(rs.getString(4));
             viewtable.setTourismContent(rs.getString(5));
             viewtable.setTourismAvailable(rs.getInt(6));
             list.add(viewtable);
          }
      }catch(Exception e) {
         e.printStackTrace();
      }
      return list; 
   }
   
   public boolean nextPage(int pageNumber) {
      String SQL = "select * from VIEWTABLE where tourismID < ? and tourismAvailable = 1";
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
   public Viewtable getViewtable(int tourismID) {
      String SQL = "select * from VIEWTABLE where tourismID = ?";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, tourismID);
          rs = pstmt.executeQuery();
          if (rs.next()) {
             Viewtable viewtable = new Viewtable();
             viewtable.setTourismID(rs.getInt(1));
             viewtable.setTourismTitle(rs.getString(2));
             viewtable.setUserID(rs.getString(3));
             viewtable.setTourismDate(rs.getString(4));
             viewtable.setTourismContent(rs.getString(5));
             viewtable.setTourismAvailable(rs.getInt(6));
             return viewtable;
          }
      }catch(Exception e) {
         e.printStackTrace();
      }
      return null;
   }
   
   public int update(int tourismID, String tourismTitle, String tourismContent) {
      String SQL="update VIEWTABLE set tourismTitle =? , tourismContent = ? where tourismID= ?";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setString(1, tourismTitle);
          pstmt.setString(2, tourismContent);
          pstmt.setInt(3, tourismID);
          return pstmt.executeUpdate();
   } catch (Exception e) {
      e.printStackTrace();
   }
      return -1;
   
   }
   
   public int delete(int tourismID) {
      String SQL="update VIEWTABLE set tourismAvailable = 0 where tourismID= ?";
      try {
          PreparedStatement pstmt = conn.prepareStatement(SQL);
          pstmt.setInt(1, tourismID);
          return pstmt.executeUpdate();
   } catch (Exception e) {
      e.printStackTrace();
   }
      return -1;
      
   }
}   
