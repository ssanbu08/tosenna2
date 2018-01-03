<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Holidays.aspx.cs" Inherits="SchoolNet.Holidays" %>
<%@ Register TagPrefix="Master" Namespace="PresentationManager.Web.UI.MasterPages" Assembly="PresentationManager.Web.UI.MasterPages" %>
 <master:content id="formData" runat="server" height="100%" width="100%">
 <table border="0" cellspacing="0" cellpadding="0" height="100%" width="100%">
  <tr width="100%">
		<td class="colheader"><span class="maintitledesign">Define National/Company Holidays for the Current Year</span></td>
	</tr>	
 <asp:PlaceHolder id="LeaveTypeTab" Runat="server" visible="true">
 <tr><td width="100%"> 
      <table width="100%" border="0" class="Partgrayblock">
            <!-- Add/Edit Leave Type -->
                    
		    <tr><td colspan="4">&nbsp;</td></tr>
		    <tr>
			    <td class="mainheadtxt">Country<font color="red">*</font></td>
			    <td class="mainheadtxt">Holiday Name(<small>Example: Spring Festival</small>)<font color="red">*</font></td>
			    <td class="mainheadtxt">Date<font color="red">*</font></td>
			    <td class="mainheadtxt">&nbsp;</td>
			 </tr>
			 <tr>
			    <td class="mainheadtxt"><asp:dropdownlist id="Tab1_CountryList" runat="server" Width="150px" TabIndex=1 CssClass="textfield"></asp:dropdownlist></td>
			    <td class="mainheadtxt"><asp:textbox id=Tab1_Name cssclass="textfield" TabIndex=2 width="200px" Maxlength="100" runat="server"></asp:textbox></td>
			    <td class="mainheadtxt" ><asp:textbox id=Tab1_Date cssclass="textfield" TabIndex=3 Maxlength="20" runat="server" initialvalue = "dd\mm\yyyy"></asp:textbox></td>		    
			    <td>&nbsp;</td>
            </tr>
            <tr> 
                <td class="validationtxt"><asp:RequiredFieldValidator runat=server ControlToValidate=Tab1_CountryList InitialValue=-1  ErrorMessage="Country is required." /></td>   
                <td class="validationtxt"><asp:RequiredFieldValidator runat=server ControlToValidate=Tab1_Name  ErrorMessage="Holiday Name is required." /></td>   
                <td class="validationtxt"><asp:RequiredFieldValidator runat=server ControlToValidate=Tab1_Date  ErrorMessage="Date is required." />
                                        <br /><asp:RegularExpressionValidator  runat=server ControlToValidate=Tab1_Date  Display="static" ValidationExpression="(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/\d{4}" ErrorMessage="Date is required DD/MM/YYYY format." />
                
                </td>                   
   			    <td><asp:Label id="Tab1_keyField" runat="server" visible=false /></td>
            </tr> 
    	
            <tr class="PartButtons" align=center>
			<td  colspan="4">
			<center>
			    <asp:button id=Holiday_Save runat="server" CausesValidation="True" CssClass="Button SaveButton" Text="Save"></asp:button>
			    &nbsp;&nbsp;&nbsp;
			    <asp:button id=Reset runat="server" CausesValidation="false" CssClass="Button ResetButton" Text="Reset"></asp:button>
			</center>
			</td>
            </tr>
             <tr>
                <td colspan="4" align=center><asp:label id="Hmessage" runat="server" visible=false /></td>
            </tr>
            <tr><td colspan="4"><hr /></td></tr>
            
            <!-- Emergency Contact Grid -->
             <tr>
                <td colspan="4">
                    <asp:DataGrid ID="Grid" CssClass="Tabular2" runat="server"  Width="100%" PageSize="5" AllowPaging="True" DataKeyField="HolidayID" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanged="Grid_PageIndexChanged" 
                                   
                      <Columns>
                            <asp:BoundColumn HeaderText="Country Name" DataField="CountryName" ItemStyle-Width="22%"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Holiday Name" DataField="HolidayName" ItemStyle-Width="50%"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Holiday Date" DataField="Holiday_Date" ItemStyle-Width="20%"></asp:BoundColumn>

                             <asp:TemplateColumn HeaderText="" ItemStyle-Width="8%">
                                    <ItemTemplate> 
                                         <asp:ImageButton ImageUrl="~/images/buttons/blue_edit1.png" name="Edit" commandName="Edit" alt="Edit" ToolTip="Edit" CausesValidation="false" runat="server" height="28" width="28" />  
                                    </ItemTemplate>
                             </asp:TemplateColumn>                    
                             <asp:TemplateColumn HeaderText="" ItemStyle-Width="8%">
                                   <ItemTemplate> 
                                      <asp:ImageButton ImageUrl="~/images/buttons/blue_delete1.png" name="Delete" commandName="Delete" alt="Delete" ToolTip="Delete" CausesValidation="false" runat="server" height="28" width="28" OnClientClick="return confirm('Are you sure you want to delete the record?');" />
                                   </ItemTemplate>
                             </asp:TemplateColumn>                                
                       </Columns>     
                        <FooterStyle CssClass="DashGridFooter" />
                        <SelectedItemStyle CssClass="DashGridSelectedItem" />
                        <PagerStyle CssClass="GridPagerItem" HorizontalAlign="Center" Mode="NumericPages" />
                        <AlternatingItemStyle CssClass="DashGridAltItem" />
                        <ItemStyle CssClass="DashGridItem" />
                        <HeaderStyle CssClass="DashGridHeader" />
                    </asp:DataGrid>        
                </td>
            </tr>
	       </table>   	 
	       
 </td>
</tr>
</asp:placeholder>
<!--  End of Tab 4 -->

</table>
	<!--   End of Data Area -->
										
</master:content>
