<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CreateAccount.aspx.vb" Inherits="WebApplication5.Register"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $('.toggle-login').click(function () {
                $(this).next('#login-content').slideToggle();
                $(this).toggleClass('active');

                if ($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')
                else $(this).find('span').html('&#x25BC;')
            })
        });
</script>

<%--Handling Menu and items--%>

<script type="text/javascript" >
    $(document).ready(function () {

        $(".mainmenu").click(function () {
            var X = $(this).attr('id');
            if (X == 1) {
                $(".submenu").hide();
                $(this).attr('id', '0');
            }
            else {
                $(".submenu").show();
                $(this).attr('id', '1');
            }
        });

        //Mouse click on sub menus
        $(".submenu").mouseup(function () {
            return false
        });

        //Mouse click on my account link
        $(".mainmenu").mouseup(function () {
            return false
        });


        //On Document Click
        $(document).mouseup(function () {
            $(".submenu").hide();
            $(".mainmenu").attr('id', '');
        });
    });
</script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
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
    
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" autocomplete="off" ContinueDestinationPageUrl="~/Welcome.aspx">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" >
                    <CustomNavigationTemplate >
                        <table border="0" cellspacing="5" style="width:100%;height:100%;">
                            <tr align="right">
                                <td align="right" colspan="0">
                                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Create User" ValidationGroup="CreateUserWizard1"  autocomplete="off"/>
                                </td>
                            </tr>
                        </table>
                    </CustomNavigationTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
            <FinishNavigationTemplate>
                <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
            </FinishNavigationTemplate>
            <StartNavigationTemplate>
                <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
            </StartNavigationTemplate>
            <StepNavigationTemplate>
                <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
            </StepNavigationTemplate>
        </asp:CreateUserWizard>
    
    </div>
    </form>
</body>
</html>
