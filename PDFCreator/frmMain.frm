VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   Caption         =   "PDFCreator"
   ClientHeight    =   3765
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   9510
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "frmMain.frx":27A2
   ScaleHeight     =   3765
   ScaleWidth      =   9510
   StartUpPosition =   3  'Windows-Standard
   Visible         =   0   'False
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   1155
      Top             =   2940
   End
   Begin MSComctlLib.ImageList imlSystray 
      Left            =   3675
      Top             =   2940
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":2D2C
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":32C6
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":3860
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.TextBox txtEmailAddress 
      Appearance      =   0  '2D
      Height          =   285
      Left            =   4410
      TabIndex        =   2
      Top             =   2940
      Width           =   2325
   End
   Begin MSComctlLib.ImageList imlTlb 
      Left            =   2940
      Top             =   2940
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   18
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":3DFA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":4394
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":492E
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":4EC8
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5462
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":59FC
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":5F96
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":6530
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":6ACA
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":7064
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":75FE
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":7B98
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":7F32
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":82CC
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":8666
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":8A00
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":8D9A
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":9134
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   105
      Top             =   2940
   End
   Begin MSComctlLib.StatusBar stb 
      Align           =   2  'Unten ausrichten
      Height          =   270
      Left            =   0
      TabIndex        =   1
      Top             =   3495
      Width           =   9510
      _ExtentX        =   16775
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView lsv 
      Height          =   1890
      Left            =   105
      TabIndex        =   0
      Top             =   600
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   3334
      LabelEdit       =   1
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      OLEDragMode     =   1
      OLEDropMode     =   1
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   0
      OLEDragMode     =   1
      OLEDropMode     =   1
      NumItems        =   0
   End
   Begin MSComctlLib.Toolbar tlb 
      Align           =   1  'Oben ausrichten
      Height          =   360
      Index           =   0
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   9510
      _ExtentX        =   16775
      _ExtentY        =   635
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      Style           =   1
      _Version        =   393216
   End
   Begin MSComctlLib.Toolbar tlb 
      Align           =   1  'Oben ausrichten
      Height          =   330
      Index           =   1
      Left            =   0
      TabIndex        =   4
      Top             =   360
      Width           =   9510
      _ExtentX        =   16775
      _ExtentY        =   582
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      Style           =   1
      _Version        =   393216
   End
   Begin VB.PictureBox pic 
      BackColor       =   &H80000005&
      BorderStyle     =   0  'Kein
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   15
      Left            =   6240
      ScaleHeight     =   15
      ScaleWidth      =   15
      TabIndex        =   5
      Top             =   3000
      Visible         =   0   'False
      Width           =   15
   End
   Begin MSComctlLib.ImageList imlLsv 
      Left            =   6960
      Top             =   2880
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":96CE
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":9C68
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Image imgPaypal 
      Height          =   465
      Left            =   1890
      Picture         =   "frmMain.frx":A202
      Top             =   2940
      Visible         =   0   'False
      Width           =   930
   End
   Begin VB.Menu mnPrinterMain 
      Caption         =   "Printer"
      Begin VB.Menu mnPrinter 
         Caption         =   "Printers"
         Index           =   0
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "-"
         Index           =   1
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "Printer stop "
         Index           =   2
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "-"
         Index           =   3
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "Options"
         Index           =   4
         Shortcut        =   ^O
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "-"
         Index           =   5
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "Logging"
         Index           =   6
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "Logfile"
         Index           =   7
         Shortcut        =   ^L
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "-"
         Index           =   8
      End
      Begin VB.Menu mnPrinter 
         Caption         =   "Close"
         Index           =   9
      End
   End
   Begin VB.Menu mnDocumentMain 
      Caption         =   "Document"
      Begin VB.Menu mnDocument 
         Caption         =   "Print"
         Index           =   0
         Shortcut        =   ^P
      End
      Begin VB.Menu mnDocument 
         Caption         =   "-"
         Index           =   1
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Add"
         Index           =   2
         Shortcut        =   ^{INSERT}
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Add from clipboard"
         Index           =   3
         Shortcut        =   ^V
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Delete"
         Index           =   4
         Shortcut        =   {DEL}
      End
      Begin VB.Menu mnDocument 
         Caption         =   "-"
         Index           =   5
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Top"
         Index           =   6
         Shortcut        =   ^T
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Up"
         Index           =   7
         Shortcut        =   ^U
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Down"
         Index           =   8
         Shortcut        =   ^D
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Bottom"
         Index           =   9
         Shortcut        =   ^B
      End
      Begin VB.Menu mnDocument 
         Caption         =   "-"
         Index           =   10
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Combine"
         Index           =   11
         Shortcut        =   ^C
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Combine all"
         Index           =   12
         Shortcut        =   ^A
      End
      Begin VB.Menu mnDocument 
         Caption         =   "-"
         Index           =   13
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Save"
         Index           =   14
         Shortcut        =   ^S
         Visible         =   0   'False
      End
      Begin VB.Menu mnDocument 
         Caption         =   "-"
         Index           =   15
         Visible         =   0   'False
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Combine all and send"
         Index           =   16
         Shortcut        =   ^F
      End
      Begin VB.Menu mnDocument 
         Caption         =   "Send"
         Index           =   17
         Shortcut        =   ^E
      End
   End
   Begin VB.Menu mnViewMain 
      Caption         =   "View"
      Begin VB.Menu mnView 
         Caption         =   "Toolbars"
         Index           =   0
         Begin VB.Menu mnViewToolbars 
            Caption         =   "Standard"
            Index           =   0
         End
         Begin VB.Menu mnViewToolbars 
            Caption         =   "Email"
            Index           =   1
         End
      End
      Begin VB.Menu mnView 
         Caption         =   "-"
         Index           =   1
      End
      Begin VB.Menu mnView 
         Caption         =   "Statusbar"
         Checked         =   -1  'True
         Index           =   2
      End
   End
   Begin VB.Menu mnHelpMain 
      Caption         =   "?"
      Begin VB.Menu mnHelp 
         Caption         =   "?"
         Index           =   0
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnHelp 
         Caption         =   "-"
         Index           =   1
      End
      Begin VB.Menu mnHelp 
         Caption         =   "Paypal"
         Index           =   2
      End
      Begin VB.Menu mnHelp 
         Caption         =   "-"
         Index           =   3
      End
      Begin VB.Menu mnHelp 
         Caption         =   "Homepage"
         Index           =   4
      End
      Begin VB.Menu mnHelp 
         Caption         =   "PDFCreator on Sourceforge"
         Index           =   5
      End
      Begin VB.Menu mnHelp 
         Caption         =   "Check Update"
         Index           =   6
      End
      Begin VB.Menu mnHelp 
         Caption         =   "-"
         Index           =   7
      End
      Begin VB.Menu mnHelp 
         Caption         =   "Info"
         Index           =   8
         Shortcut        =   ^I
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private WithEvents m_frmSysTray As frmSysTray
Attribute m_frmSysTray.VB_VarHelpID = -1

Private Const TimerIntervall = 500 ' 500

Private Printjobs As Collection

Public InTimer1 As Boolean
Public InAutoSave As Boolean
Public OldPrinter As String

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If KeyCode = vbKeyF1 Then
50020   KeyCode = 0
50030   Call HTMLHelp_ShowTopic("html\pdfcreator-user-manual.html")
50040  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "Form_KeyDown")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub Form_Load()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Options.PrinterStop = 0
50020  IsFrmMainLoaded = True
50030  Me.KeyPreview = True
50040
50050  If App.StartMode = vbSModeAutomation Then
50060   If ProgramIsVisible = False Then
50070    frmMain.Visible = False
50080   End If
50090   WindowState = ProgramWindowState
50100  End If
50110
50120  InitProgram
50130
50140  ShowPaypalMenuimage
50150  SetGSRevision
50160
50170  If Options.DisableUpdateCheck = 1 Then
50180   mnHelp(6).Enabled = False
50190  End If
50200
50210  If NoProcessing = True Or Options.NoProcessingAtStartup = 1 Or NoProcessingAtStartup = True Then
50220   SetMenuPrinterStop
50230  End If
50240  If PrinterStop = True Then
50250   mnPrinter(2).Checked = True
50260  End If
50270  If Options.OptionsEnabled = 0 Then
50280   mnPrinter(4).Enabled = False
50290   tlb(0).Buttons(2).Enabled = False
50300  End If
50310  If Options.OptionsVisible = 0 Then
50320   tlb(0).Buttons(2).Visible = False
50330   mnPrinter(4).Visible = False
50340   mnPrinter(5).Visible = False
50350  End If
50360
50370  CheckPrintJobs
50380  Call SetDocMenuAndToolbar
50390  If (Options.Toolbars And 1) = 1 Then
50400    tlb(0).Visible = True
50410   Else
50420    tlb(0).Visible = False
50430  End If
50440  If (Options.Toolbars And 2) = 2 Then
50450    tlb(1).Visible = True
50460    txtEmailAddress.Visible = True
50470   Else
50480    tlb(1).Visible = False
50490    txtEmailAddress.Visible = False
50500  End If
50510  If PDFCreatorPrinter = False Or NoProcessing = True Or _
  Options.NoProcessingAtStartup = 1 Or (PDFCreatorPrinter = True And lsv.ListItems.Count > 1) Then
50530   If ProgramIsVisible Then
50540    Visible = True
50550    SetTopMost frmMain, True, True
50560    SetTopMost frmMain, False, True
50570    SetActiveWindow frmMain.hwnd
50580   End If
50590  End If
50600
50610  InTimer1 = False
50620  Timer1.Interval = TimerIntervall '500
50630  Timer1.Enabled = True
50640
50650  InAutoSave = False
50660  ProgramIsStarted = True
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "Form_Load")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub Form_Resize()
 On Error Resume Next

 Static isInTaskBar As Boolean

 ProgramWindowState = Me.WindowState
 If Me.WindowState = vbMinimized Then
  isInTaskBar = True
  FormInTaskbar Me, False, False, False
  SystrayEnter
  Exit Sub
 End If
 SysTrayLeave
 If isInTaskBar Then
   isInTaskBar = False
   FormInTaskbar Me, True, False, True
 End If
 If Me.Height < 3000 Then
  Me.Height = 3000
  Exit Sub
 End If
 If Me.Width < 3000 Then
  Me.Width = 3000
  Exit Sub
 End If
 With lsv
  .Top = GetVisibleToolbars * tlb(0).Height
  .Left = 0
  .Width = Me.Width - 125
  .Height = Me.ScaleHeight - Abs(stb.Visible) * stb.Height - GetVisibleToolbars * tlb(0).Height
 End With
 stb.Panels("Status").Width = Me.Width - 150 - stb.Panels("Percent").Width _
  - stb.Panels("GhostscriptRevision").Width
 If PDFCreatorPrinter Or (LenB(InputFilename) > 0 And IFIsPS = True) Then
  If lsv.ListItems.Count <= 1 And PrinterStop = False Then
   Me.Visible = False
  End If
 End If
 With txtEmailAddress
  .Width = tlb(1).Buttons("emailAddress").Width
  .Top = tlb(1).Top + tlb(1).Buttons("emailAddress").Top + (tlb(1).Height - .Height) / 2
  .Left = tlb(1).Buttons("emailAddress").Left
 End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  TerminateProgram
