<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub variablesButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Try
            Dim intCount As Integer = 0
            Dim intTotal As Integer = Request.ServerVariables.Count()
            Dim strVars As String = ""

            For intCount = 0 To intTotal - 1
                strVars = strVars & "Variable " & intCount & ":  " & Request.ServerVariables.Keys(intCount).ToString & ":  " & Request.ServerVariables.Item(intCount) & "<br/>"
            Next
			    strVars = strVars & "End of Variable List "  & "<br/>"

            lblServerVars.Text = strVars
			
        Catch ex As Exception
            lblError.Text = ex.Message
        End Try
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Server Variables</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblServerVars" runat="server" Text="Server Variable Listing" style="z-index: 100; left: 21px; position: absolute; top: 120px" Font-Size="Large" Height="241px" Width="800px"></asp:Label>
        <asp:Button ID="variablesButton" runat="server" OnClick="variablesButton_Click" Style="z-index: 103;
            left: 32px; position: absolute; top: 66px" Text="Server Variables" Width="124px" />
        <asp:Label ID="lblError" runat="server" Font-Size="Large" Height="34px" Style="z-index: 102;
            left: 26px; position: absolute; top: 18px" Text="Any error message appears here"
            Width="590px"></asp:Label>
    </div>
    </form>
</body>
</html>
