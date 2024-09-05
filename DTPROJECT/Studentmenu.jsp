<html><head>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<style>
    body{
          
        background-color: black;
    }
    .f1{
        width:10%;
        height:100vh;
        background:url("blackwood.jpg")no-repeat;
        background-size: cover;
        width:710px;
        margin-top:-10px;
        height:666px;
        padding:30px; overflow-y: hidden;
    }
    .f1 table{
        width:600px;border-color: rgb(8, 8, 8);
    }
    .f1 table {
        margin-bottom:0px;
        align-items: center;
    }
    .f1 h2{
        margin-top:78px;
        color:rgb(136, 216, 125);
        text-align: center;
       font-style: italic; text-decoration: underline;
    }
    .f1 table tr{
        text-align:center;border-color: #000;
    }
    .f2 table tr{
        text-align:center;
    }
    .f3 table tr{
        text-align:center;
    }
    .f2{
        background:url("blackwood.jpg")no-repeat;
        background-size: cover;
        margin-left:770px;
        margin-top:-750px;
        width:750px;
        height:520px;
    }
    /* .f2 table{
        width:700px;
    }
    .f2 th{
        color:yellow;
        opacity: 0.8px;
    }
    .f2 td{
        color:rgb(246, 211, 124);
    } */
    .f2 h2{
        text-align: center;
        color:rgb(190, 250, 233);
       font-style: italic; text-decoration: underline;
    }
    .f3 h2{
        text-align: center;
        margin-top:10px;
        color:rgb(190, 250, 233);
       font-style: italic; text-decoration: underline;
    }
    .f3 th{
                position:sticky;
                top:0px;
               background:teal;
                color:wheat;
            }
    .f3 th{
        color:yellow;
    }
    .f3 td{
        color:rgb(246, 211, 124);
    }
    .f33 tr{
                overflow-y:scroll;
                background-color:#140d0d;
            }
            .f33{

                max-height:calc(30vh - 50px);
                overflow-y: scroll;
            }
    .plus{
        color:  #152726;
        background-color:#a48bc5;
    }
    .minus{
        color: #152726;
        background-color:#a48bc5;
    }
    .f3  table{
        width:730px;
    }
    .f3{
        background:url("blackwood.jpg")no-repeat;
        background-size: cover;
        margin-left:770px;
        margin-top:-20px;
        width:750px;
        height:220px;
    }
    .b{
        background-color:rgb(135, 243, 243);
    }
    .proceed{
        position: absolute;
   bottom: 60px;color:aliceblue;border-radius: 5%;
   padding: 10px;background-color: #152726;border-color: #72e446;
   left:310px;width:200px;
    }
   .f2 th{
                position:sticky;
                top:0px;
               background:teal;
                color:wheat;
            }
            .f2 table  tr td{
                width:500px;
                color:#72e446;
                overflow-y: auto;
            }
            .f2 table{
                width:730px;
            }
    .f22 tr{
                overflow-y:scroll;
                background-color:#140d0d;
            }
            .f22{
                max-height:calc(65vh - 30px);
                overflow-y: scroll;
            }
            .order{
                color:rgb(52, 25, 25);margin-left:35px;
                bottom:30px; font-size: 20px;
                width:400px;
            }
            .a{
                margin-top: -40px;border-radius:0.9;
                width:150px;background-color:#c9895b;margin-left:550px;
            }
           .aa{
            width:150px;background-color:#c9895b;margin-left:-9px;
           }
            .log{
                color:rgb(52, 25, 25);margin-left:43px;text-align:center;
                bottom:30px; font-size: 20px;
                width:400px;
            }
            .f11{
                margin-top:50px;margin-left:50px;
            }
            .f11 th{
                background-color: #423e46;color:aliceblue;
            }
            .f11 td{
                overflow-y:scroll;
                background-color:#f4adad;
            }
            .f11{
                max-height:calc(40vh - 0px);
                overflow-y: scroll;
            }
            .btn{
                background-color: red;color:#fff;
            }
</style>
</head><body><div class="f1">
            <h2>Cart</h2><div class="f11">
            <table border="1">
                <th>DELETE</th>
                <th>FOOD_NAME</th>
                <th>PRICE</th>
                <th>QUANTITY</th>
                <%@ page import="java.sql.*"%>
                <% try{
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true","root","");
          String sq="select * from sel where Username=?";
          String name=(String)session.getAttribute("username");
          PreparedStatement st=cn.prepareStatement(sq);
          st.setString(1,name);
          ResultSet rs=st.executeQuery();
          while(rs.next()){
            %>
            <tr><td><form action="studel.jsp"><button type="submit" class="btn" name="del" value="<%=rs.getString(1)%>">remove</i></button></form></td>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><form><button type="submit" name="mi" formaction="quantitymin.jsp" class="minus" value="<%=rs.getString(1)%>">&#9866;</button>&nbsp;<%=rs.getInt(3)%>&nbsp;<button type="submit"  formaction="quantity.jsp" class="plus"  name="pl" value="<%=rs.getString(1)%>" >&#10010;</button></form></td>
            </tr>
            <%
                }
                cn.close();
                rs.close();st.close();
            }catch(Exception a){
                out.println(a);
            }
            %>
            </table></div>
            <form><button type="submit" class="proceed" formaction="Studentorder.jsp">PROCEED</button></form>
        </div>
        <div class="f2">
            <h2>Main-menu<i class='bx bx-bowl-hot bx-tada' ></i></h2>
            <div class="f22">
        <table border="1">
            <tr><th>FOOD_NAME</th><th>PRICE</th><th>STATUS</th><th>SELECT</th></tr>
            <%@ page import="java.sql.*"%>
<% 
  try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");
          Statement st=cn.createStatement();
          String sql="select * from adminmenu";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next()){
            if(rs.getString(2).equals("daily")&&rs.getString(4).equals("Available")){
            %>
             <tr>
                <td><%=rs.getString(1) %></td>
                <td><%=rs.getLong(3) %></td>
                <td><%=rs.getString(4)%></td>
                <td><form action="select.jsp"><button type="submit" value="<%=rs.getString(1)%>" name="bu">add</button></form></td>
            </tr>
      <% 
        }
          }
          cn.close();st.close();rs.close();
}catch(Exception a){
    out.println(a);
}
%>
        </table></div></div>
        <div class="f3"><h2><i class='bx bx-baguette bx-flashing' ></i>Special-menu</h2>
            <div class="f33">
            <table border="1">
                <tr><th>FOOD_NAME</th><th>PRICE</th><th>STATUS</th><th>SELECT</th></tr>
                <%@ page import="java.sql.*"%>
    <% 
      try{
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");
              Statement st=cn.createStatement();
              String sql="select * from adminmenu";
              ResultSet rs=st.executeQuery(sql);
              while(rs.next()){
                if(rs.getString(2).equals("special")&&rs.getString(4).equals("Available")){
                %>
                 <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getLong(3) %></td>
                    <td><%=rs.getString(4)%></td>
                    <td> <form action="select.jsp"><button type="submit" value="<%=rs.getString(1)%>" class="b" name="bu">add</button></form></td>
                </tr>
          <% 
            }
              }
              cn.close();st.close();rs.close();
    }catch(Exception a){
        out.println(a);
    }
    %>
            </table></div></div>
        </div>
    </body>
</html>