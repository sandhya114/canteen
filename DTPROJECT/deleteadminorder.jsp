<%@ page import="java.sql.*"%>
<% try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject","root","");
    String sql="delete from stud_bills where Username=?";
    String name=(String)session.getAttribute("user");
    PreparedStatement pst=cn.prepareStatement(sql);
    pst.setString(1,name);
    pst.executeUpdate();
    response.sendRedirect("adminorders.jsp");
}catch(Exception a){
    out.println(a);
}
%>
