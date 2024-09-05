<html>
    <head>
        <meta http-equiv="refresh" content="2">
    <style>
        body{
            width:1500px;
            height:500px;
            background-color:#000;
        }
        th{
width:200px;
        
        }
        .wrapper{
            bottom: 20px;
                margin-left:450px;
                padding:20px;
                background:#d4c2c2;
                border-radius:5px;
                width:600px;
                height:400px;
                position:sticky;
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
            input[type=text],textarea{width:100px;padding:12px;
                border:1px solid #ccc;
                border-radius:5px;
                box-sizing:border-box;
                margin-top:6px;
            }
             /* input[type="submit"]{
                background-color: #413b3b;
                color:#fff;
                padding :15px 50px;border:none;
                border-radius:50px;
                cursor:pointer;
                font-size:15px;
                text-transform:uppercase;
                letter-spacing:3px;
               bottom: 60px;
                padding: 10px;
                left:350px;width:200px;
             } */
             .pro{
                background-color:rgb(38, 168, 38);
                position:absolute;
                color:#fff;
                padding :15px 50px;border:none;
                border-radius:50px;
                cursor:pointer;
                font-size:15px;
                text-transform:uppercase;
                letter-spacing:3px;
               bottom: 60px;
                padding: 10px;
                left:350px;width:200px;
             }
             .can{
                position:absolute;margin-left:-250px;background-color: red;
                color:#fff;
                padding :15px 50px;border:none;
                border-radius:50px;
                cursor:pointer;
                font-size:15px;
                text-transform:uppercase;
                letter-spacing:3px;
               bottom: 60px;
                padding: 10px;
                left:350px;width:200px;
             }
             .tot{
                position:absolute;
                bottom:150px;margin-left:190px;
             }
             .tm{
                position:absolute;margin-left:40px;
                bottom:150px;
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
         .content{
            margin-top:-10px;
                width:calc(40vw - 50px);
                max-height:calc(6vh - 6px);
                overflow-y: scroll;
         }
    </style>
    </head>
    <body>
    <div class="wrapper" id="items" >
        <h2>Order-Confirmation!!!</h2>
        <div class="content">
                    <table border="1">
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
          int sum=0;
          while(rs.next()){
            int price=rs.getInt(2);
            int quan=rs.getInt(3);
            int tot=price*quan;
            sum=sum+tot;
            session.setAttribute("totsum",sum);
            %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getInt(2)%></td>
                <td><%=rs.getInt(3)%></td>
            </tr>
            <%
                }
                %>
                <h2 class="tm">Total-amount</h2><input class="tot" type="text" value=<%=sum%> readonly>
                <% 
                cn.close();
                rs.close();st.close();
            }catch(Exception a){
                out.println(a);
            }
            %>
        </table> 
                    <form><input type="submit"  class="pro" formaction="studentorderpage.jsp" value="Proceed"></form>
                        <form><input type="submit" class="can" formaction="Studentmenu.jsp" value="Cancel"></form>
        </div>
    </div>
</div>
    </body>
</html>