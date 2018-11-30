<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="useBean.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%request.setCharacterEncoding("utf-8");%>

<%

	String result = "----------------------<br>";//결과문자열
	String realFolder = "";//웹 어플리케이션상의 절대 경로 저장
	String saveFolder = "/image/item"; //파일 업로드 폴더 지정
	int maxSize = 5*1024*1024;  //최대 업로될 파일크기 5Mb
	Item item = new Item();
	
	//현재 jsp페이지의 웹 어플리케이션상의 절대 경로를 구함
	ServletContext context = getServletContext();
	realFolder = context.getRealPath(saveFolder);  

	try{
		MultipartRequest upload = null;
		   
		//파일 업로드를 수행하는 MultipartRequest 객체 생성 
		upload = new MultipartRequest(request, realFolder, maxSize, "utf-8", new DefaultFileRenamePolicy());
		   
		//<input type="file">이 아닌 모든 파라미터를 얻어냄 
	
		Enumeration<?> params = upload.getParameterNames();
		item.setName(upload.getParameter("name"));
		item.setPrice(Integer.parseInt(upload.getParameter("price")));
		item.setSize(upload.getParameterValues("size"));
		item.setColor(upload.getParameterValues("color"));
		
		
		//<input type="file">인 모든 파라미터를 얻어냄
		Enumeration<?> files = upload.getFileNames();
	 
		String filename = "";
		String name = "";
		
		//업로드된 모든 파일의 정보를 반복해서 얻어냄
		if(files.hasMoreElements()){
		    //서버에 업로드된 파일명
		    name = (String)files.nextElement();
		    filename = upload.getFilesystemName(name);
		    System.out.println("name : "+filename);
		    System.out.println("type : "+name);
		    System.out.println("upload to : "+realFolder);
		}
        
		if(useBean.JDB.insert_item(item)){
			
			int i = -1;
	        i = filename.lastIndexOf("."); // 파일 확장자 위치
	        String realFileName = Integer.toString(item.getTid()) + filename.substring(i, filename.length());  //현재시간과 확장자 합치기
	        
	        File oldFile = new File(realFolder +"/"+ filename);
	        File newFile = new File(realFolder +"/"+ realFileName); 
	        
	        oldFile.renameTo(newFile);
			response.sendRedirect("/JSP_Eclipse");
		}
		else{
			response.sendRedirect("/JSP_Eclipse/index.jsp?p=shop/itemcreate.jsp");
		}
    } catch(Exception e){
		e.printStackTrace();
	}

%>