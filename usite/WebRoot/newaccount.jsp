<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import ="java.util.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:usebean id="bean8" scope="request" class="tarique.NewAccount"/>
<jsp:setProperty name="bean8" property="*"/>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
.style2 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
}
</style>
<script language="JavaScript" type="text/JavaScript">
<!--

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_nbGroup(event, grpName) { //v6.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : ((args[i+1])? args[i+1] : img.MM_up);
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    nbArr = document[grpName];
    if (nbArr)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = (args[i+1])? args[i+1] : img.MM_up;
      nbArr[nbArr.length] = img;
  } }
}
//-->
</script>
</head>

<body>
<table cellspacing=0 cellpadding=0 width=970 align=center border=0>
  <tbody>
    <tr>
      <td>
        <table cellspacing=0 cellpadding=0 width="100%" border=1>
          <tbody>
            <tr>
              <td width=4 
          background="images/index_01.jpg">&nbsp;</td>
              <td width="962">
                <table cellspacing=0 cellpadding=0 width="100%" border=0>
                  <tbody>
                    <tr>
                      <td>
                        <script 
                  src="images/banner_home.js" 
                  type=text/javascript></script>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <script language=JavaScript1.2>mmLoadMenus();</script>
                        <script 
                  src="images/mainmenu.js" 
                  type=text/javascript></script>

					  </td>
                    </tr>
                    <tr>
                      <td><a href="javascript:;" target="_top" onClick="MM_nbGroup('down','group1','title111','',1)" onMouseOver="MM_nbGroup('over','title111','','',1)" onMouseOut="MM_nbGroup('out')"><img src="images/title111.JPG" name="title111" width="962" height="106" border="0"></a></td>
                    </tr>
                    <tr>
                      <td><table width="200" border="1">
                        <tr>
                          <td><a href="javascript:;" target="_top" onClick="MM_nbGroup('down','group1','titleimage1','',1)" onMouseOver="MM_nbGroup('over','titleimage1','','',1)" onMouseOut="MM_nbGroup('out')"><img src="images/titleimage1.jpg" alt="" name="titleimage1" width="148" height="112" border="0"></a></td>
                          <td><img src="images/ED001204.jpg" width="158" height="112"></td>
                          <td><img src="images/ED001032.jpg" width="170" height="112"></td>
                          <td><img src="images/images.jpg" width="147" height="112"></td>
                          <td><img src="images/FAA023000428.jpg" width="153" height="113"></td>
                          <td><img src="images/lib.jpg" width="148" height="112"></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td><a href="javascript:;" target="_top" onClick="MM_nbGroup('down','group1','titleimage1','',1)" onMouseOver="MM_nbGroup('over','titleimage1','','',1)" onMouseOut="MM_nbGroup('out')">
                        <%@include file="menu.html"%>
                      </a></td>
                    </tr>
                    <tr>
                      <td><img height=9 alt="" 
                  src="images/index1_07.jpg" 
                  width=961></td>
                    </tr>
                    <tr>
                      <td align="center" valign=top bgcolor=#ffffff>                        <a href="javascript:;" target="_top" onClick="MM_nbGroup('down','group1','titleimage1','',1)" onMouseOver="MM_nbGroup('over','titleimage1','','',1)" onMouseOut="MM_nbGroup('out')">
                        </a>
                        <table width="958" height="77" border="1">
                          <tr>
                            <td width="190"><table cellspacing=2 cellpadding=1 width="98%">
																			<tbody>
																				<tr>
																					<td>&nbsp;
																						 
																					</td>
																					<td>&nbsp;
																						 
																					</td>
																					<td><a href="#">Create Student Id</a>
																						 
																					</td>
																					<td width="2">&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td>&nbsp;
																						 
																					</td>
																					<td>
																						<img height=24 src="images/3.jpg" width=12>
																					</td>
																					<td align="left" class=textlinks>
																					  <a href="#">Student Profile</a></td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td>&nbsp;
																						 
																					</td>
																					<td>
																						<img height=22 src="images/3.jpg" width=18>
																					</td>
																					<td width=107 align="left" class=textlinks> <a href="http://www.uptu.ac.in/kulgeet.mp3" target=_blank>Faculty Profile </a></td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td>&nbsp;
																						 
																					</td>
																					<td height=12>
																						<img height=22 src="images/3.jpg" width=17>
																					</td>
																					<td align="left" class=textlinks> <a href="#">Institute News</a></td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td width=1>&nbsp;
																						 
																					</td>
																					<td width=37 height=12>
																						<img src="images/3.jpg" width="16" height="19">
																					</td>
																					<td align="left" class=textlinks> <a href="http://www.uptu.ac.in/about/vcs_message.asp">University News </a> </td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td>&nbsp;
																						 
																					</td>
																					<td>
																						<img src="images/3.jpg" width="17" height="21">
																					</td>
																					<td align="left" class=textlinks> <a href="http://www.uptu.ac.in/photogallery.htm">Photo Gallery </a> </td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td>&nbsp;
																						 
																					</td>
																					<td>
																						<img src="images/3.jpg" width="20" height="21">
																					</td>
																					<td class=textlinks>&nbsp;
																					</td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td>&nbsp;
																						 
																					</td>
																					<td>
																						<img src="images/3.jpg" width="14" height="19">
																					</td>
																					<td class=textlinks>&nbsp;
																					</td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td width=1>&nbsp;
																						 
																					</td>
																					<td width=37>
																						<img src="images/3.jpg" width="14" height="17">
																					</td>
																					<td class=textlinks>&nbsp;</td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td>&nbsp;
																						 
																					</td>
																					<td>
																						<img src="images/3.jpg" width="16" height="18">
																					</td>
																					<td class=textlinks>&nbsp;</td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																				<tr>
																					<td width=1>&nbsp;
																						 
																					</td>
																					<td width=37>&nbsp;
																						 
																					</td>
																					<td class=left>&nbsp;
																						 
																					</td>
																					<td>&nbsp;
																						 
																					</td>
																				</tr>
																			</tbody>
																		</table></td>
                            <td width="594" align="center" valign="middle" bgcolor="#B3AAFD"><form name="form2" method="post" action="">
                              <%
                              ArrayList al=bean8.submitNewAccount();
                              %>
                              <table width="381" height="220" border="1" cellpadding="0" cellspacing="0" bordercolor="#000099">
                                <tr align="center" valign="top" bgcolor="#000099">
                                  <td height="19" colspan="2"><h5><span class="style2">NEW ACCOUNT</span></h5></td>
                                </tr>
                                <tr align="left" bgcolor="#B3AAFD">
                                  <td width="153"> Login Name </td>
                                  <td width="158"><input name="loginname" type="text">
                              &nbsp;</td>
                                </tr>
                                <tr align="left" bgcolor="#B3AAFD">
                                  <td>Password</td>
                                  <td><input name="password" type="password"></td>
                                </tr>
                                <tr align="left" bgcolor="#B3AAFD">
                                  <td>Re-Type Password </td>
                                  <td><input name="password2" type="password"></td>
                                </tr>
                                <tr align="left" bgcolor="#B3AAFD">
                                  <td>User Type</td>
                                  <td><select name="usertype">
                <OPTION value=student >Student</OPTION>
                <OPTION value=employee >Employee</OPTION>
                                </select></td>
                                </tr>
                                <tr align="left" bgcolor="#B3AAFD">
                                  <td>Student/Emp Id </td>
                                  <td><input name="id" type="text"></td>
                                </tr>
                                <tr align="left" bgcolor="#B3AAFD">
                                  <td>Security Question </td>
                                  <td>
                                    <select name="question">
                <OPTION value=question >What's your lovely name</OPTION>
                
                                    </select>
                                  </td>
                                </tr>
                                <tr align="left" bgcolor="#B3AAFD">
                                  <td>Answer</td>
                                  <td><input name="answer" type="text"></td>
                                </tr>
                                <tr align="left" bgcolor="#B3AAFD">
                                  <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr align="center" bgcolor="#B3AAFD">
                                  <td colspan="2"><input name="submit" type="submit" value="Create My Account"></td>
                                  </tr>
                              </table>
                            </form>                            </td>
                            <td width="152">&nbsp;</td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td 
                height=14 align="center" 
                background="images/index1_11.jpg"></td>
                    </tr>
                    <tr>
                      <td style="BACKGROUND-REPEAT: no-repeat" valign=bottom 
                align=middle background="images/index1_13.jpg" 
                height=8>
                        <div class=dblue align=center>
                          <div align=center></div>
                          <font 
              color=#0099ff></font></div></td>
                    </tr>
                  </tbody>
              </table></td>
              <td width=186 
          background="images/index_03.jpg">&nbsp;</td>
            </tr>
          </tbody>
      </table></td>
    </tr>
    <tr>
      <td>
        <table cellspacing=0 cellpadding=0 width="98%" align=center border=0>
          <tbody>
            <tr>
              <td class=dblue width=299>
                <div align=left>&copy; Tarique Anwer |<a 
            href="http://www.uptu.ac.in/mail.htm">E-mail:mta.anwer@gamil.com </a></div></td>
              <td class=dblue width=418>|<a 
            href="http://www.uptu.ac.in/mail.htm"></a>Mob:9210749008</td>
              <td width=237>
                <table cellspacing=0 cellpadding=0 width="100%" border=0>
                  <tbody>
                    <tr>
                      <td class=dblue>Developed by : Tarique Anwer</td>
                    </tr>
                  </tbody>
              </table></td>
              <td class=dblue 
width=6>&nbsp;</td>
            </tr>
          </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>
