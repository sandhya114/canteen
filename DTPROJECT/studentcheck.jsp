<html>
    <head><meta http-equiv="refresh" content="3; url=/DTPROJECT/studentlogin.html"><script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script></head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@ include file="studentlogin.html"%>
        <%
        try{
          Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");
          Statement st=cn.createStatement();
         String name=request.getParameter("sname");
        String username=request.getParameter("suser");
        String password=request.getParameter("spass");
        long phno=Long.parseLong(request.getParameter("sphn"));
       String sql="insert into studentdet values('"+name+"','"+username+"','"+password+"','"+phno+"')";
       st.executeUpdate(sql);
       cn.close();st.close();
       %>
            <script>
               swal({
  title: 'Auto close alert!',
  text: 'Account created Successfully',
  timer: 2050,
  button:false,
})
            </script>
      <%
        }catch(Exception a){
           %>
           <script>
               swal({
  title: 'Auto close alert!',
  text: 'Already account exists ',
  timer: 2050,
  button:false,
})
            </script>
      <%

        }
        %>
    </body>
</html>