50020  ShutDown = False
50030  IsFrmMainLoaded = False
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "Form_Unload")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub InitProgram()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Printing = False
50020
50030  Set Printjobs = New Collection
50040
50050  Set lsv.SmallIcons = imlLsv
50060
50070  stb.Panels.Clear
50080  stb.Panels.Add , "Status", ""
50090  stb.Panels.Add , "GhostscriptRevision", ""
50100  stb.Panels.Add , "Percent", ""
50110  stb.Panels("Percent").Width = 1000
50120  stb.Panels("GhostscriptRevision").Width = 1800
50130
50140  With lsv
50150   .View = lvwReport
50160   .FullRowSelect = True
50170   .HideSelection = False
50180   .ColumnHeaders.Clear
50190   .ColumnHeaders.Add , "Documenttitle", "Documenttitle", 2000
50200   .ColumnHeaders.Add , "Status", "Status", 1000
50210   .ColumnHeaders.Add , "Date", "Created on", 1700
50220   .ColumnHeaders.Add , "Size", "Size", 1500, lvwColumnRight
50230   .ColumnHeaders.Add , "Filename", "Filename", lsv.Width - 3500
50240  End With
50250
50260  With Options
50270   SetFontControls Me.Controls, .ProgramFont, .ProgramFontCharset, .ProgramFontSize
50280  End With
50290
50300  ChangeLanguage
50310  If Logging Then
50320    mnPrinter(6).Checked = True
50330   Else
50340    mnPrinter(6).Checked = False
50350  End If
50360
50370  InitToolbar
50380
50390  If Options.DisableEmail <> 0 Then
50400   txtEmailAddress.Enabled = False
50410   txtEmailAddress.BackColor = Me.BackColor
50420  End If
50430
50440  Form_Resize
50450
50460  Set colInfoSpoolFiles = New Collection
50470
50480  DoEvents
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "InitProgram")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub TerminateProgram()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim files As Collection, i As Long, tStrf() As String
50020
50030  ShutDown = True
50040
50050  Timer1.Enabled = False
50060
50070  Set Printjobs = Nothing
50080
50090  UnloadDLLComplete GsDllLoaded
50100
50110  IfLoggingWriteLogfile "PDFCreator Program End"
50120
50130  SysTrayLeave
50140
50150  If App.StartMode = vbSModeStandalone Then
50160   InstanceCounter = InstanceCounter - 1
50170  End If
50180
50190  If Restart = True Then
50200   ShellExecute 0, vbNullString, """" & PDFCreatorApplicationPath & "PDFCreator.exe" & """", "-DELAYEDSTART=300", PDFCreatorApplicationPath, 1
50210  End If
50220
50230  If Not mutexLocal Is Nothing Then
50240   mutexLocal.CloseMutex
50250  End If
50260
50270  If Not mutexGlobal Is Nothing Then
50280   mutexGlobal.CloseMutex
50290  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "TerminateProgram")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub SetLanguageMenu()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long, Version As String, reg As clsRegistry
50020
50030  SetHelpfile
50040
50050  With LanguageStrings
50060   Set reg = New clsRegistry
50070   With reg
50080    .hkey = HKEY_LOCAL_MACHINE
50090    .KeyRoot = "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & Uninstall_GUID
50100    Version = .GetRegistryValue("ApplicationVersion")
50110   End With
50120   Set reg = Nothing
50130   Caption = App.Title & " - " & .CommonTitle
50140   If InstalledAsServer Then
50150    Caption = App.Title & " - " & .CommonTitle & " (Server)"
50160   End If
50170
50180   mnPrinterMain.Caption = .DialogPrinter
50190   Dim m As String
50200   m = mnPrinter(0).Caption
50210   mnPrinter(0).Caption = .DialogPrinterPrinters
50220   mnPrinter(2).Caption = .DialogPrinterPrinterStop
50230   mnPrinter(4).Caption = .DialogPrinterOptions
50240   mnPrinter(6).Caption = .DialogPrinterLogging
50250   mnPrinter(7).Caption = .DialogPrinterLogfile
50260   mnPrinter(9).Caption = .DialogPrinterClose
50270
50280   mnDocumentMain.Caption = .DialogDocument
50290   mnDocument(0).Caption = .DialogDocumentPrint
50300   mnDocument(2).Caption = .DialogDocumentAdd
50310   mnDocument(3).Caption = .DialogDocumentAddFromClipboard
50320   mnDocument(4).Caption = .DialogDocumentDelete
50330
50340   mnDocument(6).Caption = .DialogDocumentTop
50350   mnDocument(7).Caption = .DialogDocumentUp
50360   mnDocument(8).Caption = .DialogDocumentDown
50370   mnDocument(9).Caption = .DialogDocumentBottom
50380
50390   mnDocument(11).Caption = .DialogDocumentCombine
50400   mnDocument(12).Caption = .DialogDocumentCombineAll
50410
50420   mnDocument(14).Caption = .DialogDocumentSave
50430
50440   mnDocument(16).Caption = .DialogDocumentCombineAllSend
50450   mnDocument(17).Caption = .DialogDocumentSend
50460
50470   mnViewMain.Caption = .DialogView
50480   mnView(0).Caption = .DialogViewToolbars
50490   mnView(2).Caption = .DialogViewStatusbar
50500   mnViewToolbars(0).Caption = .DialogViewToolbarsStandard
50510   mnViewToolbars(1).Caption = .DialogViewToolbarsEmail
50520
50530   mnHelpMain.Caption = .DialogInfo
50540   mnHelp(2).Caption = .DialogInfoPaypal
50550   mnHelp(4).Caption = .DialogInfoHomepage
50560   mnHelp(5).Caption = .DialogInfoPDFCreatorSourceforge
50570   mnHelp(6).Caption = .DialogInfoCheckUpdates
50580   mnHelp(8).Caption = .DialogInfoInfo
50590
50600   lsv.ColumnHeaders("Date").Text = .ListDate
50610   lsv.ColumnHeaders("Documenttitle").Text = .ListDocumenttitle
50620   lsv.ColumnHeaders("Filename").Text = .ListFilename
50630   lsv.ColumnHeaders("Size").Text = .ListSize
50640   lsv.ColumnHeaders("Status").Text = .ListStatus
50650
50660   txtEmailAddress.ToolTipText = .DialogEmailAddress
50670  End With
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SetLanguageMenu")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub lsv_DblClick()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  DocumentPrint
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "lsv_DblClick")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub lsv_KeyPress(KeyAscii As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Static c As Byte, Str2 As String
50020  Dim Str1 As String
50030  Str1 = Chr$(13) & Chr$(10) & Chr$(32) & Chr$(80) & Chr$(68) & Chr$(70) & Chr$(67) & Chr$(114) & Chr$(101) & Chr$(97) & Chr$(116) & Chr$(111) & Chr$(114) & Chr$(32) & Chr$(45) & Chr$(32) & Chr$(119) & Chr$(119) & Chr$(119) & Chr$(46) & Chr$(112) & Chr$(100) & Chr$(102) & Chr$(102) & Chr$(111) & Chr$(114) & Chr$(103) & Chr$(101) & Chr$(46) & Chr$(111) & Chr$(114) & Chr$(103)
50040  If Len(Str2) < 10 Then
50050    Str2 = Str2 & UCase$(Chr$(KeyAscii))
50060   Else
50070    Str2 = Mid$(Str2 & UCase$(Chr$(KeyAscii)), 2, 10)
50080  End If
50090  If UCase$(Mid$(Str1, 4, 10)) = Str2 Then
50100    With pic
50110     .Height = lsv.Height
50120     .Width = lsv.Width
50130     .Top = lsv.Top
50140     .Left = lsv.Left
50150     .Cls
50160     .AutoRedraw = True
50170    End With
50180    pic.Print Str1
50190    lsv.Picture = pic.Image
50200   Else
50210    lsv.Picture = Nothing
50220  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "lsv_KeyPress")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub lsv_KeyUp(KeyCode As Integer, Shift As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  SetDocMenuAndToolbar
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "lsv_KeyUp")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub lsv_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
 On Error Resume Next
 SetDocMenuAndToolbar
 If Button = 2 Then
  PopupMenu mnDocumentMain, , x, Y
 End If
 If Shift = 4 Then
  frmFileinfo.InfoSpoolFileName = lsv.SelectedItem.SubItems(4)
  frmFileinfo.Show , Me
 End If
End Sub

