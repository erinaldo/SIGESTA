﻿<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ucVistaDetallePROVEEDOR_ROZA.ascx.vb" Inherits="controles_ucVistaDetallePROVEEDOR_ROZA" %>
<TABLE id="VistaDetalle" cellSpacing="0" cellPadding="0" width="100%" border="0">
	<TR runat="server" id="trID_PROVEEDOR_ROZA">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblID_PROVEEDOR_ROZA" runat="server">Id proveedor roza:</asp:label></TD>
		<TD>
			<asp:TextBox CssClass="TextoLlaveDerecha" id="txtID_PROVEEDOR_ROZA" runat="server" ReadOnly="True" Width="70px"></asp:textbox></TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trNOMBRE_PROVEEDOR_ROZA">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblNOMBRE_PROVEEDOR_ROZA" runat="server">Nombre proveedor roza:</asp:label></TD>
		<TD>
			<asp:TextBox CssClass="TextoNormalIzquierda" id="txtNOMBRE_PROVEEDOR_ROZA" runat="server" Width="300px" MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator id="rfvNOMBRE_PROVEEDOR_ROZA" runat="server" Display="Dynamic" ControlToValidate="txtNOMBRE_PROVEEDOR_ROZA" ErrorMessage="Nombre proveedor roza es Requerido"></asp:RequiredFieldValidator>
</TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trUSUARIO_CREA">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblUSUARIO_CREA" runat="server">Usuario crea:</asp:label></TD>
		<TD>
			<asp:TextBox CssClass="TextoNormalIzquierda" id="txtUSUARIO_CREA" runat="server" Width="100px" MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator id="rfvUSUARIO_CREA" runat="server" Display="Dynamic" ControlToValidate="txtUSUARIO_CREA" ErrorMessage="Usuario crea es Requerido"></asp:RequiredFieldValidator>
</TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trFECHA_CREA">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblFECHA_CREA" runat="server">Fecha crea:</asp:label></TD>
		<TD>
			<asp:TextBox id="txtFECHA_CREA" runat="server" Width="80px" CssClass="TextoNormalCentrado"></asp:TextBox>
         <asp:Label CssClass="Normal" id="lblFECHA_CREAFormato" runat="server" >(dd/mm/yyyy)</asp:Label>
         <asp:RegularExpressionValidator id="revFECHA_CREA" runat="server" ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
         ErrorMessage="FECHA_CREA tiene que ser ingresada en formato dd/mm/yyyy" ControlToValidate="txtFECHA_CREA"
         Display="Dynamic"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator id="rfvFECHA_CREA" runat="server" Display="Dynamic" ControlToValidate="txtFECHA_CREA" ErrorMessage="Fecha crea es Requerido"></asp:RequiredFieldValidator>
</TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trUSUARIO_ACT">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblUSUARIO_ACT" runat="server">Usuario act:</asp:label></TD>
		<TD>
			<asp:TextBox CssClass="TextoNormalIzquierda" id="txtUSUARIO_ACT" runat="server" Width="100px" MaxLength="100"></asp:TextBox><asp:RequiredFieldValidator id="rfvUSUARIO_ACT" runat="server" Display="Dynamic" ControlToValidate="txtUSUARIO_ACT" ErrorMessage="Usuario act es Requerido"></asp:RequiredFieldValidator>
</TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trFECHA_ACT">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblFECHA_ACT" runat="server">Fecha act:</asp:label></TD>
		<TD>
			<asp:TextBox id="txtFECHA_ACT" runat="server" Width="80px" CssClass="TextoNormalCentrado"></asp:TextBox>
         <asp:Label CssClass="Normal" id="lblFECHA_ACTFormato" runat="server" >(dd/mm/yyyy)</asp:Label>
         <asp:RegularExpressionValidator id="revFECHA_ACT" runat="server" ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((1[6-9]|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((1[6-9]|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"
         ErrorMessage="FECHA_ACT tiene que ser ingresada en formato dd/mm/yyyy" ControlToValidate="txtFECHA_ACT"
         Display="Dynamic"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator id="rfvFECHA_ACT" runat="server" Display="Dynamic" ControlToValidate="txtFECHA_ACT" ErrorMessage="Fecha act es Requerido"></asp:RequiredFieldValidator>
</TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trNIT">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblNIT" runat="server">Nit:</asp:label></TD>
		<TD>
			<asp:TextBox CssClass="TextoNormalIzquierda" id="txtNIT" runat="server" Width="100px" MaxLength="14"></asp:TextBox>
</TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trDUI">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblDUI" runat="server">Dui:</asp:label></TD>
		<TD>
			<asp:TextBox CssClass="TextoNormalIzquierda" id="txtDUI" runat="server" Width="100px" MaxLength="9"></asp:TextBox>
</TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trCREDITO_FISCAL">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblCREDITO_FISCAL" runat="server">Credito fiscal:</asp:label></TD>
		<TD>
			<asp:TextBox CssClass="TextoNormalIzquierda" id="txtCREDITO_FISCAL" runat="server" Width="100px" MaxLength="20"></asp:TextBox>
</TD>
		<TD width="10"></TD>
	</TR>
	<TR runat="server" id="trES_CONTRIBUYENTE">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="lblES_CONTRIBUYENTE" runat="server">Es contribuyente:</asp:label></TD>
		<TD>
			<asp:CheckBox id="cbxES_CONTRIBUYENTE" runat="server"></asp:CheckBox>
</TD>
		<TD width="10"></TD>
	</TR>
    <TR runat="server" id="trFACTOR_PAGO">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="Label1" runat="server">Factor de Pago:</asp:label></TD>
		<TD>
			<asp:TextBox CssClass="TextoNormalIzquierda" id="txtFACTOR_PAGO" runat="server" Width="100px" MaxLength="14"></asp:TextBox>
</TD>
		<TD width="10"></TD>
	</TR>
    <TR runat="server" id="trACTIVO">
		<TD width="10"></TD>
		<TD align="right">
			<asp:Label CssClass="Normal" id="Label2" runat="server">Activo:</asp:label></TD>
		<TD>
			<asp:CheckBox id="chkACTIVO" runat="server"></asp:CheckBox>
</TD>
		<TD width="10"></TD>
	</TR>
</TABLE>