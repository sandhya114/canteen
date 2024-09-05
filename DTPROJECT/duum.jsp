<%@ page import="java.sql.*"%>
                <% try{
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtproject?allowPublicKeyRetrieval=true","root","");
                    String sqll="select * from stud_Bills where Username=?";
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
                    }
                    String sql="insert into stuorder values('"+name+"','"+sc+"','"+sum+"')";
                    PreparedStatement pst=cn.prepareStatement(sql);
                    pst.executeUpdate();
                cn.close();
                pst.close();
                response.sendRedirect("orderstu.jsp");
                
            }catch(Exception a){
                out.println(a);
            }
            %>