Private Sub lsv_OLEDragDrop(Data As MSComctlLib.DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, Y As Single)
 Dim i As Long, aLen As Double, tLen As Double, aw As Long, Ext As String, _
  DefaultPrintername As String, OnlyPsAndValidGraphicFiles As Boolean, ivgf As Boolean
 Dim File As String, psFileName As String, spoolDirectory As String, strGUID As String
 On Error Resume Next
 If Data.GetFormat(vbCFFiles) Then
  DefaultPrintername = ""
  Me.MousePointer = vbHourglass
  If Data.files.Count = 1 Then
    SplitPath Data.files.Item(1), , , , , Ext
    ivgf = IsValidGraphicFile(Data.files.Item(1))
    If IsPostscriptFile(Data.files.Item(1)) = True Or UCase$(Ext) = "PS" Or UCase$(Ext) = "EPS" Or ivgf Then
      spoolDirectory = GetPDFCreatorSpoolDirectory
      strGUID = GetGUID
      File = spoolDirectory & strGUID
      psFileName = File & ".ps"
      If ivgf Then
        Image2PS Data.files.Item(1), psFileName
       Else
        FileCopy Data.files.Item(1), psFileName
      End If
      CreateInfoSpoolFile psFileName, File & ".inf", , Data.files.Item(1)
     Else
      If UCase$(Printer.DeviceName) <> UCase$(GetPDFCreatorPrintername) Then
       If Options.NoConfirmMessageSwitchingDefaultprinter = 0 Then
        If ChangeDefaultprinter = False Then
         frmSwitchDefaultprinter.Show vbModal, Me
         If ChangeDefaultprinter = False Then
          Me.MousePointer = vbNormal
          Exit Sub
         End If
        End If
       End If
      End If
      DefaultPrintername = Printer.DeviceName
      SetDefaultprinterInProg GetPDFCreatorPrintername
      ShellAndWait Me.hwnd, "print", Data.files.Item(1), "", vbNullChar, wHidden, WCTermination, 60000, True
      If DefaultPrintername <> vbNullString Then
       SetDefaultprinterInProg DefaultPrintername
      End If
    End If
    DoEvents
   Else
    OnlyPsAndValidGraphicFiles = True
    For i = 1 To Data.files.Count
     SplitPath Data.files.Item(i), , , , , Ext
     If UCase$(Ext) <> "PS" And UCase$(Ext) <> "EPS" And IsValidGraphicFile(Data.files.Item(i)) = False Then
      OnlyPsAndValidGraphicFiles = False
      Exit For
     End If
    Next i
    If UCase$(Printer.DeviceName) <> UCase$(GetPDFCreatorPrintername) And OnlyPsAndValidGraphicFiles = False Then
     If ChangeDefaultprinter = False Then
      aw = MsgBox(LanguageStrings.MessagesMsg35, vbOKCancel + vbInformation)
      If aw <> vbOK Then
       Me.MousePointer = vbNormal
       Exit Sub
      End If
     End If
    End If
    ChangeDefaultprinter = True
    DefaultPrintername = Printer.DeviceName
    SetDefaultprinterInProg GetPDFCreatorPrintername
    aLen = 0
    For i = 1 To Data.files.Count
     aLen = aLen + GetFileLength(Data.files.Item(i))
    Next i
    spoolDirectory = GetPDFCreatorSpoolDirectory
    For i = 1 To Data.files.Count
     If (IsPostscriptFile(Data.files.Item(i)) = True And (UCase$(Ext) = "PS" Or UCase$(Ext) = "EPS")) Or (IsValidGraphicFile(Data.files.Item(i)) = True) Then
       ivgf = IsValidGraphicFile(Data.files.Item(i))
       strGUID = GetGUID
       File = spoolDirectory & strGUID
       psFileName = File & ".ps"
       If ivgf Then
         Image2PS Data.files.Item(i), psFileName
        Else
         FileCopy Data.files.Item(i), psFileName
       End If
       CreateInfoSpoolFile psFileName, File & ".inf", , Data.files.Item(i)
      Else
       DoEvents
'       PrintDocument data.Files.item(i)
       ShellAndWait Me.hwnd, "print", Data.files.Item(i), "", vbNullChar, wHidden, WCTermination, 60000, True
       DoEvents
     End If
     tLen = tLen + GetFileLength(Data.files.Item(i))
     stb.Panels("Percent").Text = Format$(tLen / aLen, " 0.0%")
     DoEvents
    Next i
    If DefaultPrintername <> vbNullString Then
     SetDefaultprinterInProg DefaultPrintername
    End If
  End If
  Me.MousePointer = vbNormal
 End If
End Sub

Private Sub lsv_OLEDragOver(Data As MSComctlLib.DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, Y As Single, State As Integer)
 Dim i As Long, Ext As String
 On Error Resume Next
 If Data.GetFormat(vbCFFiles) Then
  Effect = ccOLEDropEffectCopy
  For i = 1 To Data.files.Count
   SplitPath Data.files.Item(i), , , , , Ext
   If IsFilePrintable(Data.files.Item(i)) = False And IsValidGraphicFile(Data.files.Item(i)) = False And (IsPostscriptFile(Data.files.Item(i)) = False _
    Or (IsPostscriptFile(Data.files.Item(i)) = True And UCase$(Ext) <> "PS" And UCase$(Ext) <> "EPS")) Then
     Effect = ccOLEDropEffectNone
     Exit Sub
   End If
  Next i
 End If
End Sub

Private Sub mnDocument_Click(Index As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim tFilename As String, cFiles As Collection, sFiles() As String, _
  i As Long, j As Long, aLen As Double, tLen As Double, aw As Long, _
  DefaultPrintername As String, OnlyPsFiles As Boolean, Ext As String, _
  Cancel As Boolean, tFilename2 As String
50050
50060  Screen.MousePointer = vbHourglass
50070  DoEvents
50081  Select Case Index
        Case 0:
50100    DocumentPrint
50110   Case 2: ' Add
50120    DocumentAdd
50130   Case 3: ' Add from clipboard
50140    DocumentAddFromClipboard
50150   Case 4: ' Delete
50160    DocumentDelete
50170   Case 6: ' Top
50180    DocumentTop
50190   Case 7: ' Up
50200    DocumentUp
50210   Case 8: ' Down
50220    DocumentDown
50230   Case 9: ' Bottom
50240    DocumentBottom
50250   Case 11: ' Combine
50260    DocumentCombine False
50270   Case 12: ' CombineAll
50280    DocumentCombine True
50290   Case 14: ' Save
50300    DocumentSave
50310   Case 16
50320    CombineAllAndSend
50330   Case 17
50340    SendEmail
50350  End Select
50360  SetDocMenuAndToolbar
50370  Screen.MousePointer = vbNormal
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "mnDocument_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub mnDocumentMain_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  SetDocMenuAndToolbar
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "mnDocumentMain_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub mnHelp_Click(Index As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim upd As clsUpdate
50021  Select Case Index
        Case 0:
50040    Call HTMLHelp_ShowTopic("html\pdfcreator-user-manual.html")
50050   Case 2:
50060    OpenDocument PaypalPDFCreator
50070   Case 4:
50080    OpenDocument Homepage
50090   Case 5:
50100    OpenDocument Sourceforge
50110   Case 6:
50120    Set upd = New clsUpdate
50130    upd.CheckForUpdates True, True
50140    SetLastUpdateCeck Now
50150   Case 8:
50160    frmAbout.Show vbModal, Me 'frmInfo.Show , Me
50170  End Select
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "mnHelp_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub mnPrinter_Click(Index As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50011  Select Case Index
        Case 0:
50030    ShowPrinters
50040   Case 2:
50050    SetMenuPrinterStop
50060   Case 4:
50070    frmOptions.Show , Me
50080   Case 6:
50090     Logging = Not Logging
50100     SetLogging Logging
50110     mnPrinter(Index).Checked = Logging
50120    If Not m_frmSysTray Is Nothing Then
50130     If mnPrinter(Index).Checked = True Then
50140       m_frmSysTray.mnuSysTray(6).Checked = True
50150      Else
50160       m_frmSysTray.mnuSysTray(6).Checked = False
50170     End If
50180    End If
50190   Case 7:
50200    frmLog.Show , Me
50210   Case 9:
50220    Unload Me
50230  End Select
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "mnPrinter_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub mnView_Click(Index As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50011  Select Case Index
        Case 2:
50030    stb.Visible = Not stb.Visible
50040    mnView(2).Checked = Not mnView(2).Checked
50050    Form_Resize
50060  End Select
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "mnView_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub mnViewToolbars_Click(Index As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  mnViewToolbars(Index).Checked = Not mnViewToolbars(Index).Checked
50021  Select Case Index
        Case 0
50040    If mnViewToolbars(Index).Checked Then
50050      Options.Toolbars = Options.Toolbars Or 1
50060     Else
50070      If (Options.Toolbars And 2) = 2 Then
50080        Options.Toolbars = 2
50090       Else
50100        Options.Toolbars = 0
50110      End If
50120    End If
50130   Case 1
50140    If mnViewToolbars(Index).Checked Then
50150      Options.Toolbars = Options.Toolbars Or 2
50160     Else
50170      If (Options.Toolbars And 1) = 1 Then
50180        Options.Toolbars = 1
50190       Else
50200        Options.Toolbars = 0
50210      End If
50220    End If
50230  End Select
50240  SaveOption Options, "Toolbars"
50250  DrawToolbars
50260  SetDocMenuAndToolbar
50270  Form_Resize
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "mnViewToolbars_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub stb_PanelClick(ByVal Panel As MSComctlLib.Panel)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim Str1 As String
50020  Static b1 As Boolean, b2 As Boolean
50030
50040  If Not b1 Then
50050   With pic
50060    .Height = lsv.Height
50070    .Width = lsv.Width
50080    .Top = lsv.Top
50090    .Left = lsv.Left
50100    .Cls
50110    .AutoRedraw = True
50120   End With
50130   Str1 = Chr$(13) & Chr$(10) & Chr$(32) & Chr$(80) & Chr$(68) & Chr$(70) & Chr$(67) & Chr$(114) & Chr$(101) & Chr$(97) & Chr$(116) & Chr$(111) & Chr$(114) & Chr$(32) & Chr$(45) & Chr$(32) & Chr$(119) & Chr$(119) & Chr$(119) & Chr$(46) & Chr$(112) & Chr$(100) & Chr$(102) & Chr$(102) & Chr$(111) & Chr$(114) & Chr$(103) & Chr$(101) & Chr$(46) & Chr$(111) & Chr$(114) & Chr$(103)
50140   pic.Print Str1
50150   b1 = True
50160  End If
50170
50180  If UCase$(Panel.key) = UCase(stb.Panels(3).key) Then
50190   If lsv.ListItems.Count = 17 Then
50200    If Not b2 Then
50210      Set lsv.Picture = pic.Image
50220     Else
50230      lsv.Picture = Nothing
50240    End If
50250    b2 = Not b2
50260   End If
50270  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "stb_PanelClick")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub CreateMutexIfNecessary()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If mutexLocal Is Nothing Then
50020   Set mutexLocal = New clsMutex
50030  End If
50040  If mutexLocal.MutexHandle = 0 Then
50050   ' Create a lokal mutex
50060    mutexLocal.CreateMutex PDFCreator_GUID
50070  End If
50080  If mutexGlobal Is Nothing Then
50090   Set mutexGlobal = New clsMutex
50100  End If
50110  If mutexGlobal.MutexHandle = 0 Then
50120  ' Create a global mutex
50130    mutexGlobal.CreateMutex "Global\" & PDFCreator_GUID & "_Global"
50140  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "CreateMutexIfNecessary")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub CheckClipboardForBitmap()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If Clipboard.GetFormat(vbCFBitmap) = True Then
50020    mnDocument(3).Enabled = True
50030    tlb(0).Buttons(7).Enabled = True
50040   Else
50050    mnDocument(3).Enabled = False
50060    tlb(0).Buttons(7).Enabled = False
50070  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "CheckClipboardForBitmap")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  PrinterStop = True
50020  PrintSelectedJobs = False
50030  If Timer3.Enabled = True Then
50040   Timer3.Enabled = False
50050   If In_eActionTimer = True Then
50060    If ShutDown = False Then
50070     ShutDown = True
50080    End If
50090    Cancel = True
50100   End If
50110  End If
50120  If Timer1.Enabled = True Then
50130   Timer1.Enabled = False
50140   If InTimer1 Then
50150    If ShutDown = False Then
50160     ShutDown = True
50170    End If
50180    Cancel = True
50190   End If
50200  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "Form_QueryUnload")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub Timer1_Timer()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If InTimer1 Then
50020   Exit Sub
50030  End If
50040
50050  InTimer1 = True
50060
50070  CreateMutexIfNecessary
50080  CheckClipboardForBitmap
50090
50100  DoEvents
50110  If FileExists(PDFCreatorApplicationPath & "Unload.tmp") = True Or Restart = True Then
50120   InTimer1 = False
50130   Unload Me
50140   Exit Sub
50150  End If
50160  CheckPrintJobs
50170  If Not NoProcessing Then
50180   CheckForPrinting
50190  End If
50200  If lsv.ListItems.Count = 0 And LenB(CommandSwitch("PIF", True)) > 0 And ShellAndWaitingIsRunning = False Then
50210   InTimer1 = False
50220   Unload Me
50230   Exit Sub
50240  End If
50250
50260  If lsv.ListItems.Count = 1 Then
50270   If lsv.SelectedItem.Index <> 1 Then
50280    lsv.ListItems(1).Selected = True
50290   End If
50300  End If
50310  DoEvents
50320
50330  InTimer1 = False
50340  If ShutDown And In_eActionTimer = False Then
50350   Timer3.Enabled = False
50360   Timer1.Enabled = False
50370   Unload Me
50380  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "Timer1_Timer")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub tlb_ButtonClick(Index As Integer, ByVal Button As MSComctlLib.Button)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50011  Select Case Index
        Case 0
