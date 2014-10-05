<%@ Page Language="vb" MasterPageFile="/Site.Master" AutoEventWireup="false" CodeBehind="Welcome.aspx.vb" Inherits="WebApplication5._Default" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" >

        <div>
    <fieldset style="width:119px; height:160px; padding:30px;" >
    <legend>jQuery Dropdown</legend>
    <div class="dropdown">
<a class="mainmenu toggle-login">My Account  <span class="icon">▼</span></a>

<div class="submenu">
<ul class="menuitems">
<li ><a href="#">Account setting</a></li>
<li ><a href="#">Privacy setting</a></li>
<li ><a href="#">Logout</a></li>
<li ><a href="#">Help</a></li>
</ul>
</div>
</div>
    </fieldset>   
    </div>

    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" LogoutPageUrl="~/Login.aspx" />
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" ImageHeight="100px" NavigateUrl="~/CreateAccount.aspx">Create an Account</asp:HyperLink>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Account/ChangePassword.aspx">Change your Password</asp:HyperLink>
            </LoggedInTemplate>
        </asp:LoginView>
        <br />
        </div>
        
    </form>
    
    </asp:Content>

