<%@ page import="java.sql.*"%>
<% try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true","root","");
    String dell="delete from sel where Food_name=? and USERNAME=?";
    String name=(String)session.getAttribute("username");
    String f=request.getParameter("del");
    PreparedStatement pst=cn.prepareStatement(dell);
    pst.setString(1,f);
    pst.setString(2,name);
    pst.executeUpdate();
    cn.close();
    pst.close();
    response.sendRedirect("Studentmenu.jsp");
}catch(Exception a){
    out.println(a);
}
%>