50031    Select Case Button.Index
          Case 1
50050      SetMenuPrinterStop
50060     Case 2
50070      frmOptions.Show , Me
50080     Case 3
50090      frmLog.Show , Me
50100     Case 5
50110      DocumentPrint
50120     Case 6
50130      DocumentAdd
50140     Case 7
50150      DocumentAddFromClipboard
50160     Case 8
50170      DocumentDelete
50180     Case 9
50190      DocumentTop
50200     Case 10
50210      DocumentUp
50220     Case 11
50230      DocumentDown
50240     Case 12
50250      DocumentBottom
50260     Case 13
50270      DocumentCombine False
50280     Case 14
50290      DocumentCombine True
50300     Case 15
50310      ' DocumentSave ' Not possible for the moment
50320     Case 17
50330      Call HTMLHelp_ShowTopic("html\pdfcreator-user-manual.html")
50340    End Select
50350   Case 1
50361    Select Case Button.Index
          Case 1
50380      CombineAllAndSend
50390     Case 2
50400      SendEmail
50410    End Select
50420  End Select
50430  SetDocMenuAndToolbar
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "tlb_ButtonClick")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub txtEmailAddress_Change()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  txtEmailAddress.ToolTipText = LanguageStrings.DialogEmailAddress & ": " & txtEmailAddress.Text
50020  If InStr(1, txtEmailAddress.Text, "@") = 0 And LenB(Options.StandardMailDomain) > 0 Then
50030   txtEmailAddress.ToolTipText = txtEmailAddress.ToolTipText & "@" & Options.StandardMailDomain
50040  End If
50050  SetDocMenuAndToolbar
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "txtEmailAddress_Change")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub CheckForPrinting()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim isf As clsInfoSpoolFile, PrinterDefaultProfile As String, opt As tOptions, opt2 As tOptions
50020
50030  If lsv.ListItems.Count > 0 Then
50040   If mnPrinter(2).Checked = True Then
50050     If PrintSelectedJobs = True Then
50060       If lsv.ListItems(1).SubItems(1) = LanguageStrings.ListPrinting Then
50070         'PDFSpoolfile = lsv.ListItems(1).SubItems(4)
50080         CurrentInfoSpoolFile = lsv.ListItems(1).SubItems(4)
50090         ' Set isf = New clsInfoSpoolFile
50100         ' isf.ReadInfoFile CurrentInfoSpoolFile
50110         Set isf = GetInfoSpoolFileObject(CurrentInfoSpoolFile)
50120         DoEvents
50130         If LenB(isf.FirstPrinterName) > 0 And UCase$(OldPrinter) <> UCase$(isf.FirstPrinterName) Then
50140          OldPrinter = isf.FirstPrinterName
50150          Options = ReadOptions(True, , GetPrinterDefaultProfile(isf.FirstPrinterName))
50160         End If
50170         frmPrinting.PrinterProfile = GetPrinterDefaultProfile(isf.FirstPrinterName)
50180         frmPrinting.Show vbModal, Me
50190        Else
50200         PrintSelectedJobs = False
50210       End If
50220      Else
50230       If lsv.ListItems(1).SubItems(1) <> LanguageStrings.ListWaiting Then
50240        lsv.ListItems(1).SubItems(1) = LanguageStrings.ListWaiting
50250       End If
50260     End If
50270    Else
50280     If lsv.ListItems(1).SubItems(1) <> LanguageStrings.ListPrinting Then
50290      lsv.ListItems(1).SubItems(1) = LanguageStrings.ListPrinting
50300     End If
50310     CurrentInfoSpoolFile = lsv.ListItems(1).SubItems(4)
50320     If PrinterStop = False Then
50330      If IsFormLoaded(frmPrinting) = False Then
50340       Set isf = New clsInfoSpoolFile
50350       isf.ReadInfoFile CurrentInfoSpoolFile
50360       PrinterDefaultProfile = Trim$(GetPrinterDefaultProfile(isf.FirstPrinterName))
50370       If LenB(PrinterDefaultProfile) > 0 Then
50380         opt = ReadOptions(True, , PrinterDefaultProfile)
50390        Else
50400         opt = Options
50410       End If
50420       If opt.UseAutosave = 1 Then
50430         opt2 = Options
50440         Options = opt
50450         Autosave CurrentInfoSpoolFile
50460         SaveOption Options, "Counter", PrinterDefaultProfile
50470         opt2.Counter = Options.Counter
50480         Options = opt2
50490        Else
50500         If LenB(isf.FirstPrinterName) > 0 And UCase$(OldPrinter) <> UCase$(isf.FirstPrinterName) Then
50510          OldPrinter = isf.FirstPrinterName
50520         End If
50530         frmPrinting.PrinterProfile = GetPrinterDefaultProfile(isf.FirstPrinterName)
50540         frmPrinting.Show , Me
50550       End If
50560      End If
50570     End If
50580     If PrinterStop = False And NoProcessing = False Then
50590       mnPrinter(2).Checked = False
50600       tlb(0).Buttons(1).Image = 1
50610      Else
50620       mnPrinter(2).Checked = True
50630       tlb(0).Buttons(1).Image = 2
50640     End If
50650   End If
50660  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "CheckForPrinting")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub CheckPrintJobs()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim lItem As ListItem, files As Collection, tColl As Collection, _
  tFile() As String, i As Long, j As Long, kB As Long, MB As Long, GB As Long, _
  ind As Long, tStr As String, tB As Boolean, spoolFile As clsSpoolFile
