<html>
    <head>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style>
            header{
        position:fixed;background:#000;
        margin-top:-520px;
        padding:20px;width:100%;height:30px;
        margin-left:-30px;
    }
    header .bx {
        margin-top:25px;
    }
    .left-side h3{
        color:#fff;
         margin-left:-1440px;
        font-size:22px;
        font-weight:900;
        margin-top:-20;
    }
     .left-side span{
        color:#19B3D3;
     }
     .side-nav{
        background:#000;
        margin-top:-474px;padding-top:30px;
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
        margin-top:28px;
   width:100px;
   height:100px;
   border-radius:100px;
   margin-bottom:18px;
     }
     .side-nav a{
        color:#eff1e6;display:black;
        width:100%;
        line-height:60px;
        text-decoration: none;
        padding-left:40px;
        box-sizing:border-box;
        transition:0.5s;
        transition-property: background;
     }
     .side-nav a:hover{
        color:rgb(211, 137, 46);
     }
      .side-nav i{
        padding-right:10px;}
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
                background: url(brick.jpg);
                background-size: 1400px 550px;
            }
            table{
                border-color: #f1eee9;
            }
            table tr td{
                width:700px;height:35px;
            }
            table tr{
                border-color:#f1e9e9;
                width:100px;
                height:30px;
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
            body h2{
                margin-top:-455px;
                text-align:center;
                color:#19B3D3;
            }
            label{
                color:antiquewhite;
            }
   body table{
    margin-left:200px;
         text-align:center;
     position:center;
     margin-right:-0px;
          }

            .add{
                margin-top:110px;
                margin-left:1400px;
            }
            h3{
                text-align:center;
                color:red;
                font-weight:900;
            }
            .wrapper{
                margin-left:980px;
                padding:20px;
                background:#da9797;
                border-radius:5px;
                width:350px;
                height:330px;
                position:sticky;
                visibility: hidden;
                transition:all 5s ease-in-out;
            }
            .wrapper h2{
                margin-top:0;color:#333;
            }
            .wrapper .close{
                position:absolute;
                top:20px;right:30px;transition:all 200ms;
                font-size:30px;
                font-weight:bold;
                text-decoration:none;color:#333;
            }
            .wrapper .content{
                max-height:200%;
                overflow:hidden;
            }
            .container{
                border-radius:5px;
                background-color: #da9797;
                padding:20px 0;
            }
            form label{
                text-transform: uppercase;
                font-weight:500;
                letter-spacing:3px;
                color:#000;
            }
            input[type=text],textarea{
                width:100px;padding:12px;
                border:1px solid #ccc;
                border-radius:5px;
                box-sizing:border-box;
                margin-top:6px;
            }
             input[type="submit"]{
                background-color: #413b3b;
                color:#fff;
                padding :15px 50px;border:none;
                border-radius:50px;
                cursor:pointer;
                font-size:15px;
                text-transform:uppercase;
                letter-spacing:3px;
             }
             .dis{
                color:red;
             }
             .en{
                color:yellow;
             }
             .open{
                visibility:visible;
        
             }
             
            .statuss{
                width:250px;
                height:200px;
                margin-top:-200px;
                margin-left: 1200px;
                background:pink;
                position:fixed;
                cursor:pointer;
                overflow:-moz-hidden-unscrollable;
                margin-bottom: 95px;
            }
            tr{
                overflow-y:scroll;
                background-color:#140d0d;
            }
            .scroll_tb{
                width:calc(93vw - 50px);
                max-height:calc(82vh - 50px);
                overflow-y: scroll;
            }
            form table th{
                margin-top:-20px;
                width:1400px;
            }
            form .statuss {
                position:fixed;
            }
           form .sts{
                margin-left:400px;
                background-color: #2b6c11;
            }
            form .stss{
                background-color: darkorange;
            }
           form .del{
                color: #e6f1e1;
                background-color: #e71010;
            }
        </style>

    </head>
    <body>
         <div class="add">
                    <label>Add item</label>
            <button type="submit" onclick="f()"><i class='bx bx-plus'></i></button>
            <!-- <input type="checkbox" id="check">
            <label for="check"><i class='bx bx-list-plus'></i></label> -->
           <!-- <a href="#items"><i class='bx bx-list-plus'></i></a> -->
           </div>
            <div class="wrapper" id="items" >
                <h2>Add item</h2>
                <a href="updatemenu.jsp" class="close">&times;</a>
                <div class="content">
                    <div class="container">
                        <form  name="iform" action="updatemenupage.jsp">
                            <label>Food Name</label>
                            <input type="text"  name="fname" placeholder="foodname"><br>
                            <label>Food Type</label>
                            <input type="text"  name="ftype" placeholder="foodtype"><br>
                            <label>Price per plate</label>
                            <input type="text" name="fpc" placeholder="price"><br>
                            <label>Status</label>
                            <input type="text" name="sts"  id="sts" placeholder="status"><br>
                            <input type="submit" value="add">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            let popup=document.getElementById("items");
            function f(){
              popup.classList.add("open");
            }
        </script>
    </body>
    <input type="checkbox" id="check">
        <header>
        <label for="check" class="bx">
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
 <div class="banner">
</div>
<body>
    <h2>Menu-List</h2><form action="disable.jsp" class="form">
        <div class="scroll_tb">
     <table border="1">
    <tr>
        <th>Select</th>
        <th>FOOD_NAME</th>
        <th>FOOD_TYPE</th>
        <th>PRICE_PER_PLATE</th>
        <th>STATUS</th>
    </tr> 
<%@ page import="java.sql.*"%>
<% 
  try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true", "root", "");
          Statement st=cn.createStatement();
          String sql="select * from adminmenu";
          ResultSet rs=st.executeQuery(sql);
          while(rs.next()){
            %>
             <tr>
                <td> <input type="checkbox" name="status"  class ="select" value="<%=rs.getString(1)%>"></td>
                <td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
                <td><%=rs.getLong(3) %></td>
                <td><%=rs.getString(4)%></td>
            </tr>
      <% 
          }
}catch(Exception a){
    out.println(a);
}
%>
</table>&nbsp;&nbsp;
</div>
 <input type="submit" name="but" class="sts" value="Available">
<input type="submit" name="but" class="stss" value="Unavailable">
<input type="submit" name="but" class="del" value="Delete" formaction="del.jsp">
</form>
</body>
</html>