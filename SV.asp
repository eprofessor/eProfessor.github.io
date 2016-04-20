<%@ Language=VBScript %>
<% Response.Buffer = True %>
<% // PgP 1/17/2004  This script was written to display server variables %>

<html>
<head>
<title>Server Variables</title>
<h1 align="center"><font color="#FF00FF"><b><i>Winona State University<br></i></b></font></h1>
</head>

<body>

<p>This script displays all available server variables.</p>

<TABLE border="1">
      <TR>
	  <td> <b> Number</b></td>
           <TD>
                <B>Server Varriable</B>
           </TD>
           <TD>
                <B>Value</B>
           </TD>
      </TR>
	  <% Dim count  %>
	  <% count = 0 %>

      <% For Each name In Request.ServerVariables %>
      <TR>
	      <td><% = count %></td>
          <TD><%= name %></TD>
          <TD><%= Request.ServerVariables(name) %></TD>
      </TR>
	  
	  <% count = count + 1 %>
      <% Next %>
</TABLE>
<p align="center">*** End of list &nbsp;***</p>
<p> This .asp script was last modified on 1/5/2007 by PgP</p>
</body>
</html>