50040  Dim isf As clsInfoSpoolFile, isfi As clsInfoSpoolFileInfo, tCol As Collection, arrFiles() As clsSpoolFile
50050
50060  kB = 1024: MB = kB * 1024: GB = MB * 1024
50070  Set files = New Collection
50080
50090  ' Get all files from spool directory
50100  FindFiles GetPDFCreatorSpoolDirectory, files, "*.inf", , False, True
50110
50120  ' Remove all in use files
50130  For i = files.Count To 1 Step -1
50140   Set spoolFile = files(i)
50150   If spoolFile.FileLen = 0 Then
50160    files.Remove i
50170   End If
50180  Next i
50190
50200  If files.Count = 0 And lsv.ListItems.Count > 0 Then
50210   lsv.ListItems.Clear
50220   SetDocMenuAndToolbar
50230   Exit Sub
50240  End If
50250
50260 ' --- Find listview items (files) which no longer exist and remove them ---
50270  tB = False
50280  For j = lsv.ListItems.Count To 1 Step -1
50290   If CollectionItemExists(lsv.ListItems(j).SubItems(4), files) = False Then
50300    tB = True
50310    lsv.ListItems.Remove j
50320   End If
50330  Next j
50340 ' ---
50350
50360 ' --- Find files which already exist in listview items collection and remove them ---
50370  Set tCol = New Collection
50380  For j = 1 To lsv.ListItems.Count
50390   tCol.Add lsv.ListItems.Item(j).key, lsv.ListItems.Item(j).key
50400  Next j
50410  For j = files.Count To 1 Step -1
50420   Set spoolFile = files(j)
50430   If CollectionItemExists(spoolFile.FullFileName, tCol) = True Then
50440    tB = True
50450    files.Remove j
50460   End If
50470  Next j
50480 ' ---
50490
50500 ' --- Add new files to listview
50510  If files.Count > 0 Then
50520   tB = True
50530   If FormISLoaded("frmOptions") = False And FormISLoaded("frmPrinters") = False And Me.Visible = True Then
50540    Me.Show
50550   End If
50560
50570   ReDim arrFiles(files.Count - 1)
50580   For j = 1 To files.Count
50590    Set spoolFile = files(j)
50600    Set isf = GetInfoSpoolFileObject(spoolFile.FullFileName)
50610    If IsNumeric(isf.FirstJobID) Then
50620      spoolFile.FileDateTimeJobIdKey = spoolFile.FileDateTimeJobIdKey & Format$(isf.FirstJobID, "000000000000")
50630     Else
50640      spoolFile.FileDateTimeJobIdKey = spoolFile.FileDateTimeJobIdKey & Format$(0, "000000000000")
50650    End If
50660    Set arrFiles(j - 1) = spoolFile
50670   Next j
50680
50690   If files.Count > 1 Then
50700    QuickSortSpoolFiles arrFiles
50710   End If
50720
50730   For j = LBound(arrFiles) To UBound(arrFiles)
50740    Set spoolFile = arrFiles(j)
50750    Set isf = GetInfoSpoolFileObject(spoolFile.FullFileName)
50760
50770    If isf.InfoFiles.Count > 1 Then
50780      Set lItem = lsv.ListItems.Add(, spoolFile.FullFileName, isf.FirstDocumentTitle, , 2)
50790     Else
50800      Set lItem = lsv.ListItems.Add(, spoolFile.FullFileName, isf.FirstDocumentTitle, , 1)
50810    End If
50820
50830    lItem.SubItems(1) = LanguageStrings.ListWaiting
50840    lItem.SubItems(2) = spoolFile.FileDateTime
50850
50860    If isf.sumFileSizes > GB Then
50870      lItem.SubItems(3) = Format$(CDbl(isf.sumFileSizes) / GB, "#,##0.00 " & LanguageStrings.ListGBytes)
50880     ElseIf isf.sumFileSizes > MB Then
50890      lItem.SubItems(3) = Format$(CDbl(isf.sumFileSizes) / MB, "#,##0.00 " & LanguageStrings.ListMBytes)
50900     Else
50910      If isf.sumFileSizes > kB Then
50920        lItem.SubItems(3) = Format$(CDbl(isf.sumFileSizes) / kB, "#,##0.00 " & LanguageStrings.ListKBytes)
50930       Else
50940        lItem.SubItems(3) = Format$(CDbl(isf.sumFileSizes), "#,##0 " & LanguageStrings.ListBytes)
50950      End If
50960    End If
50970    lItem.SubItems(4) = spoolFile.FullFileName
50980    DoEvents
50990   Next j
51000  End If
51010
51020  If lsv.ListItems.Count = 1 Then
51030    tStr = LanguageStrings.ListStatus & ": " & lsv.ListItems.Count & " " & LanguageStrings.MessagesMsg01
51040   Else
51050    tStr = LanguageStrings.ListStatus & ": " & lsv.ListItems.Count & " " & LanguageStrings.MessagesMsg02
51060  End If
51070  If tStr <> stb.Panels("Status").Text Then
51080   stb.Panels("Status").Text = tStr
51090  End If
51100  If tB = True Then
51110   SetDocMenuAndToolbar
51120  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "CheckPrintJobs")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub SetDocMenuAndToolbar()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim c As Long
50020  For c = 0 To mnDocument.Count - 1
50030   If c <> 14 Then ' Disable PS-Save menu item, because doesn't work with the new monitor dll
50040     If mnDocument(c).Enabled = False Then mnDocument(c).Enabled = True
50050    Else
50060     If mnDocument(c).Enabled = True Then mnDocument(c).Enabled = False
50070     If mnDocument(c).Visible = True Then mnDocument(c).Visible = False
50080   End If
50090  Next c
50100  For c = 1 To tlb(0).Buttons.Count
50110   If c <> 15 And c <> 2 Then ' Don't touch settings button. Disable PS-Save toolbar button, because doesn't work with the new monitor dll
50120     If tlb(0).Buttons(c).Enabled = False Then tlb(0).Buttons(c).Enabled = True
50130    Else
50140     If c = 15 Then
50150      If tlb(0).Buttons(c).Enabled = True Then tlb(0).Buttons(c).Enabled = False
50160      If tlb(0).Buttons(c).Visible = True Then tlb(0).Buttons(c).Visible = False
50170     End If
50180   End If
50190  Next c
50200  If (Options.Toolbars And 2) = 2 Then
50210   For c = 1 To tlb(1).Buttons.Count
50220    If tlb(1).Buttons(c).Enabled = False Then tlb(1).Buttons(c).Enabled = True
50230   Next c
50240  End If
50250  If Clipboard.GetFormat(vbCFBitmap) = True Then
50260    If mnDocument(3).Enabled = False Then mnDocument(3).Enabled = True
50270    If tlb(0).Buttons(7).Enabled = False Then tlb(0).Buttons(7).Enabled = True
50280   Else
50290    If mnDocument(3).Enabled = True Then mnDocument(3).Enabled = False
50300    If tlb(0).Buttons(7).Enabled = True Then tlb(0).Buttons(7).Enabled = False
50310  End If
50321  Select Case True
        Case lsv.ListItems.Count = 0, LvwGetCountSelectedItems(lsv, False) = 0
50340    With mnDocument
50350     If .Item(0).Enabled = True Then .Item(0).Enabled = False
50360     If .Item(4).Enabled = True Then .Item(4).Enabled = False
50370     If .Item(6).Enabled = True Then .Item(6).Enabled = False
50380     If .Item(7).Enabled = True Then .Item(7).Enabled = False
50390     If .Item(8).Enabled = True Then .Item(8).Enabled = False
50400     If .Item(9).Enabled = True Then .Item(9).Enabled = False
50410     If .Item(11).Enabled = True Then .Item(11).Enabled = False
50420     If .Item(12).Enabled = True Then .Item(12).Enabled = False
50430     If .Item(14).Enabled = True Then .Item(14).Enabled = False
50440     If (Options.Toolbars And 2) = 2 Then
50450      If .Item(16).Enabled = True Then .Item(16).Enabled = False
50460      If .Item(17).Enabled = True Then .Item(17).Enabled = False
50470     End If
50480    End With
50490    With tlb(0)
50500     If .Buttons(5).Enabled = True Then .Buttons(5).Enabled = False ' print
50510     For c = 8 To 15
50520      If .Buttons(c).Enabled = True Then .Buttons(c).Enabled = False
50530     Next c
50540    End With
50550    With tlb(1)
50560     If (Options.Toolbars And 2) = 2 Then
50570      If .Buttons(1).Enabled = True Then .Buttons(1).Enabled = False
50580      If .Buttons(2).Enabled = True Then .Buttons(2).Enabled = False
50590     End If
50600    End With
50610    Exit Sub
50620   Case lsv.ListItems.Count = 1
50630    With mnDocument
50640     If .Item(6).Enabled = True Then .Item(6).Enabled = False
50650     If .Item(7).Enabled = True Then .Item(7).Enabled = False
50660     If .Item(8).Enabled = True Then .Item(8).Enabled = False
50670     If .Item(9).Enabled = True Then .Item(9).Enabled = False
50680     If .Item(11).Enabled = True Then .Item(11).Enabled = False
50690     If .Item(12).Enabled = True Then .Item(12).Enabled = False
50700     If (Options.Toolbars And 2) = 2 Then
50710      If .Item(16).Enabled = True Then .Item(16).Enabled = False
50720      If LenB(txtEmailAddress.Text) = 0 Or Options.DisableEmail <> 0 Then
50730       If .Item(17).Enabled = True Then .Item(17).Enabled = False
50740      End If
50750     End If
50760    End With
50770    With tlb(0)
50780     For c = 9 To 14
50790      If .Buttons(c).Enabled = True Then .Buttons(c).Enabled = False
50800     Next c
50810    End With
50820    With tlb(1)
50830     If (Options.Toolbars And 2) = 2 Then
50840      If LenB(txtEmailAddress.Text) = 0 Then
50850       If .Buttons(2).Enabled = True Then .Buttons(2).Enabled = False
50860      End If
50870     End If
50880    End With
50890   Case lsv.ListItems.Count > 1
50900    With mnDocument
50910     If AllSelectedListitemsAtTop Then
50920      .Item(6).Enabled = False
50930      .Item(7).Enabled = False
50940     End If
50950     If AllSelectedListitemsAtBottom Then
50960      .Item(8).Enabled = False
50970      .Item(9).Enabled = False
50980     End If
50990     If LvwGetCountSelectedItems(lsv, False) = 1 Then
51000      .Item(11).Enabled = False
51010     End If
51020     If LvwGetCountSelectedItems(lsv, False) > 1 Then
51030      .Item(14).Enabled = False
51040     End If
51050     If ((Options.Toolbars And 2) = 2 And LenB(txtEmailAddress.Text) = 0) Or Options.DisableEmail <> 0 Then
51060      .Item(16).Enabled = False
51070      .Item(17).Enabled = False
51080     End If
51090    End With
51100    With tlb(0)
51110     If AllSelectedListitemsAtTop Then
51120      If .Buttons(9).Enabled = True Then .Buttons(9).Enabled = False
51130      If .Buttons(10).Enabled = True Then .Buttons(10).Enabled = False
51140     End If
51150     If AllSelectedListitemsAtBottom Then
51160      If .Buttons(11).Enabled = True Then .Buttons(11).Enabled = False
51170      If .Buttons(12).Enabled = True Then .Buttons(12).Enabled = False
51180     End If
51190     If LvwGetCountSelectedItems(lsv, False) = 1 Then
51200      If .Buttons(13).Enabled = True Then .Buttons(13).Enabled = False
51210     End If
51220     If LvwGetCountSelectedItems(lsv, False) > 1 Then
51230      If .Buttons(15).Enabled = True Then .Buttons(15).Enabled = False
51240     End If
51250    End With
51260    With tlb(1)
51270     If (Options.Toolbars And 2) = 2 And LenB(txtEmailAddress.Text) = 0 Then
51280      If .Buttons(1).Enabled = True Then .Buttons(1).Enabled = False
51290      If .Buttons(2).Enabled = True Then .Buttons(2).Enabled = False
51300     End If
51310    End With
51320  End Select
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SetDocMenuAndToolbar")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub Autosave(Optional InfoSpoolFileName As String = vbNullString)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim tColl As Collection, i As Long, tFile() As String, Pathname As String, _
  OutputFilename As String, PDFDocInfo As tPDFDocInfo, tStr As String, _
  PSHeader As tPSHeader, tDate As Date, mail As clsPDFCreatorMail
