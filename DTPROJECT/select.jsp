<html><head>
    <meta http-equiv="refresh" content="3; url=/DTPROJECT/Studentmenu.jsp"><script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
</style></head><body>
<%@ page import="java.sql.*"%>
<%@include file="Studentmenu.jsp" %>
        <% try{
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");        
            String sta=request.getParameter("bu");
            String name=(String)session.getAttribute("username");
    String sql="select * from adminmenu where FOOD_NAME=?";
    PreparedStatement stat=cn.prepareStatement(sql);
    stat.setString(1,sta);
    ResultSet rs=stat.executeQuery(); 
    if(rs.next()){
        String s="insert into sel values('"+rs.getString(1)+"','"+rs.getString(3)+"','"+1+"','"+name+"')";
        Statement st=cn.createStatement();
        st.executeUpdate(s);
    }
    cn.close();rs.close();
    stat.close();
    response.sendRedirect("Studentmenu.jsp");
        }catch(Exception a){
           %>
            <script>
               swal({
  title: 'Auto close alert!',
  text: 'Oo!...item is already added',
  timer: 2050,
  button:false,
})
            </script>
      <%}
        %>
       </body> </html>