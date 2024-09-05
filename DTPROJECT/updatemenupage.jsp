<html>
    <head><meta http-equiv="refresh" content="2; url=/DTPROJECT/updatemenu.jsp"><script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script></head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@include file="updatemenu.jsp" %>
        <%
        try{
          Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");
          Statement st=cn.createStatement();
         String fdname=request.getParameter("fname");
        String fdtype=request.getParameter("ftype");
        long pc=Long.parseLong(request.getParameter("fpc"));
        String status=request.getParameter("sts");
       String sql="insert into adminmenu values('"+fdname+"','"+fdtype+"','"+pc+"','"+status+"')";
       st.executeUpdate(sql);
       response.sendRedirect("updatemenu.jsp");
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
      <%
        }
        %>
    </body>
</html>