<%@ page import="java.sql.*"%>
<% try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");       
    String minus=request.getParameter("mi");
    out.println(minus);
    if(!minus.equals("null")){
        String inn="UPDATE sel SET QUANTITY= QUANTITY - 1 WHERE FOOD_NAME=? AND QUANTITY>1";
        PreparedStatement st=cn.prepareStatement(inn);
        st.setString(1,minus);
        st.executeUpdate();
        out.println(minus);
        response.sendRedirect("Studentmenu.jsp");
        st.close();
     }
     cn.close();
     
}catch(Exception a){
    out.println(a);
}
%>