<html>
    <head>
    <style>
      body{
        background-color:#f8dbdb;
      }
 table{
    width:950px;
 }
  .tot{
    margin-left:650px;
    bottom:130px;
    position:absolute;
  }
 .sum{
  margin-left:800px;
  bottom:125px;
  position: absolute;
  color:blue;
 }
 .user{
  position:absolute;
  margin-top: -50px;
 }
 .name{
  color:#194962;
  margin-left:200px;
  position:absolute;
  margin-top: -50px;
 }
 th{
                position:sticky;
                top:0px;
               background:teal;
                color:wheat;
            }
            table  tr td{
                width:500px;
                color:#72e446;
                overflow-y: auto;
            }
            tr{
                overflow-y:scroll;
                background-color:#140d0d;
            }
            .scroll_tb{
                margin-top: 60px;
                width:calc(70vw - 50px);
                max-height:calc(70vh - 50px);
                overflow-y: scroll;
            }
 </style>
 </head>
<div class="scroll_tb">
    <table border="1">
        <tr><th>Orderd-FOOD</th><th>Total-amount</th><th>Secreat-key</th><th>Date-Time</th></tr>
        <%@ page import="java.sql.*"%>
    <% 
    try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");
      String sqll="select * from stud_bills where Username=?";
      PreparedStatement st=cn.prepareStatement(sqll);
      String na=(String)session.getAttribute("username");
      st.setString(1,na);
      ResultSet rs=st.executeQuery();
      String name="";
      String sc="";
      int sum=0;
      int su=0;
      while(rs.next()){
        int price=rs.getInt(3);
            sum=sum+price;
            name=rs.getString(1);
            sc=rs.getString(4);
        %>
         <tr>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
        </tr>
       
    <% 
    }
    %>
    <h2 class="tot">Total-amount:</h2><h1 class="sum"><%=sum%></h1>
    <h1 class="user">Username-</h1><h1 class="name"><%=name%></h1>
    <%
    String stt="delete from sel where Username=?";
    PreparedStatement pst=cn.prepareStatement(stt);
    pst.setString(1,na);
    pst.executeUpdate();
    cn.close();st.close();rs.close();
    }catch(Exception a){
    out.println(a);
    }
    %>
    </table>
    </div>
    </html>