50040  Dim PSFile As String, isf As clsInfoSpoolFile
50050  Dim PDFDocInfoFile As String, StampFile As String, PDFDocViewFile As String, spoolFile As clsSpoolFile
50060
50070  InAutoSave = True
50080  IsConverted = False
50090  Set tColl = New Collection
50100
50110  If Len(InfoSpoolFileName) > 0 Then
50120    If FileExists(InfoSpoolFileName) = True Then
50130     SplitPath InfoSpoolFileName, , Pathname
50140     Set spoolFile = New clsSpoolFile
50150     spoolFile.Path = Pathname
50160     spoolFile.FullFileName = InfoSpoolFileName
50170     spoolFile.FileLen = FileLen(InfoSpoolFileName)
50180     spoolFile.FileDateTime = FileDateTime(InfoSpoolFileName)
50190     tColl.Add spoolFile, InfoSpoolFileName
50200    End If
50210   Else
50220    FindFiles GetPDFCreatorSpoolDirectory, tColl, "*.inf", , False, True
50230  End If
50240
50250  tStr = "Autosavemodus: " & tColl.Count & "files"
50260  IfLoggingWriteLogfile tStr
50270  WriteToSpecialLogfile tStr
50280 ' Do While tColl.Count > 0
50290   For i = 1 To tColl.Count
50300    Set spoolFile = tColl.Item(i)
50310    If FileExists(spoolFile.FullFileName) And Not FileInUse(spoolFile.FullFileName) Then
50320     OutputFilename = GetAutosaveFilename(spoolFile.FullFileName)
50330     SplitPath OutputFilename, , Pathname
50340     If IsValidPath(Pathname) = True Then
50350       If DirExists(Pathname) = False Then
50360        MakePath (Pathname)
50370       End If
50380       tStr = "Autosavemodus: Create File '" & OutputFilename & "'"
50390       IfLoggingWriteLogfile tStr
50400       WriteToSpecialLogfile tStr
50410
50420       Set isf = GetInfoSpoolFileObject(spoolFile.FullFileName)
50430       PSHeader = GetPSHeader(isf.FirstSpoolFileName)
50440       tDate = Now
50450       With PDFDocInfo
50460        If Options.UseStandardAuthor = 1 Then
50470          .Author = GetSubstFilename(spoolFile.FullFileName, RemoveLeadingAndTrailingQuotes(Trim$(Options.StandardAuthor)), True)
50480         Else
50490          .Author = isf.FirstUserName
50500        End If
50510        If LenB(PSHeader.CreationDate.Comment) > 0 Then
50520          tStr = PSHeader.CreationDate.Comment
50530         Else
50540          tStr = CStr(tDate)
50550        End If
50560        .CreationDate = GetDocDate(Trim$(Options.StandardCreationdate), Options.StandardDateformat, FormatPrintDocumentDate(tStr))
50570        .Creator = App.EXEName & " Version " & App.Major & "." & App.Minor & "." & App.Revision
50580        .Keywords = GetSubstFilename(spoolFile.FullFileName, RemoveLeadingAndTrailingQuotes(Trim$(Options.StandardKeywords)), , , False)
50590        'tStr = CStr(tDate)
50600        .ModifyDate = GetDocDate(Trim$(Options.StandardModifydate), Options.StandardDateformat, FormatPrintDocumentDate(tStr))
50610        .Subject = GetSubstFilename(spoolFile.FullFileName, RemoveLeadingAndTrailingQuotes(Trim$(Options.StandardSubject)), , , False)
50620        If Len(Options.StandardTitle) > 0 Then
50630          .Title = GetSubstFilename(spoolFile.FullFileName, RemoveLeadingAndTrailingQuotes(Trim$(Options.StandardTitle)), , , False)
50640         Else
50650          .Title = GetSubstFilename(spoolFile.FullFileName, Options.SaveFilename, , , False)
50660        End If
50670       End With
50680
50690       PDFDocInfoFile = CreatePDFDocInfoFile(spoolFile.FullFileName, PDFDocInfo)
50700       StampFile = CreateStampFile(spoolFile.FullFileName)
50710
50720       If Options.PDFPageLayout > 0 Or Options.PDFPageMode > 0 Or Options.PDFStartPage > 1 Then
50730        PDFDocViewFile = CreatePDFDocViewFile(spoolFile.FullFileName, Options.PDFPageLayout, Options.PDFPageMode, Options.PDFStartPage)
50740       End If
50750
50760       If Options.RunProgramBeforeSaving = 1 Then
50770        RunProgramBeforeSaving Me.hwnd, spoolFile.FullFileName, _
        Options.RunProgramBeforeSavingProgramParameters, _
        Options.RunProgramBeforeSavingWindowstyle
50800       End If
50810
50820       If FileInUse(OutputFilename) = True Then
50830        tStr = Replace(LanguageStrings.MessagesMsg47, "%1", OutputFilename, , , vbTextCompare)
50840        MsgBox tStr, vbExclamation
50850        IfLoggingWriteLogfile tStr
50860        WriteToSpecialLogfile tStr
50870        If Options.PrinterStop = 0 Then
50880         SetMenuPrinterStop
50890        End If
50900        Exit Sub
50910       End If
50920
50930       CallGScript spoolFile.FullFileName, OutputFilename, Options, Options.AutosaveFormat, PDFDocInfoFile, StampFile, PDFDocViewFile
50940
50950       If FileExists(OutputFilename) = True Then
50960         IsConverted = True
50970         tStr = "Autosavemodus: Create File '" & OutputFilename & "' success"
50980         IfLoggingWriteLogfile tStr
50990         WriteToSpecialLogfile tStr
51000         If Options.RunProgramAfterSaving = 1 Then
51010          RunProgramAfterSaving Me.hwnd, OutputFilename, _
         Options.RunProgramAfterSavingProgramParameters, _
         Options.RunProgramAfterSavingWindowstyle, spoolFile.FullFileName
51040         End If
51050         If Options.SendEmailAfterAutoSaving = 1 Then
51060          Set mail = New clsPDFCreatorMail
51070          If mail.Send(OutputFilename, PDFDocInfo.Subject, Options.SendMailMethod) <> 0 Then
51080           MsgBox LanguageStrings.MessagesMsg04, vbCritical, App.EXEName
51090          End If
51100          Set mail = Nothing
51110         End If
51120         Options.Counter = Options.Counter + 1
51130         If Options.AutosaveStartStandardProgram = 1 Then
51140          If Options.OneFilePerPage = 1 Then
51150            OpenDocument Replace$(OutputFilename, "%d", "1", , , vbTextCompare)
51160           Else
51170            OpenDocument OutputFilename
51180          End If
51190         End If
51200        Else
51210         tStr = "Autosavemodus: Create File '" & OutputFilename & "' failed"
51220         IfLoggingWriteLogfile tStr
51230         WriteToSpecialLogfile tStr
51240       End If
51250      Else
51260       IfLoggingWriteLogfile "Error: Invalid autosave pathname, spoolfile will be deleted! > " & OutputFilename
51270     End If
51280     CheckForPrintingAfterSaving spoolFile.FullFileName, Options
51290
51300     KillInfoSpoolFiles spoolFile.FullFileName
51310     RemoveInfoSpoolFileObject spoolFile.FullFileName
51320     ConvertedOutputFilename = OutputFilename
51330     ReadyConverting = True
51340    End If
51350   Next i
51360   DoEvents
51370 '  FindFiles2 GetPDFCreatorSpoolDirectory, tColl, "*.inf", , False, True
51380 ' Loop
51390  InAutoSave = False
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "Autosave")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub ShowPaypalMenuimage()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim h1 As Long, h2 As Long, com As Long
50020  h1 = GetMenu(Me.hwnd): h2 = GetSubMenu(h1, 4)
50030  com = GetMenuItemID(h2, 2)
50040  ModifyMenu h2, com, MF_BYCOMMAND Or MF_BITMAP, com, CLng(imgPaypal.Picture)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "ShowPaypalMenuimage")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub SetGSRevision()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim RNum As String
50020  If Len(CStr(GSRevision.intRevision)) >= 3 Then
50030    RNum = Mid(CStr(GSRevision.intRevision), Len(CStr(GSRevision.intRevision)) - 1, 2)
50040    RNum = Mid(CStr(GSRevision.intRevision), 1, Len(CStr(GSRevision.intRevision)) - 2) & "." & RNum
50050   Else
50060    RNum = ""
50070  End If
50080  If Len(GSRevision.strProduct) > 0 Then
50090    stb.Panels("GhostscriptRevision").Text = GSRevision.strProduct & " " & RNum
50100   Else
50110    stb.Panels("GhostscriptRevision").Text = "-"
50120  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SetGSRevision")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub InitToolbar()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim btn As MSComctlLib.Button
50020  With tlb(0)
50030   Set .ImageList = imlTlb
50040   .Buttons.Clear
50050   .Buttons.Add , , , , 1
50060   .Buttons.Add , , , , 3
50070   .Buttons.Add , , , , 4
50080   .Buttons.Add , , , tbrSeparator
50090   .Buttons.Add , , , , 5
50100   .Buttons.Add , , , , 6
50110   .Buttons.Add , , , , 18
50120   .Buttons.Add , , , , 7
50130   .Buttons.Add , , , , 8
50140   .Buttons.Add , , , , 9
50150   .Buttons.Add , , , , 10
50160   .Buttons.Add , , , , 11
50170   .Buttons.Add , , , , 12
50180   .Buttons.Add , , , , 15
50190   .Buttons.Add , , , , 13
50200   .Buttons.Add , , , tbrSeparator
50210   .Buttons.Add , , , , 14
50220  End With
50230  With tlb(1)
50240   Set .ImageList = imlTlb
50250   .Buttons.Clear
50260   .Buttons.Add , , , , 16
50270   .Buttons.Add , , , , 17
50280   .Buttons.Add , , , tbrSeparator
50290   Set btn = .Buttons.Add(, "emailAddress", , tbrPlaceholder)
50300   btn.Width = (tlb(0).Buttons(15).Left + tlb(0).Buttons(15).Width) - btn.Left
50310  End With
50320  With txtEmailAddress
50330   .Top = tlb(1).Buttons("emailAddress").Top - (.Height - tlb(1).Height) / 2
50340   .Left = tlb(1).Buttons("emailAddress").Left
50350  End With
50360
50370  SetLanguageToolbar
50380  DrawToolbars
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "InitToolbar")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub DrawToolbars()
 If (Options.Toolbars And 2) <> 2 Then
   txtEmailAddress.Enabled = False
   txtEmailAddress.Visible = False
   On Error Resume Next
   mnDocument(15).Enabled = False
   mnDocument(16).Enabled = False
   mnDocument(17).Enabled = False
   mnDocument(14).Visible = False
   mnDocument(15).Visible = False
   mnDocument(16).Visible = False
   mnDocument(17).Visible = False
   On Error GoTo 0
 End If
 If (Options.Toolbars And 1) = 1 Then
   tlb(0).Visible = True
   tlb(0).Enabled = True
   mnViewToolbars(0).Checked = True
  Else
   tlb(0).Visible = False
   tlb(0).Enabled = False
   mnViewToolbars(0).Checked = False
 End If
 If (Options.Toolbars And 2) = 2 Then
   tlb(1).Visible = True
   tlb(1).Enabled = True
   txtEmailAddress.Visible = True
   txtEmailAddress.Enabled = True
   mnViewToolbars(1).Checked = True
   mnDocument(16).Visible = True
   mnDocument(17).Visible = True
  Else
   tlb(1).Visible = False
   tlb(1).Enabled = False
   txtEmailAddress.Visible = False
   txtEmailAddress.Enabled = False
   mnViewToolbars(1).Checked = False
 End If
