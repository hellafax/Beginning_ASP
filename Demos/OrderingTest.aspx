<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="OrderingTest.aspx.cs" Inherits="Demos_OrderingTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <meta charset="utf-8" />
  <title>jQuery UI Sortable - Default functionality</title>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <style>
  #cpMainContent_BulletedList1 { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  #cpMainContent_BulletedList1 li { margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; font-size: 1.4em; height: 18px; }
  #cpMainContent_BulletedList1 li span { position: absolute; margin-left: -1.3em; }
  </style>
  <script>
      $(function () {
          $("#cpMainContent_BulletedList1").sortable();
          $("#cpMainContent_BulletedList1").disableSelection();
      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    This is a test page to show jQuery Ordering, from a list which is populated from ASP.NET controls.
    <div class="dataEntry">
        <asp:TextBox ID="TextBox1" runat="server">Enter Text Here</asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Add to List" OnClick="Button1_Click" />
    </div>
    <div id="sortableListbox">
        <asp:BulletedList ID="BulletedList1" CssClass="sortableList" bulletstyle="numbered" runat="server">
            <asp:ListItem>TACO</asp:ListItem>
            <asp:ListItem>Burrito</asp:ListItem>
        </asp:BulletedList>
       
    </div>

    <%-- 
<ul id="sortableList2">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowtihmilforck-2-n-s"></span>Item 4</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 5</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 6</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 7</li>
</ul>
         --%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">

</asp:Content>

