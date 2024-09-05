<html>
    <head>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
   <style>
    header{
        margin-top:-25px;
        margin-left:-10px;
        position:relative;background:#000;
        padding:20.5px;width:1495px;height:30px;
    }
    .left-side h3{
        color:#fff;margin:0;
        font-size:22px;
        font-weight:900;
    }
     .left-side span{
        color:#19B3D3;
     }
     .side-nav{
        background:#000;
        margin-top:-27px;padding-top:30px;
        position:fixed;
        left:0;
        width:200px;
        height:100%;
        transition:0.5s;
        transition-property: left;
     }
     .logo{
        text-align:center;
     }
     .side-nav .image{
   width:100px;
   height:100px;
   border-radius:100px;
   margin-bottom:18px;
     }
     .side-nav a{
        color:#fff;display:black;
        width:100%;
        line-height:60px;
        text-decoration: none;
        padding-left:40px;
        box-sizing:border-box;
        transition:0.5s;
        transition-property: background;
     }
     .side-nav a:hover{
        color:bisque;
     }
      .side-nav i{
        padding-right:10px;
      }
.side-nav span{ font-size:20px;
}
      label #side-nav-btn{
        z-index:1;
        color:#fff;
        position:fixed;
        cursor:pointer;
       left:300px;font-size:20px;margin:5px 0;
        transition-property: color;
      }
      label #side-nav-btn:hover{
        color:yellow;
      }
      #check:checked ~ .side-nav{
        left: -150px;
      }
      #check:checked ~ .side-nav a span{
        display:none;
      }
      #check:checked ~ .side-nav a{
          font-size:20px;
          margin-left:120px;
          width:100px;
      }
   body{
    background-color: #140d0d;
   }
             .order{
                margin-left:250px;
                width:950px;
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
                margin-top: 40px;
                width:calc(90vw - 50px);
                max-height:calc(85vh - 50px);
                overflow-y: scroll;
            }
            .total{
                margin-left:1050px;
                width:400px;
            }
            .total{
                margin-top:-280px;
                width:calc(30vw - 50px);
                max-height:calc(10vh - 50px);
                overflow-y: scroll;
            }
            .search{
                height:0px;
                margin-left:300px;
                margin-top:30px;
            }
            .seatxt{
                height:35px;
                width:500px;
            }
            .seabtn{
                height:35px;
                background-color:#19B3D3;
            }
        </style>
    </head>
    <body>
        <input type="checkbox" id="check">
        <header>
        <label for="check">
        <i class='bx bx-menu' id="side-nav-btn"></i>
        </label>
        <div class="left-side"><h3>GTF</h3>
        <div>
        </header>
        <div class="side-nav">
        <div class="logo">
        <img src="gcetlogo22.png" class="image">
        </div>
        <a href="adminhome.html"><i class='bx bx-home' ><span>Home</span></i></a>
        <a href="updatemenu.jsp"><i class='bx bxs-food-menu' ><span>Menu</span></i></a>
        <a href="adminorders.jsp"><i class='bx bx-cart-download' ><span>Order</span></i></a>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><a href="canteenf.html"><i class='bx bx-log-out' ><span>Log-out</span></i></a>
 </div>
 <div class="banner"></div>
 </body>
 <div class="search">
    <form action="selectedorder.jsp">
        <input type="text" name="sea" class="seatxt" placeholder="search here.."><button type="submit" class="seabtn" name="seabtn">Search</button>
    </form>
</div>
    <body> 
    <div class="scroll_tb" >
<table border="1" class="order">
    
    <tr>
        <th>Username</th>
        <th>Ordered-foor</th><th>Amount</th><th>Secret-key</th><th>Date_Time</th>
    </tr>
<%@ page import="java.sql.*"%>
<% try{
    String co=(String)session.getAttribute("con");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject","root","");
    String sql="select * from stud_Bills ";
    PreparedStatement st=cn.prepareStatement(sql);
    ResultSet rs=st.executeQuery();
    while(rs.next()){ 
      %>
        <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4)%></td> 
            <td><%=rs.getString(5)%></td>
        </tr>
        <%
    }
}catch(Exception a){
    out.println(a);
}
%>
</table>
</div>
<!-- <div class="total">
<table border="1">
    <tr>
        <th>Username</th>
        <th>Totalamount</th>
    </tr>
    <%@ page import="java.sql.*"%>

<% try{
    String co=(String)session.getAttribute("con");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject","root","");
    String sql="select * from stuorder";
    PreparedStatement st=cn.prepareStatement(sql);
    ResultSet rs=st.executeQuery();
    while(rs.next()){ 
      %>
        <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(3) %></td>
        </tr>
        <%
    }
}catch(Exception a){
    out.println(a);
}
%> -->
<!-- </table>
</div> -->
</body>
</html>