End Sub

Private Sub DocumentPrint()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long, j As Long
50020  For j = 1 To LvwGetCountSelectedItems(lsv, False)
50030   DoEvents
50040   For i = lsv.ListItems.Count To 1 Step -1
50050    If lsv.ListItems(i).Selected = True Then
50060     lsv.ListItems(i).SubItems(1) = LanguageStrings.ListPrinting
50070     LvwListItemToTop lsv, i, True
50080     Exit For
50090    End If
50100   Next i
50110  Next j
50120  PrintSelectedJobs = True
50130 ' SetPrinterStop False
50140 ' mnPrinter(2).Checked = False
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentPrint")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub DocumentAddFromClipboard()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim File As String
50020  If Clipboard.GetFormat(vbCFBitmap) = True Then
50030   File = GetPDFCreatorSpoolDirectory & GetGUID
50040   ConvertStandardImageFromPicture Clipboard.GetData(2), File & ".ps", "Screenshot"
50050   CreateInfoSpoolFile File & ".ps", File & ".inf"
50060  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentAddFromClipboard")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub DocumentAdd()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long, Cancel As Boolean, cFiles As Collection, aLen As Double, _
  OnlyPsFiles As Boolean, Ext As String, DefaultPrintername As String, _
  tFilename As String, tLen As Double
50040  Dim Path As String, psFileName As String, ini As clsINI, Title As String, strGUID As String, _
  spoolDirectory As String, notFoundFiles As Collection, tStr As String
50060  Set cFiles = GetFilename("", GetMyFiles, 0, _
  LanguageStrings.ListPostscriptFiles & " (*.ps)|*.ps|" & LanguageStrings.ListAllFiles & " (*.*)|*.*", _
   OpenFile, Cancel, Me)
50090  If Cancel = True Then
50100   Screen.MousePointer = vbNormal
50110   Exit Sub
50120  End If
50130  Set notFoundFiles = New Collection
50140  For i = cFiles.Count To 1 Step -1
50150   If InStr(cFiles(i), "?") > 0 Then
50160    notFoundFiles.Add cFiles(i)
50170    cFiles.Remove i
50180   End If
50190  Next i
50200  If notFoundFiles.Count > 0 Then
50210   For i = 1 To notFoundFiles.Count
50220    If i = 1 Then
50230      tStr = notFoundFiles(i)
50240     Else
50250      tStr = tStr & vbCrLf & notFoundFiles(i)
50260    End If
50270   Next i
50280   MsgBox LanguageStrings.MessagesMsg14 + vbCrLf + vbCrLf + tStr
50290  End If
50300
50310  If cFiles.Count = 0 Then
50320   Exit Sub
50330  End If
50340  aLen = 0
50350  For i = 1 To cFiles.Count
50360   aLen = aLen + GetFileLength(cFiles.Item(i))
50370  Next i
50380  OnlyPsFiles = True
50390  For i = 1 To cFiles.Count
50400   SplitPath cFiles.Item(i), , , , , Ext
50410   If UCase$(Ext) <> "PS" And UCase$(Ext) <> "EPS" Then
50420    OnlyPsFiles = False
50430    Exit For
50440   End If
50450  Next i
50460  If UCase$(Printer.DeviceName) <> UCase$(GetPDFCreatorPrintername) And OnlyPsFiles = False Then
50470   If Options.NoConfirmMessageSwitchingDefaultprinter = 0 Then
50480    If ChangeDefaultprinter = False Then
50490     frmSwitchDefaultprinter.Show vbModal, Me
50500     If ChangeDefaultprinter = False Then
50510      Screen.MousePointer = vbNormal
50520      Exit Sub
50530     End If
50540    End If
50550   End If
50560  End If
50570  ChangeDefaultprinter = True
50580  DefaultPrintername = Printer.DeviceName
50590  SetDefaultprinterInProg GetPDFCreatorPrintername
50600  aLen = 0
50610  For i = 1 To cFiles.Count
50620   aLen = aLen + GetFileLength(cFiles.Item(i))
50630  Next i
50640  For i = 1 To cFiles.Count
50650   SplitPath cFiles.Item(i), , , , , Ext
50660   If IsPostscriptFile(cFiles.Item(i)) = True And (UCase$(Ext) = "PS" Or UCase$(Ext) = "EPS") Then
50670     spoolDirectory = GetPDFCreatorSpoolDirectory
50680     strGUID = GetGUID
50690     tFilename = spoolDirectory & strGUID & ".inf"
50700     psFileName = spoolDirectory & strGUID & ".ps"
50710     FileCopy cFiles.Item(i), psFileName
50720     CreateInfoSpoolFile psFileName, tFilename
50730    Else
50740     DoEvents
50750     ShellAndWait Me.hwnd, "print", cFiles.Item(i), "", vbNullChar, wHidden, WCTermination, 60000, True
50760   End If
50770   DoEvents
50780   tLen = tLen + GetFileLength(cFiles.Item(i))
50790   stb.Panels("Percent").Text = Format$(tLen / aLen, " 0.0%")
50800   DoEvents
50810  Next i
50820  If DefaultPrintername <> vbNullString Then
50830   SetDefaultprinterInProg DefaultPrintername
50840  End If
50850  stb.Panels("Percent").Text = vbNullString
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentAdd")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub DocumentDelete()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long
50020  For i = lsv.ListItems.Count To 1 Step -1
50030   If lsv.ListItems(i).Selected = True Then
50040    KillInfoSpoolFiles lsv.ListItems(i).SubItems(4)
50050   End If
50060   DoEvents
50070  Next i
50080  LvwRemoveSelectedItems lsv, True
50090  If lsv.ListItems.Count > 0 Then
50100   If lsv.SelectedItem.Index > lsv.ListItems.Count Then
50110     lsv.ListItems(lsv.SelectedItem.Index - 1).Selected = True
50120    Else
50130     lsv.ListItems(lsv.SelectedItem.Index).Selected = True
50140   End If
50150  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentDelete")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub DocumentTop()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long, j As Long
50020  For j = 1 To LvwGetCountSelectedItems(lsv, False)
50030   For i = lsv.ListItems.Count To 1 Step -1
50040    If lsv.ListItems(i).Selected = True Then
50050     LvwListItemToTop lsv, i, True
50060     Exit For
50070    End If
50080   Next i
50090  Next j
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentTop")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub DocumentUp()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  LvwListItemUp lsv, , True
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentUp")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub DocumentDown()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  LvwListItemDown lsv, , True
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentDown")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub DocumentBottom()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long, j As Long
50020  For j = 1 To LvwGetCountSelectedItems(lsv, False)
50030   For i = 1 To lsv.ListItems.Count
50040    If lsv.ListItems(i).Selected = True Then
50050     LvwListItemToBottom lsv, i, True
50060     Exit For
50070    End If
50080   Next i
50090  Next j
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentBottom")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Function DocumentCombine(all As Boolean) As String
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long, tFilename As String, tFilename2 As String
50020  Dim isf As clsInfoSpoolFile, isfi As clsInfoSpoolFileInfo, c As Long, ini As clsINI, j As Long
50030
50040  Screen.MousePointer = vbHourglass
50050  LockWindowUpdate lsv.hwnd
50060
50070  c = 1
50080  tFilename = GetPDFCreatorSpoolDirectory & GetGUID & ".inf"
50090  Set ini = New clsINI
50100  ini.filename = tFilename
50110  Set isf = New clsInfoSpoolFile
50120  For i = 1 To lsv.ListItems.Count
50130   If all = True Or lsv.ListItems(i).Selected = True Then
50140    isf.ReadInfoFile lsv.ListItems(i).SubItems(4)
50150    For j = 1 To isf.InfoFiles.Count
50160     Set isfi = isf.InfoFiles(j)
50170     ini.Section = CStr(c)
50180     ini.SaveKey isfi.ClientComputer, "ClientComputer"
50190     ini.SaveKey isfi.DocumentTitle, "DocumentTitle"
50200     ini.SaveKey isfi.JobID, "JobId"
50210     ini.SaveKey isfi.PrinterName, "Printername"
50220     ini.SaveKey isfi.SessionID, "SessionID"
50230     ini.SaveKey isfi.SpoolFileName, "SpoolFilename"
50240     ini.SaveKey isfi.UserName, "UserName"
50250     ini.SaveKey isfi.WinStation, "WinStation"
50260     c = c + 1
50270    Next j
50280    KillFile lsv.ListItems(i).SubItems(4)
50290   End If
50300  Next i
50310  DocumentCombine = tFilename
50320  LockWindowUpdate 0&
50330  Screen.MousePointer = vbNormal
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentCombine")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Sub DocumentSave()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010   Dim tFilename As String, cFiles As Collection, Cancel As Boolean
50020  tFilename = ReplaceForbiddenChars(GetPSTitle(lsv.ListItems(lsv.SelectedItem.Index).SubItems(4)), , ".")
50030  If LenB(tFilename) = 0 Then
50040   SplitPath lsv.ListItems(lsv.SelectedItem.Index).SubItems(4), , , , tFilename
50050  End If
50060  Set cFiles = GetFilename(tFilename, GetMyFiles, 0, _
  LanguageStrings.ListPostscriptFiles & " (*.ps)|*.ps", _
   SaveFile, Cancel, Me)
