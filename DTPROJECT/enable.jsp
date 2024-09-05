<html>
    <body>
        <%@ page import="java.sql.*"%>
        <% try{
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject", "root", "");        
            String nt="available";
            String sql="UPDATE adminmenu SET STATUS=?";
            PreparedStatement st=cn.prepareStatement(sql);
            out.println(nt);
            st.setString(1,nt);
            out.println("ok");
            st.executeUpdate();
            response.sendRedirect("updatemenu.jsp");
            out.println("ok1");
        }catch(Exception a){
            out.println(a);
        }

        %>
    </body>
</html>