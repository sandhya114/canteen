<html>
    <head>
        <style>
     sta{
            color:rgb(65, 132, 203);
        }
        </style>
        
    </head>

        <%@ page import="java.sql.*"%>
        <% try{
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");        
            String sta=request.getParameter("but");

String sql="update adminmenu set STATUS=? where FOOD_NAME=?";
PreparedStatement stat=cn.prepareStatement(sql);
String st[]=request.getParameterValues("status");
for(int i=0;i<st.length;i++){
    stat.setString(1,sta);
    stat.setString(2,st[i]);
    stat.executeUpdate();
}
cn.close();
stat.close();
response.sendRedirect("updatemenu.jsp");
        }catch(Exception a){
            out.println(a);
        }

        %>
        </html>
    