50090  If Cancel = True Then
50100   Screen.MousePointer = vbNormal
50110   Exit Sub
50120  End If
50130  If cFiles.Count > 0 Then
50140   FileCopy lsv.ListItems(lsv.SelectedItem.Index).SubItems(4), cFiles.Item(1)
50150  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "DocumentSave")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub SetMenuPrinterStop()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If mnPrinter(2).Checked = False Or NoProcessing = True Then
50020    SetPrinterStop True
50030    mnPrinter(2).Checked = True
50040    tlb(0).Buttons(1).Image = 2
50050   Else
50060    SetPrinterStop False
50070    mnPrinter(2).Checked = False
50080    tlb(0).Buttons(1).Image = 1
50090  End If
50100  If Not m_frmSysTray Is Nothing Then
50110   If mnPrinter(2).Checked = True Then
50120     m_frmSysTray.IconHandle = imlSystray.ListImages(1).Picture.handle
50130     m_frmSysTray.mnuSysTray(2).Checked = True
50140    Else
50150     m_frmSysTray.IconHandle = imlSystray.ListImages(2).Picture.handle
50160     m_frmSysTray.mnuSysTray(2).Checked = False
50170   End If
50180  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SetMenuPrinterStop")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub SetLanguageToolbar()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If tlb(0).Buttons.Count = 0 Then
50020   Exit Sub
50030  End If
50040  With tlb(0)
50050   .Buttons(1).ToolTipText = LanguageStrings.DialogPrinterPrinterStop
50060   .Buttons(2).ToolTipText = LanguageStrings.DialogPrinterOptions
50070   .Buttons(3).ToolTipText = LanguageStrings.DialogPrinterLogfile
50080   .Buttons(5).ToolTipText = LanguageStrings.DialogDocumentPrint
50090   .Buttons(6).ToolTipText = LanguageStrings.DialogDocumentAdd
50100   .Buttons(7).ToolTipText = LanguageStrings.DialogDocumentAddFromClipboard
50110   .Buttons(8).ToolTipText = LanguageStrings.DialogDocumentDelete
50120   .Buttons(9).ToolTipText = LanguageStrings.DialogDocumentTop
50130   .Buttons(10).ToolTipText = LanguageStrings.DialogDocumentUp
50140   .Buttons(11).ToolTipText = LanguageStrings.DialogDocumentDown
50150   .Buttons(12).ToolTipText = LanguageStrings.DialogDocumentBottom
50160   .Buttons(13).ToolTipText = LanguageStrings.DialogDocumentCombine
50170   .Buttons(14).ToolTipText = LanguageStrings.DialogDocumentCombineAll
50180   .Buttons(15).ToolTipText = LanguageStrings.DialogDocumentSave
50190   .Buttons(17).ToolTipText = "?"
50200  End With
50210  With tlb(1)
50220   .Buttons(1).ToolTipText = LanguageStrings.DialogDocumentCombineAllSend
50230   .Buttons(2).ToolTipText = LanguageStrings.DialogDocumentSend
50240  End With
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SetLanguageToolbar")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Function GetVisibleToolbars() As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim c As Long
50020  c = 0
50030  If (Options.Toolbars And 1) = 1 Then
50040   c = c + 1
50050  End If
50060  If (Options.Toolbars And 2) = 2 Then
50070   c = c + 1
50080  End If
50090  GetVisibleToolbars = c
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "GetVisibleToolbars")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Sub SendEmailImmediately(InputFilename As String)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim OutputFilename As String, mail As clsPDFCreatorMail, rec As String
50020  If LenB(InputFilename) > 0 Then
50030   If FileExists(InputFilename) = True And FileInUse(InputFilename) = False Then
50040    rec = LTrim(txtEmailAddress.Text)
50050    If LenB(LTrim(Options.StandardMailDomain)) > 0 And InStr(1, LTrim(txtEmailAddress.Text), "@") <= 0 Then
50060     rec = rec & "@" & Options.StandardMailDomain
50070    End If
50080    OutputFilename = CompletePath(GetPDFCreatorTempfolder) & txtEmailAddress.Text & ".pdf"
50090
50100    If Options.RunProgramBeforeSaving = 1 Then
50110     RunProgramBeforeSaving Me.hwnd, GetShortName(InputFilename), _
    Options.RunProgramBeforeSavingProgramParameters, _
    Options.RunProgramBeforeSavingWindowstyle
50140    End If
50150    ConvertFile InputFilename, OutputFilename
50160    If Len(OutputFilename) > 0 And FileExists(OutputFilename) = True Then
50170     If Options.RunProgramAfterSaving = 1 Then
50180      RunProgramAfterSaving Me.hwnd, OutputFilename, _
      Options.RunProgramAfterSavingProgramParameters, _
      Options.RunProgramAfterSavingWindowstyle, InputFilename
50210     End If
50220     Set mail = New clsPDFCreatorMail
50230     If mail.Send(OutputFilename, Options.StandardSubject, Options.SendMailMethod, rec) <> 0 Then
50240      MsgBox LanguageStrings.MessagesMsg04, vbCritical, App.EXEName
50250     End If
50260     Set mail = Nothing
50270    End If
50280    Options.Counter = Options.Counter + 1
50290    KillFile InputFilename
50300   End If
50310  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SendEmailImmediately")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub CombineAllAndSend()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If Options.ShowAnimation = 1 Then
50020   ShowAnimationWindow = True
50030   frmAnimation.Show
50040  End If
50050  SendEmailImmediately DocumentCombine(True)
50060  If Options.ShowAnimation = 1 Then
50070   ShowAnimationWindow = False
50080  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "CombineAllAndSend")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub SendEmail()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If lsv.ListItems.Count > 0 Then
50020   If lsv.SelectedItem.Index >= 0 Then
50030    If FileExists(lsv.SelectedItem.ListSubItems(4)) = True And FileInUse(lsv.SelectedItem.ListSubItems(4)) = False Then
50040     If Options.ShowAnimation = 1 Then
50050      ShowAnimationWindow = True
50060      frmAnimation.Show
50070     End If
50080     SendEmailImmediately lsv.SelectedItem.ListSubItems(4)
50090     If Options.ShowAnimation = 1 Then
50100      ShowAnimationWindow = False
50110     End If
50120    End If
50130   End If
50140  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SendEmail")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Function AllSelectedListitemsAtTop() As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long, tB As Boolean
50020  AllSelectedListitemsAtTop = False
50030  If lsv.ListItems.Count > 0 Then
50040   If lsv.ListItems(1).Selected = False Then
50050    Exit Function
50060   End If
50070   AllSelectedListitemsAtTop = True
50080   tB = False
50090   For i = 2 To lsv.ListItems.Count
50100    If tB = True And lsv.ListItems(i).Selected = True Then
50110     AllSelectedListitemsAtTop = False
50120     Exit For
50130    End If
50140    If lsv.ListItems(i).Selected = False Then
50150     tB = True
50160    End If
50170   Next i
50180  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "AllSelectedListitemsAtTop")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function AllSelectedListitemsAtBottom() As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long, tB As Boolean
50020  AllSelectedListitemsAtBottom = False
50030  If lsv.ListItems.Count > 0 Then
50040   If lsv.ListItems(lsv.ListItems.Count).Selected = False Then
50050    Exit Function
50060   End If
50070   AllSelectedListitemsAtBottom = True
50080   tB = False
50090   For i = lsv.ListItems.Count - 1 To 1 Step -1
50100    If tB = True And lsv.ListItems(i).Selected = True Then
50110     AllSelectedListitemsAtBottom = False
50120     Exit For
50130    End If
50140    If lsv.ListItems(i).Selected = False Then
50150     tB = True
50160    End If
50170   Next i
50180  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "AllSelectedListitemsAtBottom")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Sub m_frmSysTray_MenuClick(ByVal lIndex As Long, ByVal sKey As String)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50011  Select Case lIndex
        Case 0
50030    If Not ExistsAnModalForm Then
50040     ShowFrmMain
50050    End If
50060   Case Is > 1
50070    mnPrinter_Click CInt(lIndex - 2)
50080  End Select
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "m_frmSysTray_MenuClick")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub m_frmSysTray_SysTrayDoubleClick(ByVal eButton As MouseButtonConstants)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If Not ExistsAnModalForm Then
50020   ShowFrmMain
50030  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "m_frmSysTray_SysTrayDoubleClick")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub m_frmSysTray_SysTrayMouseDown(ByVal eButton As MouseButtonConstants)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If (eButton = vbRightButton) Then
50020   m_frmSysTray.ShowMenu
50030  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "m_frmSysTray_SysTrayMouseDown")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub SystrayEnter()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long
50020  If m_frmSysTray Is Nothing Then
50030   Set m_frmSysTray = New frmSysTray
50040   With m_frmSysTray
50050    .AddMenuItem App.EXEName, , True
50060    .AddMenuItem "-"
50070    For i = mnPrinter.LBound To mnPrinter.UBound
50080     .AddMenuItem mnPrinter(i).Caption
50090    Next i
50100    If mnPrinter(6).Checked = True Then
50110     .mnuSysTray(8).Checked = True
50120    End If
50130    If mnPrinter(2).Checked = True Then
50140     .mnuSysTray(4).Checked = True
50150    End If
50160    .ToolTip = Me.Caption
50170   End With
50180   If mnPrinter(2).Checked = True Then
50190     m_frmSysTray.IconHandle = imlSystray.ListImages(1).Picture.handle
50200    Else
50210     m_frmSysTray.IconHandle = imlSystray.ListImages(2).Picture.handle
50220   End If
50230   Me.Hide
50240  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SystrayEnter")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub SysTrayLeave()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If Not m_frmSysTray Is Nothing Then
50020   Unload m_frmSysTray
50030   Set m_frmSysTray = Nothing
50040  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SysTrayLeave")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub SetSystrayIcon(Index As Long)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If Not m_frmSysTray Is Nothing Then
50020   m_frmSysTray.IconHandle = frmMain.imlSystray.ListImages(Index).Picture.handle
50030  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "SetSystrayIcon")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub ShowFrmMain()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  With Me
50020   .ZOrder
50030   .WindowState = vbNormal
50040   .Show
50050  End With
50060  SysTrayLeave
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "ShowFrmMain")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub txtEmailAddress_KeyPress(KeyAscii As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If KeyAscii = vbKeyReturn Then
50020   SendEmail
50030  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "txtEmailAddress_KeyPress")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub ChangeLanguage()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  SetLanguageMenu
50020  SetLanguageToolbar
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "ChangeLanguage")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub ShowPrinters()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim pStop As Boolean
50020  pStop = PrinterStop
50030  If pStop = False Then
50040   SetMenuPrinterStop
50050  End If
50060
50070  frmPrinters.Show vbModal, Me
50080
50090  If pStop = False Then
50100   SetMenuPrinterStop
50110  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmMain", "ShowPrinters")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub
