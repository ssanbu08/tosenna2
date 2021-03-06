<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deductions.aspx.cs" Inherits="SchoolNet.Deductions" %>
<%@ Register TagPrefix="Master" Namespace="PresentationManager.Web.UI.MasterPages" Assembly="PresentationManager.Web.UI.MasterPages" %>
 <master:content id="formData" runat="server" height="100%" width="100%">
 <table border="0" cellspacing="0" cellpadding="0" height="100%" width="100%">
 <asp:PlaceHolder id="PayComponentTab" Runat="server" visible="true">
 <tr><td width="100%"> 
    <fieldset><legend>Define Deduction Components</legend>
      <table width="100%" border="0" class="Partgrayblock">
         <!-- Benefits Grid -->
             <tr>
                <td colspan="4">
                    <asp:DataGrid ID="Grid" runat="server" Width="100%" PageSize="10" AllowPaging="True" DataKeyField="PayComponentID" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanged="Grid_PageIndexChanged"  OnDeleteCommand="Grid_DeleteCommand" OnEditCommand="Grid_EditCommand" 
                    Caption='<table border="0" width="100%" cellpadding="0" cellspacing="0"><tr><td class=colheader>Employee Deduction Components List</td></tr></table>' CaptionAlign="Top">                                  
                      <Columns>
                            <asp:BoundColumn HeaderText="Deduction Component Name" DataField="PayComponentName" ItemStyle-Width="18%"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Short Name" DataField="ShortName" ItemStyle-Width="10%"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Pay Frequency" DataField="PayFrequency" ItemStyle-Width="12%"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Account Code" DataField="AccountCode" ItemStyle-Width="10%"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Description" DataField="AccountDescription" ItemStyle-Width="18%"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="Status" Visible=false DataField="Status" ItemStyle-Width="0%"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Actions" ItemStyle-Width="12%">
                                <ItemTemplate> 
                                     <asp:LinkButton name="Edit" commandName="Edit" Text="Edit" CausesValidation="false" runat="server"  />                                                                  
                                     &nbsp;&nbsp;<asp:LinkButton name="Delete" commandName="Delete" CausesValidation="false" OnClientClick="return confirm('Are you sure to delete this record');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                      </Columns>     
                        <FooterStyle CssClass="GridFooter" />
                        <SelectedItemStyle CssClass="GridSelectedItem" />
                        <PagerStyle CssClass="GridPagerItem" HorizontalAlign="Center" Mode="NumericPages" />
                        <AlternatingItemStyle CssClass="GridAltItem" />
                        <ItemStyle CssClass="GridItem" />                
                       <HeaderStyle CssClass="GridHeader" />
                   </asp:DataGrid>
         
                </td>
            </tr>
            <tr><td colspan="4"><hr /></td></tr>                         
		    <tr><td colspan="4">&nbsp;</td></tr>
		    <tr>
			    <td class="mainheadtxt">Component Name&nbsp;<small>(Example: HRA Advance)</small><font color="red">*</font></td>
			    <td class="mainheadtxt">Short Name<font color="red">*</font></td>
			    <td class="mainheadtxt">Pay Fequency</td>
			    <td class="mainheadtxt">Status</td>
		    </tr>
		    <tr>
			    <td class="mainheadtxt"><asp:textbox id=Tab1_ComponentName cssclass="textfield" TabIndex=1 Maxlength="50" width="220px" runat="server"></asp:textbox></td>
			    <td class="mainheadtxt"> <asp:textbox id=Tab1_ShortName cssclass="textfield" TabIndex=2 Maxlength="4" size="15" width="150px" runat="server"></asp:textbox></td>
			    <td class="mainheadtxt"><asp:dropdownlist id="Tab1_PayFrequencyList" TabIndex=3 AutoPostBack=false runat="server" Width="160Px" CssClass="textfield"></asp:dropdownlist></td>
                <td class="mainheadtxt"><asp:RadioButton id="Radio1" Text="Active"  Checked="True" GroupName="RadioGroup1" runat="server" />&nbsp;&nbsp;
                                        <asp:RadioButton id="Radio2" Text="InActive" GroupName="RadioGroup1" runat="server"/>
             </td>	            			    
		   </tr>
		   
            <tr>
		        <td class="validationtxt"><asp:RequiredFieldValidator runat=server ControlToValidate=Tab1_ComponentName  ErrorMessage="Pay Component Name is required." /></td>   
		        <td class="validationtxt"><asp:RequiredFieldValidator runat=server ControlToValidate=Tab1_ShortName  ErrorMessage="Short Name (4 chars) is required." /></td>   		         		        		        
		        <td class="validationtxt"><asp:Label id="Tab1_KeyField" runat="server" visible=false /></td>                           
                <td class="validationtxt"></td> 		    
		    </tr>
            <tr>
			    <td class="mainheadtxt">Account Code</td>
			    <td class="mainheadtxt" colspan="2">Description</td>
			    <td class="mainheadtxt">&nbsp;</td>
		    </tr>
		    <tr>
			    <td class="mainheadtxt"><asp:textbox id=Tab1_AccountCode cssclass="textfield" TabIndex=5 Maxlength="30"  runat="server"></asp:textbox></td>
			    <td class="mainheadtxt" colspan="2"> <asp:textbox id=Tab1_Description cssclass="textfield" TabIndex=6 Maxlength="100" width="300px" runat="server"></asp:textbox></td>
			    <td class="mainheadtxt">&nbsp;</td>
		   </tr>		
		   		    
	        <tr><td colspan="4"><hr /></td></tr>
            <tr  align=center>
			    <td  valign="middle" colspan="4"><center><asp:button id=PayComp_Save runat="server" BorderStyle="Ridge" CausesValidation="True" CssClass="button" BorderWidth="1px" Text="Save"></asp:button>
			                                               &nbsp;&nbsp;&nbsp;<asp:button id=Reset runat="server" BorderStyle="Ridge" CausesValidation="false" CssClass="button" BorderWidth="1px" Text="Reset"></asp:button> 
			    </center></td>
            </tr>	
             <tr>
                <td colspan="4" align=center><asp:label id="LTmessage" runat="server" visible=false /></td>
            </tr>
            <tr><td colspan="4"><hr /></td></tr>
            
           </table>   	 
	   </fieldset>
 </td>
</tr>
</asp:placeholder>
</table>								
</master:content>

