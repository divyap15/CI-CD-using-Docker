<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body bgcolor="silver">
        <form method="post" action="userRegistration.jsp">
            <center>
            <table  width="30%" cellpadding="5">
                <thead>
                    <div id="name1" >
                        <tr>
            <h4>
                <th colspan="2">
                ಬೆಂಗಳೂರು ಮಹಾನಗರ ಸಾರಿಗೆ ಸಂಸ್ಥೆ
                </th>
            </h4>
            </div>
                    </tr>
                <tr>
                    <div id="name2">
                    <h4>
                        <th colspan="2">
                        BANGALORE METROPOLITON TRANSPORT CORPORATION
                        </th>
                    </h4>
                    </div>
                </tr>
                <tr>
               
                    <div id="photo1">
                        <th colspan="2">
                    <img src="http://ems.mybmtc.com/BMTC/images/logo2.png" height="100" width="100" >
                        </th>
                    </div>
                </tr>
                <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="userName" value="" /></td>
                    </tr>
                     <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
