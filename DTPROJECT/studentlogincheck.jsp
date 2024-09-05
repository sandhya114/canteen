<html>
    <head>
        <meta http-equiv="refresh" content="2; url=/DTPROJECT/studentlogin.html"><script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@ include file="studentlogin.html"%>
        <% try{
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject", "root", "");        
            String user=request.getParameter("luser");
            session.setAttribute("username",user);
        String pass=request.getParameter("lpas");
        String sql="select * from studentdet where Username=? and Password=?";
        PreparedStatement st=cn.prepareStatement(sql);  
        st.setString(1,user); 
        st.setString(2,pass);
        ResultSet rs=st.executeQuery();
        if(rs.next()){
            out.println("login success");
            response.sendRedirect("Studententry.jsp");
        }
        else{%>
            <script>
                swal({
                    title: 'Auto close alert!',
                    text: 'Incorrect login credentials!!!',
                    timer: 2050,
                    buttons: false,
                  })
                  </script>

      <%  }
        } catch(Exception a){
            out.println(a);
        }
        %>

    </body>
</html>