<html><head>
    <meta http-equiv="refresh" content="3; url=/DTPROJECT/adminlogin.html">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
</head>
    <body>
        <%@include file="adminlogin.html" %>
        <% String usr=request.getParameter("user");
        String pasw=request.getParameter("password");
        if(usr.equals("admin") && pasw.equals("pass")){
            out.println("successfull");
            response.sendRedirect("adminhome.html");
        }
        else{%>
            <script>
            swal({
                title: 'Auto close alert!',
                text: 'Login Unsuccessfull.....Please Try again!!!',
                timer: 2050,
                buttons: false,
              })
              </script>
              <%
        }
        %>
    </body>
</html>