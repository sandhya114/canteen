<html>
    <head>
        
    </head>
<%@ page import="java.sql.*"%>
<% try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true","root","");
    String cc="select count from counter";
    PreparedStatement ct=cn.prepareStatement(cc);
    ResultSet cs=ct.executeQuery();
    int key=0;
    if(cs.next()){
           key=cs.getInt(1)+1;
           session.setAttribute("key",key);
    }
    cs.close();
          String sq="select * from sel where Username=?";
          String name=(String)session.getAttribute("username");
          PreparedStatement pst=cn.prepareStatement(sq);
          int k=(int)session.getAttribute("key");
          pst.setString(1,name);
          ResultSet rs=pst.executeQuery();
          int total=0;
          while(rs.next()){
            int p=rs.getInt(2);
            int q=rs.getInt(3);
            total=p*q;
            String sql="insert into stud_bills(Username,Orderedfood,Totalamount,Secretkey) values('"+name+"','"+rs.getString(1)+"','"+total+"','"+"Gcet"+k+"')";
            out.println(k);
          Statement st=cn.createStatement();st.executeUpdate(sql);
          }
          out.println("ok");
          String up="update counter set count=count+1";
          PreparedStatement ps=cn.prepareStatement(up);
          ps.executeUpdate();
          cn.close();
          response.sendRedirect("orderstu.jsp");
}catch(Exception a){
    out.println(a);
}
%>

</html>