<%@ page import="java.sql.*"%>
<% try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");        
    String plus=request.getParameter("pl");
    String minus=request.getParameter("mi");
if(!plus.equals("null")){
    String in="UPDATE sel SET QUANTITY= QUANTITY + 1 WHERE FOOD_NAME=? AND QUANTITY<10";
    PreparedStatement pst=cn.prepareStatement(in);
    pst.setString(1,plus);
    pst.executeUpdate();
    pst.close();
}
cn.close();
    response.sendRedirect("Studentmenu.jsp");
}catch(Exception a){
    out.println(a);
}
%>
