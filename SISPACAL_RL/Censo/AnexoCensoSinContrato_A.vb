﻿Imports SISPACAL.DL

Public Class AnexoCensoSinContrato_A

    Private mID_CENSO As Integer
    Private mZONA As String
    Private mSUB_ZONA As String
    Private mCODI_DEPTO As String
    Private mCODI_MUNI As String
    Private mCODI_CANTON As String
    Private mCODIPROVEE As String
    Private mCODISOCIO As String
    Private mES_CIERRE As Boolean

    Public Sub CargarDatos(ByVal ID_CENSO As Integer, ByVal ZONA As String, ByVal SUB_ZONA As String, ByVal CODI_DEPTO As String, ByVal CODI_MUNI As String, ByVal CODI_CANTON As String, ByVal CODIPROVEE As String, ByVal CODISOCIO As String)
        Me.CensoTableAdapter1.FillBy(Me.DS_SIGESTA1.CENSO, ID_CENSO, ZONA, SUB_ZONA, CODI_DEPTO, CODI_MUNI, CODI_CANTON, CODIPROVEE, CODISOCIO)
        mID_CENSO = ID_CENSO
        mZONA = ZONA
        mSUB_ZONA = SUB_ZONA
        mCODI_DEPTO = CODI_DEPTO
        mCODI_MUNI = CODI_MUNI
        mCODI_CANTON = CODI_CANTON
        mCODIPROVEE = CODIPROVEE
        mCODISOCIO = CODISOCIO
        mES_CIERRE = False
        Me.DisplayName = "CENSO DE CAÑA (LOTE CONTRATADO MZ - TC)"
    End Sub
    Public Sub CargarCierreZafra(ByVal ID_CENSO As Integer, ByVal ZONA As String, ByVal SUB_ZONA As String, ByVal CODI_DEPTO As String, ByVal CODI_MUNI As String, ByVal CODI_CANTON As String, ByVal CODIPROVEE As String, ByVal CODISOCIO As String)
        Me.CensoTableAdapter1.FillPorLoteCierreZafra(Me.DS_SIGESTA1.CENSO, ID_CENSO, ZONA, SUB_ZONA, CODI_DEPTO, CODI_MUNI, CODI_CANTON, CODIPROVEE, CODISOCIO)
        mID_CENSO = ID_CENSO
        mZONA = ZONA
        mSUB_ZONA = SUB_ZONA
        mCODI_DEPTO = CODI_DEPTO
        mCODI_MUNI = CODI_MUNI
        mCODI_CANTON = CODI_CANTON
        mCODIPROVEE = CODIPROVEE
        mCODISOCIO = CODISOCIO
        mES_CIERRE = True
        Me.DisplayName = "CENSO DE CAÑA (LOTE CONTRATADO MZ - TC)"
    End Sub

    Private Sub ReportFooter_BeforePrint(sender As Object, e As System.Drawing.Printing.PrintEventArgs) Handles ReportFooter.BeforePrint
        'Cumplimiento del censo       
        Dim da As New DS_SIGESTATableAdapters.CENSO_RESUMENTableAdapter
        Dim dt As New DS_SIGESTA.CENSO_RESUMENDataTable
        If mES_CIERRE Then
            da.FillPorCierreZafra(dt, mID_CENSO, mZONA, mSUB_ZONA, mCODI_DEPTO, mCODI_MUNI, mCODI_CANTON, mCODIPROVEE, mCODISOCIO)
        Else
            da.Fill(dt, mID_CENSO, mZONA, mSUB_ZONA, mCODI_DEPTO, mCODI_MUNI, mCODI_CANTON, mCODIPROVEE, mCODISOCIO)
        End If
        If dt IsNot Nothing AndAlso dt.Rows.Count > 0 Then
            If dt(0).MZ_CENSO > 0 Then calcMZ_ENTREGADA.Text = (dt(0).MZ_ENTREGADA / dt(0).MZ_CENSO).ToString("0%") Else calcMZ_ENTREGADA.Text = ""
            'If dt(0).TONEL_MZ_CENSO > 0 Then calcTONEL_MZ_ENTREGADA.Text = (dt(0).TONEL_MZ_ENTREGADA / dt(0).TONEL_MZ_CENSO).ToString("0%") Else calcMZ_ENTREGADA.Text = ""
            If dt(0).TONEL_CENSO > 0 Then calcTONEL_ENTREGADA.Text = (dt(0).TONEL_ENTREGADA / dt(0).TONEL_CENSO).ToString("0%") Else calcTONEL_ENTREGADA.Text = ""

            If dt(0).MZ_CENSO > 0 Then calcMZ_ENTREGAR.Text = (dt(0).MZ_ENTREGAR / dt(0).MZ_CENSO).ToString("0%") Else calcMZ_ENTREGAR.Text = ""
            'If dt(0).TONEL_MZ_CENSO > 0 Then calcTONEL_MZ_ENTREGAR.Text = (dt(0).TONEL_MZ_ENTREGAR / dt(0).TONEL_MZ_CENSO).ToString("0%") Else calcTONEL_MZ_ENTREGAR.Text = ""
            If dt(0).TONEL_CENSO > 0 Then calcTONEL_ENTREGAR.Text = (dt(0).TONEL_ENTREGAR / dt(0).TONEL_CENSO).ToString("0%") Else calcTONEL_ENTREGAR.Text = ""
        End If
    End Sub

End Class