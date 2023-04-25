<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body >
    <table>
        <tr>
            <td><img src="https://aniportalimages.s3.amazonaws.com/media/details/BMTC_July21.jpg" align="left" width="250" height="200"></td>
            <td >
           <div id="name" >
            <h1>
                ಬೆಂಗಳೂರು ಮಹಾನಗರ ಸಾರಿಗೆ ಸಂಸ್ಥೆ
            </h1>
            </div>
            </td>
            <td>
            <div id="photo">
            <img src="https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-52b1i4kphdmf74vvej48fr59v7-20180718043535.Medi.jpeg" width="300" height="205">
            </div>
            </td>
            </tr>
            </table>
         <tr>
    <td><blockquote><a href="" target="call">HOME</a></blockquote></td>
    
    <td><blockquote><a href="" target="call">ADMIN</a></blockquote></td>
    
    <td><blockquote><a href="sign.html" target="call">SIGN IN</a></blockquote></td>

     <td><blockquote><a href="login.html" target="call">STUDENT LOGIN</a></blockquote></td>
   
    <td><blockquote><a href="" target="call">CONTACT US</a></blockquote></td>
        </tr>
    </table>
    <hr>
        <table>
        <tr>   
    <marquee >
     <h1>
        WELCOME TO BANGALORE METROPOLITON TRANSPORT CORPORATION
    </h1>
        </marquee>
        </tr>
        </table>
    <img src="https://www.indiaspend.com/h-upload/old_images/343409-bmtc-1.jpg" width="100%" height="0%">
</body>
</html>
        <form method="post" action="login.jsp">
            <center>
            <table border="0" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Page</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="userName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">New User <a href="register.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        </body>
</html>
