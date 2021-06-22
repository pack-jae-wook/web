package viewtable;

public class Uploadfile {
	  public int getLoadtourismID() {
		return loadtourismID;
	}
	public void setLoadtourismID(int loadtourismID) {
		this.loadtourismID = loadtourismID;
	}
	public String getLoadtourismTitle() {
		return loadtourismTitle;
	}
	public void setLoadtourismTitle(String loadtourismTitle) {
		this.loadtourismTitle = loadtourismTitle;
	}
	public String getuserID() {
		return userID;
	}
	public void setuserID(String userID) {
		this.userID = userID;
	}
	public String getLoadtourismDate() {
		return loadtourismDate;
	}
	public void setLoadtourismDate(String loadtourismDate) {
		this.loadtourismDate = loadtourismDate;
	}
	public String getLoadtourismContent() {
		return loadtourismContent;
	}
	public void setLoadtourismContent(String loadtourismContent) {
		this.loadtourismContent = loadtourismContent;
	}
	public int getLoadtourismAvailable() {
		return loadtourismAvailable;
	}
	public void setLoadtourismAvailable(int loadtourismAvailable) {
		this.loadtourismAvailable = loadtourismAvailable;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	private int loadtourismID;
	  public Uploadfile(int loadtourismID, String loadtourismTitle, String userID, String loadtourismDate,
			String loadtourismContent, int loadtourismAvailable, String fileName) {		
		this.loadtourismID = loadtourismID;
		this.loadtourismTitle = loadtourismTitle;
		this.userID = userID;
		this.loadtourismDate = loadtourismDate;
		this.loadtourismContent = loadtourismContent;
		this.loadtourismAvailable = loadtourismAvailable;
		this.fileName = fileName;
	}
	  public Uploadfile() {
		  
	  }
	private String loadtourismTitle;
	  private String userID;
	  private String loadtourismDate;
	  private String loadtourismContent;
	  private int loadtourismAvailable;
	  private String fileName;

}
