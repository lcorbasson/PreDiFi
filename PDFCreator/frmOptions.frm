VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmOptions 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Options"
   ClientHeight    =   8730
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9255
   Icon            =   "frmOptions.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8730
   ScaleWidth      =   9255
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Begin MSComctlLib.TreeView trvOptions 
      Height          =   7815
      Left            =   0
      TabIndex        =   13
      Top             =   840
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   13785
      _Version        =   393217
      HideSelection   =   0   'False
      LabelEdit       =   1
      Style           =   7
      FullRowSelect   =   -1  'True
      BorderStyle     =   1
      Appearance      =   0
   End
   Begin PDFCreator.dmFrame dmFraDescription 
      Height          =   1065
      Left            =   2760
      TabIndex        =   3
      Top             =   840
      Width           =   6420
      _ExtentX        =   11324
      _ExtentY        =   1879
      Caption         =   ""
      BarColorFrom    =   723949
      BarColorTo      =   132452
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.PictureBox picOptions 
         Appearance      =   0  '2D
         BorderStyle     =   0  'Kein
         Enabled         =   0   'False
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   105
         ScaleHeight     =   615
         ScaleWidth      =   615
         TabIndex        =   4
         Top             =   420
         Width           =   615
      End
      Begin VB.Label lblOptions 
         Height          =   615
         Left            =   735
         TabIndex        =   5
         Top             =   420
         Width           =   5655
      End
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   495
      Left            =   2880
      TabIndex        =   1
      Top             =   8160
      Width           =   1815
   End
   Begin VB.CommandButton cmdReset 
      Caption         =   "&Reset"
      Height          =   495
      Left            =   5160
      TabIndex        =   2
      Top             =   8160
      Width           =   1815
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save"
      Height          =   495
      Left            =   7320
      TabIndex        =   0
      Top             =   8160
      Width           =   1815
   End
   Begin PDFCreator.dmFrame dmFraProfile 
      Height          =   825
      Left            =   0
      TabIndex        =   6
      Top             =   0
      Width           =   9180
      _ExtentX        =   16193
      _ExtentY        =   1455
      Caption         =   "Profil"
      BarColorFrom    =   723949
      BarColorTo      =   132452
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Begin VB.CommandButton cmdProfileRename 
         Enabled         =   0   'False
         Height          =   375
         Left            =   7200
         Picture         =   "frmOptions.frx":27A2
         Style           =   1  'Grafisch
         TabIndex        =   12
         ToolTipText     =   "Rename profile"
         Top             =   330
         Width           =   375
      End
      Begin VB.CommandButton cmdProfileLoad 
         Height          =   375
         Left            =   8640
         Picture         =   "frmOptions.frx":2B96
         Style           =   1  'Grafisch
         TabIndex        =   11
         ToolTipText     =   "Load profile"
         Top             =   330
         Width           =   375
      End
      Begin VB.CommandButton cmdProfileSave 
         Height          =   375
         Left            =   8160
         Picture         =   "frmOptions.frx":2F94
         Style           =   1  'Grafisch
         TabIndex        =   10
         ToolTipText     =   "Save profile"
         Top             =   330
         Width           =   375
      End
      Begin VB.CommandButton cmdProfileDelete 
         Enabled         =   0   'False
         Height          =   375
         Left            =   7680
         Picture         =   "frmOptions.frx":3329
         Style           =   1  'Grafisch
         TabIndex        =   9
         ToolTipText     =   "Delete profile"
         Top             =   330
         Width           =   375
      End
      Begin VB.CommandButton cmdProfileAdd 
         Height          =   375
         Left            =   6720
         Picture         =   "frmOptions.frx":3721
         Style           =   1  'Grafisch
         TabIndex        =   8
         ToolTipText     =   "Add profile"
         Top             =   330
         Width           =   375
      End
      Begin VB.ComboBox cmbProfile 
         Height          =   315
         Left            =   120
         Style           =   2  'Dropdown-Liste
         TabIndex        =   7
         Top             =   360
         Width           =   6375
      End
   End
   Begin MSComctlLib.ImageList imlIeb 
      Left            =   2760
      Top             =   2040
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   26
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":3B11
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":3C6B
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":4205
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":479F
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":4D39
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":50D3
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":566D
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":5F47
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":64E1
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":6A7B
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":7015
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":75AF
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":7B49
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":80E3
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":867D
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":8C17
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":91B1
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":974B
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":9CE5
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":A5BF
            Key             =   ""
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":AE99
            Key             =   ""
         EndProperty
         BeginProperty ListImage22 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":B433
            Key             =   ""
         EndProperty
         BeginProperty ListImage23 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":B9CD
            Key             =   ""
         EndProperty
         BeginProperty ListImage24 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":BF67
            Key             =   ""
         EndProperty
         BeginProperty ListImage25 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":C501
            Key             =   ""
         EndProperty
         BeginProperty ListImage26 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmOptions.frx":CA9B
            Key             =   ""
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private UnloadForm As Boolean, LoadReady As Boolean, oldLanguage As String, Languages As Collection

Private optActionsControl As VBControlExtender, optActions As ctlOptActions
Private optAutosaveControl As VBControlExtender, optAutosave As ctlOptAutosave
'Private optDirectoriesControl As VBControlExtender, optDirectories As ctlOptDirectories
Private optDocumentControl As VBControlExtender, optDocument As ctlOptDocument
Private optFontsControl As VBControlExtender, optFonts As ctlOptFonts
Private optFormatPDFControl As VBControlExtender, optFormatPDF As ctlOptFormatPDF
Private optFormatPSControl As VBControlExtender, optFormatPS As ctlOptFormatPS
Private optFormatEPSControl As VBControlExtender, optFormatEPS As ctlOptFormatEPS
Private optFormatPNGControl As VBControlExtender, optFormatPNG As ctlOptFormatPNG
Private optFormatJPEGControl As VBControlExtender, optFormatJPEG As ctlOptFormatJPEG
Private optFormatBMPControl As VBControlExtender, optFormatBMP As ctlOptFormatBMP
Private optFormatPCXControl As VBControlExtender, optFormatPCX As ctlOptFormatPCX
Private optFormatTIFFControl As VBControlExtender, optFormatTIFF As ctlOptFormatTIFF
Private optFormatTXTControl As VBControlExtender, optFormatTXT As ctlOptFormatTXT
Private optFormatPSDControl As VBControlExtender, optFormatPSD As ctlOptFormatPSD
Private optFormatPCLControl As VBControlExtender, optFormatPCL As ctlOptFormatPCL
Private optFormatRAWControl As VBControlExtender, optFormatRAW As ctlOptFormatRAW
Private optFormatSVGControl As VBControlExtender, optFormatSVG As ctlOptFormatSVG
'Private optFormatXCFControl As VBControlExtender, optFormatXCF As ctlOptFormatXCF
Private optGeneralControl As VBControlExtender, optGeneral As ctlOptGeneral
Private optGhostscriptControl As VBControlExtender, optGhostscript As ctlOptGhostscript
Private optLanguagesControl As VBControlExtender, optLanguages As ctlOptLanguages
Private optPrintControl As VBControlExtender, optPrint As ctlOptPrint
Private optSaveControl As VBControlExtender, optSave As ctlOptSave

Private OldProfile As Long, ProfileOptions() As tOptions, ProfileNames() As String, TempPrinterProfiles As Collection, LastNodeKey As String

Private Sub cmbProfile_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If cmbProfile.ListIndex <> OldProfile Then
50020   If OldProfile <= UBound(ProfileOptions) Then
50030    ProfileOptions(OldProfile) = GetOptionsFromUserControls(ProfileOptions(OldProfile))
50040   End If
50050   OldProfile = cmbProfile.ListIndex
50060   If cmbProfile.ListIndex = 0 Then
50070     optGeneral.ControlsEnabled = True
50080     optGhostscript.ControlsEnabled = True
50090     optLanguages.ControlsEnabled = True
50100     optFonts.ControlsEnabled = True
50110     cmdProfileRename.Enabled = False
50120     cmdProfileDelete.Enabled = False
50130     cmdProfileSave.Enabled = True
50140     cmdReset.Enabled = True
50150     SetSubOption LastNodeKey, True
50160    Else
50170     If HKLMProfileExists(cmbProfile.List(cmbProfile.ListIndex)) And InstalledAsServer = False Then
50180       cmdProfileRename.Enabled = False
50190       cmdProfileDelete.Enabled = False
50200       cmdProfileSave.Enabled = False
50210       cmdReset.Enabled = False
50220       SetSubOption LastNodeKey, False
50230      Else
50240       cmdProfileRename.Enabled = True
50250       cmdProfileDelete.Enabled = True
50260       cmdProfileSave.Enabled = True
50270       cmdReset.Enabled = True
50280       SetSubOption LastNodeKey, True
50290     End If
50300     optGeneral.ControlsEnabled = False
50310     optGhostscript.ControlsEnabled = False
50320     optLanguages.ControlsEnabled = False
50330     optFonts.ControlsEnabled = False
50340   End If
50350   Options1 = ProfileOptions(cmbProfile.ListIndex)
50360   Options1.Language = CurrentLanguage
50370   SetOptions
50380  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmbProfile_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub AddProfile(ProfileName As String)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim resS As String, i As Long
50020  resS = Trim$(ProfileName)
50030  If LenB(resS) = 0 Then
50040   Exit Sub
50050  End If
50060  With cmbProfile
50070   ReDim Preserve ProfileOptions(.ListCount)
50080   ProfileOptions(.ListCount) = StandardOptions
50090   .AddItem resS
50100   .ListIndex = cmbProfile.ListCount - 1
50110   .Enabled = True
50120   .Visible = True
50130  End With
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "AddProfile")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub RenameProfile(ProfileName As String)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim resS As String, i As Long, NewPrinterProfiles As Collection, tStr As String, sa(2) As String
50020
50030  resS = Trim$(ProfileName)
50040  If LenB(resS) = 0 Then
50050   Exit Sub
50060  End If
50070
50080  Set NewPrinterProfiles = New Collection
50090  For i = 1 To TempPrinterProfiles.Count
50100   sa(0) = TempPrinterProfiles(i)(0)
50110   sa(1) = TempPrinterProfiles(i)(1)
50120   If i - 1 = cmbProfile.ListIndex Then
50130     sa(2) = resS
50140    Else
50150     sa(2) = TempPrinterProfiles(i)(1)
50160   End If
50170   NewPrinterProfiles.Add sa
50180  Next i
50190  Set TempPrinterProfiles = NewPrinterProfiles
50200
50210  With cmbProfile
50220   .List(.ListIndex) = resS
50230   .Enabled = True
50240   .Visible = True
50250  End With
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "RenameProfile")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Function ProfileExists(ProfileName) As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long
50020  For i = 0 To cmbProfile.ListCount - 1
50030   If StrComp(cmbProfile.List(i), ProfileName, vbTextCompare) = 0 Then
50040    ProfileExists = True
50050    Exit Function
50060   End If
50070  Next i
50080  ProfileExists = False
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "ProfileExists")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function GetNextNewProfile(PreFix As String) As String
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Const MaxCount = 10000
50020  Dim i As Long, j As Long, NewProfile As String
50030  For i = 1 To MaxCount
50040   NewProfile = PreFix & " " & CStr(i)
50050   If Not ProfileExists(NewProfile) Then
50060    GetNextNewProfile = NewProfile
50070    Exit Function
50080   End If
50090  Next i
50100  GetNextNewProfile = PreFix
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "GetNextNewProfile")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Sub cmdProfileAdd_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim resS As String, i As Long, res As Long
50020
50030  Dim Profiles As New Collection
50040  For i = 0 To cmbProfile.ListCount - 1
50050   Profiles.Add cmbProfile.List(i)
50060  Next i
50070
50080  Set frmProfile.Profiles = Profiles
50090  frmProfile.dmFrProfile.Caption = LanguageStrings.OptionsProfileAdd
50100  frmProfile.ProfileAction = eProfileAction.AddProfileAction
50110  frmProfile.txtProfile.Text = GetNextNewProfile(Trim$(LanguageStrings.OptionsProfileNewProfile))
50120  frmProfile.txtProfile.SelStart = Len(frmProfile.txtProfile.Text)
50130  frmProfile.Show vbModal, Me
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmdProfileAdd_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub cmdProfileDelete_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim aw As Long, tStr As String, CurrentProfile As String, i As Long
50020  If cmbProfile.ListCount <= 1 Then
50030   Exit Sub
50040  End If
50050  CurrentProfile = cmbProfile.List(cmbProfile.ListIndex)
50060  tStr = ProfileAssociatedPrinters(CurrentProfile)
50070  If LenB(tStr) > 0 Then
50080   MsgBox LanguageStrings.MessagesMsg43 & " (" & tStr & ")"
50090   Exit Sub
50100  End If
50110
50120  aw = MsgBox(Replace(LanguageStrings.MessagesMsg42, "%1", cmbProfile.List(cmbProfile.ListIndex)), vbQuestion Or vbYesNo)
50130  If aw = vbYes Then
50140   For i = cmbProfile.ListIndex + 1 To cmbProfile.ListCount - 1
50150    ProfileOptions(i - 1) = ProfileOptions(i)
50160   Next i
50170   ReDim Preserve ProfileOptions(cmbProfile.ListCount - 2)
50180   cmbProfile.RemoveItem cmbProfile.ListIndex
50190   cmbProfile.ListIndex = 0
50200  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmdProfileDelete_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub cmdProfileLoad_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim FilterIndex As Long, files As Collection, dummyOptions As tOptions, tempOptions As tOptions
50020  FilterIndex = OpenFileDialog(files, cmbProfile.List(cmbProfile.ListIndex), _
   "PDFCreator options files (*.ini)|*.ini|All files (*.*)|*.*", "*.ini", GetMyFiles, _
   App.ProductName, OFN_ALLOWMULTISELECT + OFN_EXPLORER + OFN_FILEMUSTEXIST + OFN_LONGNAMES + OFN_NODEREFERENCELINKS, Me.hwnd)
50050  If FilterIndex > 0 Then
50060   tempOptions = ReadOptionsINI(dummyOptions, files(1), True)
50070   ProfileOptions(cmbProfile.ListIndex) = tempOptions
50080   Options1 = ProfileOptions(cmbProfile.ListIndex)
50090   Options1.Language = CurrentLanguage
50100   SetOptions
50110  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmdProfileLoad_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub cmdProfileRename_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim resS As String, i As Long, res As Long
50020
50030  Dim Profiles As New Collection
50040  For i = 0 To cmbProfile.ListCount - 1
50050   Profiles.Add cmbProfile.List(i)
50060  Next i
50070
50080  Set frmProfile.Profiles = Profiles
50090  frmProfile.dmFrProfile.Caption = LanguageStrings.OptionsProfileRenameProfile
50100  frmProfile.ProfileAction = eProfileAction.RenameProfileAction
50110  frmProfile.txtProfile.Text = cmbProfile.List(cmbProfile.ListIndex)
50120  frmProfile.txtProfile.SelStart = Len(frmProfile.txtProfile.Text)
50130  frmProfile.CurrentProfile = cmbProfile.List(cmbProfile.ListIndex)
50140  frmProfile.Show vbModal, Me
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmdProfileRename_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub cmdProfileSave_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim FName As String, res As Long, tempOptions As tOptions
50020  res = SaveFileDialog(FName, cmbProfile.List(cmbProfile.ListIndex), "PDFCreator options files (*.ini)|*.ini|All files (*.*)|*.*", "*.ini", _
  GetMyFiles, App.ProductName, OFN_EXPLORER + OFN_PATHMUSTEXIST + OFN_LONGNAMES + OFN_HIDEREADONLY + OFN_OVERWRITEPROMPT, Me.hwnd)
50040  If res > 0 Then
50050   tempOptions = GetOptionsFromUserControls(ProfileOptions(cmbProfile.ListIndex))   ' Get the current settings settings
50060   SaveOptionsINI tempOptions, FName
50070  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmdProfileSave_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If KeyCode = vbKeyF1 Then
50020   KeyCode = 0
50031   Select Case trvOptions.SelectedItem.key
         Case "Program", "ProgramGeneral"
50050     Call HTMLHelp_ShowTopic("html\general-settings.html")
50060    Case "ProgramGhostscript"
50070     Call HTMLHelp_ShowTopic("html\ghostscript-settings.html")
50080    Case "ProgramDocument"
50090     Call HTMLHelp_ShowTopic("html\document-properties.html")
50100    Case "ProgramSave"
50110     Call HTMLHelp_ShowTopic("html\save-settings.html")
50120    Case "ProgramAutosave"
50130     Call HTMLHelp_ShowTopic("html\autosave-mode.html")
50140    Case "ProgramActions"
50150     Call HTMLHelp_ShowTopic("html\actions.html")
50160    Case "ProgramPrint"
50170     Call HTMLHelp_ShowTopic("html\print.html")
50180    Case "ProgramFonts"
50190     Call HTMLHelp_ShowTopic("html\font-settings.html")
50200    Case "ProgramLanguages"
50210     Call HTMLHelp_ShowTopic("html\change-the-language.html")
50220    Case "Formats", "FormatsPDF"
50230     If trvOptions.SelectedItem.key = "FormatsPDF" Then
50241       Select Case optFormatPDF.PDFOptionsIndex
             Case 1
50260         Call HTMLHelp_ShowTopic("html\general.html")
50270        Case 2
50280         Call HTMLHelp_ShowTopic("html\compression.html")
50290        Case 3
50300         Call HTMLHelp_ShowTopic("html\fonts.html")
50310        Case 4
50320         Call HTMLHelp_ShowTopic("html\colors.html")
50330        Case 5
50340         Call HTMLHelp_ShowTopic("html\security.html")
50350        Case 6
50360         Call HTMLHelp_ShowTopic("html\signing.html")
50370       Case Else
50380        Call HTMLHelp_ShowTopic("html\general.html")
50390       End Select
50400      Else
50410       Call HTMLHelp_ShowTopic("html\general.html")
50420     End If
50430    Case "FormatsPNG"
50440     Call HTMLHelp_ShowTopic("html\png.html")
50450    Case "FormatsJPEG"
50460     Call HTMLHelp_ShowTopic("html\jpeg.html")
50470    Case "FormatsBMP"
50480     Call HTMLHelp_ShowTopic("html\bmp.html")
50490    Case "FormatsPCX"
50500     Call HTMLHelp_ShowTopic("html\pcx.html")
50510    Case "FormatsTIFF"
50520     Call HTMLHelp_ShowTopic("html\tiff.html")
50530    Case "FormatsPS"
50540     Call HTMLHelp_ShowTopic("html\ps.html")
50550    Case "FormatsEPS"
50560     Call HTMLHelp_ShowTopic("html\eps.html")
50570    Case "FormatsTXT"
50580     Call HTMLHelp_ShowTopic("html\text.html")
50590    Case "FormatsPSD"
50600     Call HTMLHelp_ShowTopic("html\psd.html")
50610    Case "FormatsPCL"
50620     Call HTMLHelp_ShowTopic("html\pcl.html")
50630    Case "FormatsRAW"
50640     Call HTMLHelp_ShowTopic("html\raw.html")
50650    Case "FormatsSVG"
50660     Call HTMLHelp_ShowTopic("html\svg.html")
50670    Case Else
50680     Call HTMLHelp_ShowTopic("html\general-settings.html")
50690    End Select
50700  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "Form_KeyDown")
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
50010  If Not LoadReady Then
50020   Exit Sub
50030  End If
50040
50050  With LanguageStrings
50060   dmFraProfile.Caption = .OptionsProfile
50070   cmdProfileAdd.ToolTipText = .OptionsProfileAdd
50080   cmdProfileDelete.ToolTipText = .OptionsProfileDel
50090   cmdProfileRename.ToolTipText = .OptionsProfileRenameProfile
50100   cmdProfileSave.ToolTipText = .OptionsProfileSaveToDisc
50110   cmdProfileLoad.ToolTipText = .OptionsProfileLoadFromDisc
50120   cmbProfile.List(0) = .OptionsProfileDefaultName
50130
50140   dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50150   Me.Caption = .DialogPrinterOptions
50160   cmdCancel.Caption = .OptionsCancel
50170   cmdReset.Caption = .OptionsReset
50180   cmdSave.Caption = .OptionsSave
50190
50200   trvOptions.Nodes("Program").Text = .OptionsTreeProgram
50210   trvOptions.Nodes("ProgramGeneral").Text = .OptionsProgramGeneralSymbol
50220   trvOptions.Nodes("ProgramGhostscript").Text = .OptionsProgramGhostscriptSymbol
50230   trvOptions.Nodes("ProgramDocument").Text = .OptionsProgramDocumentSymbol
50240   trvOptions.Nodes("ProgramSave").Text = .OptionsProgramSaveSymbol
50250   trvOptions.Nodes("ProgramAutosave").Text = .OptionsProgramAutosaveSymbol
50260   trvOptions.Nodes("ProgramActions").Text = .OptionsProgramActionsSymbol
50270   trvOptions.Nodes("ProgramPrint").Text = .OptionsProgramPrintSymbol
50280   trvOptions.Nodes("ProgramFonts").Text = .OptionsProgramFontSymbol
50290   trvOptions.Nodes("ProgramLanguages").Text = .OptionsProgramLanguagesSymbol
50300
50310   trvOptions.Nodes("Formats").Text = .OptionsTreeFormats
50320   trvOptions.Nodes("FormatsPDF").Text = .OptionsPDFSymbol
50330   trvOptions.Nodes("FormatsPNG").Text = .OptionsPNGSymbol
50340   trvOptions.Nodes("FormatsJPEG").Text = .OptionsJPEGSymbol
50350   trvOptions.Nodes("FormatsBMP").Text = .OptionsBMPSymbol
50360   trvOptions.Nodes("FormatsPCX").Text = .OptionsPCXSymbol
50370   trvOptions.Nodes("FormatsTIFF").Text = .OptionsTIFFSymbol
50380   trvOptions.Nodes("FormatsPS").Text = .OptionsPSSymbol
50390   trvOptions.Nodes("FormatsEPS").Text = .OptionsEPSSymbol
50400   trvOptions.Nodes("FormatsTXT").Text = .OptionsTXTSymbol
50410   trvOptions.Nodes("FormatsPSD").Text = .OptionsPSDSymbol
50420   trvOptions.Nodes("FormatsPCL").Text = .OptionsPCLSymbol
50430   trvOptions.Nodes("FormatsRAW").Text = .OptionsRAWSymbol
50440   trvOptions.Nodes("FormatsSVG").Text = .OptionsSVGSymbol
50450
50460   lblOptions.Caption = .OptionsProgramLanguagesDescription
50470  End With
50480  optActions.SetLanguageStrings
50490  optAutosave.SetLanguageStrings
50500 ' optDirectories.SetLanguageStrings
50510  optDocument.SetLanguageStrings
50520  optFonts.SetLanguageStrings
50530  optFormatPNG.SetLanguageStrings
50540  optFormatJPEG.SetLanguageStrings
50550  optFormatBMP.SetLanguageStrings
50560  optFormatPCX.SetLanguageStrings
50570  optFormatTIFF.SetLanguageStrings
50580  optFormatPDF.SetLanguageStrings
50590  optFormatPS.SetLanguageStrings
50600  optFormatEPS.SetLanguageStrings
50610  optFormatTXT.SetLanguageStrings
50620  optFormatPSD.SetLanguageStrings
50630  optFormatPCL.SetLanguageStrings
50640  optFormatRAW.SetLanguageStrings
50650  optFormatSVG.SetLanguageStrings
50660 ' optFormatXCF.SetLanguageStrings
50670
50680  optGeneral.SetLanguageStrings
50690  optGhostscript.SetLanguageStrings
50700  optLanguages.SetLanguageStrings
50710  optPrint.SetLanguageStrings
50720  optSave.SetLanguageStrings
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "ChangeLanguage")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub cmdCancel_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim f As Form, LanguagePath As String
50020
50030  If optFonts.SetTestFontBack Then
50040   With Options
50050    SetFontControls Me.Controls, .ProgramFont, .ProgramFontCharset, .ProgramFontSize
50060    SetFontControls frmMain.Controls, .ProgramFont, .ProgramFontCharset, .ProgramFontSize
50070   End With
50080  End If
50090
50100  If CurrentLanguage <> Options.Language Then
50110   SetLanguage oldLanguage
50120   LanguagePath = CompletePath(PDFCreatorApplicationPath) & "Languages\"
50130   LoadLanguage LanguagePath & oldLanguage & ".ini"
50140   For Each f In Forms
50150    f.ChangeLanguage
50160   Next
50170  End If
50180
50190  Unload Me
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmdCancel_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub cmdReset_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim res As Long
50020  res = MsgBox(LanguageStrings.MessagesMsg03, vbYesNo)
50030  If res = vbYes Then
50040   Options1 = StandardOptions
50050
50060   optActions.SetOptions
50070   optAutosave.SetOptions
50080 '  optDirectories.SetOptions
50090   optDocument.SetOptions
50100   optFonts.SetOptions
50110   optFormatPNG.SetOptions
50120   optFormatJPEG.SetOptions
50130   optFormatBMP.SetOptions
50140   optFormatPCX.SetOptions
50150   optFormatTIFF.SetOptions
50160   optFormatPDF.SetOptions
50170   optFormatPS.SetOptions
50180   optFormatEPS.SetOptions
50190   optFormatTXT.SetOptions
50200   optFormatPSD.SetOptions
50210   optFormatPCL.SetOptions
50220   optFormatRAW.SetOptions
50230   optFormatSVG.SetOptions
50240 '  optFormatXCF.SetOptions
50250
50260   optGeneral.SetOptions
50270   optGhostscript.SetOptions
50280   optLanguages.SetOptions
50290   optPrint.SetOptions
50300   optSave.SetOptions
50310
50320   With Options
50330    SetFontControls Me.Controls, .ProgramFont, .ProgramFontCharset, .ProgramFontSize
50340    SetFontControls frmMain.Controls, .ProgramFont, .ProgramFontCharset, .ProgramFontSize
50350   End With
50360  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmdReset_Click")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub SetUserControlsFont()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  optActions.SetFont
50020  optAutosave.SetFont
50030 ' optDirectories.SetFont
50040  optDocument.SetFont
50050  optFonts.SetFont
50060  optFormatPNG.SetFont
50070  optFormatJPEG.SetFont
50080  optFormatBMP.SetFont
50090  optFormatPCX.SetFont
50100  optFormatTIFF.SetFont
50110  optFormatPDF.SetFont
50120  optFormatPS.SetFont
50130  optFormatEPS.SetFont
50140  optFormatTXT.SetFont
50150  optFormatPSD.SetFont
50160  optFormatPCL.SetFont
50170  optFormatRAW.SetFont
50180  optFormatSVG.SetFont
50190 ' optFormatXCF.SetFont
50200
50210  optGeneral.SetFont
50220  optGhostscript.SetFont
50230  optLanguages.SetFont
50240  optPrint.SetFont
50250  optSave.SetFont
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "SetUserControlsFont")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Function GetOptionsFromUserControls(DefaultOptions As tOptions) As tOptions
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Options1 = DefaultOptions
50020  optActions.GetOptions
50030  optAutosave.GetOptions
50040 ' optDirectories.GetOptions
50050  optDocument.GetOptions
50060  optFonts.GetOptions
50070  optFormatPNG.GetOptions
50080  optFormatJPEG.GetOptions
50090  optFormatBMP.GetOptions
50100  optFormatPCX.GetOptions
50110  optFormatTIFF.GetOptions
50120  optFormatPDF.GetOptions
50130  optFormatPS.GetOptions
50140  optFormatEPS.GetOptions
50150  optFormatTXT.GetOptions
50160  optFormatPSD.GetOptions
50170  optFormatPCL.GetOptions
50180  optFormatRAW.GetOptions
50190  optFormatSVG.GetOptions
50200 ' optFormatXCF.GetOptions
50210
50220  optGeneral.GetOptions
50230  optGhostscript.GetOptions
50240  optLanguages.GetOptions
50250  optPrint.GetOptions
50260  optSave.GetOptions
50270
50280  Options1.Counter = Options.Counter
50290  GetOptionsFromUserControls = Options1
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "GetOptionsFromUserControls")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Sub cmdSave_Click()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim tRestart As Boolean, newLanguage As String, Profiles As Collection, i As Long, j As Long, _
  PrinterProfiles As Collection, sa(2) As String, tStr As String
50030
50040  ' Save all Options/Profiles
50050  ProfileOptions(cmbProfile.ListIndex) = GetOptionsFromUserControls(ProfileOptions(cmbProfile.ListIndex)) ' Get the current settings
50060
50070  tRestart = False
50080  If UCase$(Options.DirectoryGhostscriptBinaries) <> UCase$(ProfileOptions(0).DirectoryGhostscriptBinaries) Then
50090   tRestart = True
50100  End If
50110
50120  ' Save default options
50130  Options = ProfileOptions(0)
50140  Options.Language = CurrentLanguage
50150  SaveOptions Options
50160
50170  ' Delete all unnecessary/renamed profiles
50180  Set Profiles = GetProfiles
50190  For i = 1 To Profiles.Count
50200   For j = 1 To cmbProfile.ListCount
50210    If Profiles(i) = cmbProfile.List(j) Then
50220     Exit For
50230    End If
50240   Next j
50250   If j > cmbProfile.ListCount Then
50260    DeleteProfile Profiles(i)
50270   End If
50280  Next i
50290
50300  ' Add all new/renamed profiles
50310  For i = 1 To cmbProfile.ListCount - 1
50320   ProfileOptions(i).LastUpdateCheck = Options.LastUpdateCheck
50330   SaveOptions ProfileOptions(i), cmbProfile.List(i)
50340  Next i
50350  ' Ready profiles saving
50360
50370  Set PrinterProfiles = New Collection
50380  For i = 1 To TempPrinterProfiles.Count
50390   sa(0) = TempPrinterProfiles(i)(0)
50400   sa(1) = TempPrinterProfiles(i)(2)
50410   PrinterProfiles.Add sa
50420  Next i
50430
50440  SavePrinterProfiles PrinterProfiles
50450
50460  SetHelpfile
50470
50480  If IsWin9xMe = False Then
50491   Select Case Options.ProcessPriority
         Case 0: 'Idle
50510     SetProcessPriority Idle
50520    Case 1: 'Normal
50530     SetProcessPriority Normal
50540    Case 2: 'High
50550     SetProcessPriority High
50560    Case 3: 'Realtime
50570     SetProcessPriority RealTime
50580   End Select
50590  End If
50600  If tRestart = True Then
50610   Restart = True
50620  End If
50630  Unload Me
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "cmdSave_Click")
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
50010  Const ControlTop = 100, fraPDFTop = 1360, fraPDFLeft = 2960
50020  Dim pic As New StdPicture, i As Long, tStr As String, gsvers As Collection, _
  fc As Long, reg As clsRegistry, tsf() As String, tStr2 As String, files As Collection, _
  Path As String, filename As String, Ext As String, p As Printer
50050  Dim ctl1 As Control, ctl2 As Control, sa(2) As String
50060  Dim Profiles As Collection, PrinterProfiles As Collection
50070  Dim nodeProgram As Node, nodeFormats As Node
50080  Dim tmpProfiles As Collection
50090
50100
50110  Set TempPrinterProfiles = New Collection
50120
50130  Options1 = Options
50140  CurrentLanguage = Options.Language
50150
50160  UnloadForm = False
50170  KeyPreview = True
50180
50190  cmbProfile.Top = (cmdProfileAdd.Height - cmbProfile.Height) / 2 + cmdProfileAdd.Top
50200
50210  oldLanguage = Options.Language
50220
50230  With Screen
50240   .MousePointer = vbHourglass
50250   Move (.Width - Width) / 2, (.Height - Height) / 2
50260  End With
50270
50280  trvOptions.Indentation = 0
50290  trvOptions.LineStyle = tvwTreeLines
50300  Set trvOptions.ImageList = imlIeb
50310  trvOptions.Nodes.Clear
50320  With LanguageStrings
50330   Set nodeProgram = trvOptions.Nodes.Add(, , "Program", .OptionsTreeProgram, 1)
50340   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramGeneral", .OptionsProgramGeneralSymbol, 1
50350   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramGhostscript", .OptionsProgramGhostscriptSymbol, 2
50360   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramDocument", .OptionsProgramDocumentSymbol, 3
50370   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramSave", .OptionsProgramSaveSymbol, 4
50380   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramAutosave", .OptionsProgramAutosaveSymbol, 5
50390   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramActions", .OptionsProgramActionsSymbol, 7
50400   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramPrint", .OptionsProgramPrintSymbol, 8
50410   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramFonts", .OptionsProgramFontSymbol, 9
50420   trvOptions.Nodes.Add nodeProgram, tvwChild, "ProgramLanguages", .OptionsProgramLanguagesSymbol, 10
50430   Set nodeFormats = trvOptions.Nodes.Add(, , "Formats", .OptionsTreeFormats, 11)
50440   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsPDF", .OptionsPDFSymbol, 11
50450   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsPNG", .OptionsPNGSymbol, 12
50460   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsJPEG", .OptionsJPEGSymbol, 13
50470   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsBMP", .OptionsBMPSymbol, 14
50480   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsPCX", .OptionsPCXSymbol, 15
50490   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsTIFF", .OptionsTIFFSymbol, 16
50500   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsPS", .OptionsPSSymbol, 17
50510   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsEPS", .OptionsEPSSymbol, 18
50520   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsTXT", .OptionsTXTSymbol, 21
50530   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsPSD", .OptionsPSDSymbol, 22
50540   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsPCL", .OptionsPCLSymbol, 23
50550   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsRAW", .OptionsRAWSymbol, 24
50560   trvOptions.Nodes.Add nodeFormats, tvwChild, "FormatsSVG", .OptionsSVGSymbol, 26
50570  End With
50580  nodeProgram.Expanded = True
50590  nodeFormats.Expanded = True
50600
50610  With LanguageStrings
50620   Set picOptions = LoadResPicture(2130, vbResIcon)
50630   Me.Caption = .DialogPrinterOptions
50640   cmdCancel.Caption = .OptionsCancel
50650   cmdReset.Caption = .OptionsReset
50660   cmdSave.Caption = .OptionsSave
50670  End With
50680
50690  SetFrame dmFraDescription
50700  SetFrame dmFraProfile
50710
50720  ' Add ActionsControl
50730  Set optActionsControl = Controls.Add("PDFCreator.ctlOptActions", "ctlOptActions")
50740  optActionsControl.Width = dmFraDescription.Width
50750  Set optActions = optActionsControl.object
50760  optActions.SetLanguageStrings
50770  optActions.SetOptions
50780  ' Add AutosaveControl
50790  Set optAutosaveControl = Controls.Add("PDFCreator.ctlOptAutosave", "ctlOptAutosave")
50800  optAutosaveControl.Width = dmFraDescription.Width
50810  Set optAutosave = optAutosaveControl.object
50820  optAutosave.SetLanguageStrings
50830  optAutosave.SetOptions
50840  ' Add DirectoriesControl
50850 ' Set optDirectoriesControl = Controls.Add("PDFCreator.ctlOptDirectories", "ctlOptDirectories")
50860 ' optDirectoriesControl.Width = dmFraDescription.Width
50870 ' Set optDirectories = optDirectoriesControl.object
50880 ' optDirectories.SetLanguageStrings
50890 ' optDirectories.SetOptions
50900  ' Add DocumentControl
50910  Set optDocumentControl = Controls.Add("PDFCreator.ctlOptDocument", "ctlOptDocument")
50920  optDocumentControl.Width = dmFraDescription.Width
50930  Set optDocument = optDocumentControl.object
50940  optDocument.SetLanguageStrings
50950  optDocument.SetOptions
50960  ' Add FontsControl
50970  Set optFontsControl = Controls.Add("PDFCreator.ctlOptFonts", "ctlOptFonts")
50980  optFontsControl.Width = dmFraDescription.Width
50990  Set optFonts = optFontsControl.object
51000  optFonts.SetLanguageStrings
51010  optFonts.SetOptions
51020  ' Add FormatPNGControl
51030  Set optFormatPNGControl = Controls.Add("PDFCreator.ctlOptFormatPNG", "ctlOptFormatPNG")
51040  optFormatPNGControl.Width = dmFraDescription.Width
51050  Set optFormatPNG = optFormatPNGControl.object
51060  optFormatPNG.SetLanguageStrings
51070  optFormatPNG.SetOptions
51080  ' Add FormatJPEQControl
51090  Set optFormatJPEGControl = Controls.Add("PDFCreator.ctlOptFormatJPEG", "ctlOptFormatJPEG")
51100  optFormatJPEGControl.Width = dmFraDescription.Width
51110  Set optFormatJPEG = optFormatJPEGControl.object
51120  optFormatJPEG.SetLanguageStrings
51130  optFormatJPEG.SetOptions
51140  ' Add FormatBMPControl
51150  Set optFormatBMPControl = Controls.Add("PDFCreator.ctlOptFormatBMP", "ctlOptFormatBMP")
51160  optFormatBMPControl.Width = dmFraDescription.Width
51170  Set optFormatBMP = optFormatBMPControl.object
51180  optFormatBMP.SetLanguageStrings
51190  optFormatBMP.SetOptions
51200  ' Add FormatPCXControl
51210  Set optFormatPCXControl = Controls.Add("PDFCreator.ctlOptFormatPCX", "ctlOptFormatPCX")
51220  optFormatPCXControl.Width = dmFraDescription.Width
51230  Set optFormatPCX = optFormatPCXControl.object
51240  optFormatPCX.SetLanguageStrings
51250  optFormatPCX.SetOptions
51260  ' Add FormatTIFFControl
51270  Set optFormatTIFFControl = Controls.Add("PDFCreator.ctlOptFormatTIFF", "ctlOptFormatTIFF")
51280  optFormatTIFFControl.Width = dmFraDescription.Width
51290  Set optFormatTIFF = optFormatTIFFControl.object
51300  optFormatTIFF.SetLanguageStrings
51310  optFormatTIFF.SetOptions
51320  ' Add FormatPDFControl
51330  Set optFormatPDFControl = Controls.Add("PDFCreator.ctlOptFormatPDF", "ctlOptFormatPDF")
51340  optFormatPDFControl.Width = dmFraDescription.Width
51350  Set optFormatPDF = optFormatPDFControl.object
51360  optFormatPDF.SetLanguageStrings
51370  optFormatPDF.SetOptions
51380  ' Add FormatPS
51390  Set optFormatPSControl = Controls.Add("PDFCreator.ctlOptFormatPS", "ctlOptFormatPS")
51400  optFormatPSControl.Width = dmFraDescription.Width
51410  Set optFormatPS = optFormatPSControl.object
51420  optFormatPS.SetLanguageStrings
51430  optFormatPS.SetOptions
51440  ' Add FormatEPSControl
51450  Set optFormatEPSControl = Controls.Add("PDFCreator.ctlOptFormatEPS", "ctlOptFormatEPS")
51460  optFormatEPSControl.Width = dmFraDescription.Width
51470  Set optFormatEPS = optFormatEPSControl.object
51480  optFormatEPS.SetLanguageStrings
51490  optFormatEPS.SetOptions
51500  ' Add FormatTXTControl
51510  Set optFormatTXTControl = Controls.Add("PDFCreator.ctlOptFormatTXT", "ctlOptFormatTXT")
51520  optFormatTXTControl.Width = dmFraDescription.Width
51530  Set optFormatTXT = optFormatTXTControl.object
51540  optFormatTXT.SetLanguageStrings
51550  optFormatTXT.SetOptions
51560  ' Add FormatPSDControl
51570  Set optFormatPSDControl = Controls.Add("PDFCreator.ctlOptFormatPSD", "ctlOptFormatPSD")
51580  optFormatPSDControl.Width = dmFraDescription.Width
51590  Set optFormatPSD = optFormatPSDControl.object
51600  optFormatPSD.SetLanguageStrings
51610  optFormatPSD.SetOptions
51620  ' Add FormatPCLControl
51630  Set optFormatPCLControl = Controls.Add("PDFCreator.ctlOptFormatPCL", "ctlOptFormatPCL")
51640  optFormatPCLControl.Width = dmFraDescription.Width
51650  Set optFormatPCL = optFormatPCLControl.object
51660  optFormatPCL.SetLanguageStrings
51670  optFormatPCL.SetOptions
51680  ' Add FormatRAWControl
51690  Set optFormatRAWControl = Controls.Add("PDFCreator.ctlOptFormatRAW", "ctlOptFormatRAW")
51700  optFormatRAWControl.Width = dmFraDescription.Width
51710  Set optFormatRAW = optFormatRAWControl.object
51720  optFormatRAW.SetLanguageStrings
51730  optFormatRAW.SetOptions
51740  ' Add FormatSVGControl
51750  Set optFormatSVGControl = Controls.Add("PDFCreator.ctlOptFormatSVG", "ctlOptFormatSVG")
51760  optFormatSVGControl.Width = dmFraDescription.Width
51770  Set optFormatSVG = optFormatSVGControl.object
51780  optFormatSVG.SetLanguageStrings
51790  optFormatSVG.SetOptions
51800 ' ' Add FormatXCFControl - Doesn't work
51810 ' Set optFormatXCFControl = Controls.Add("PDFCreator.ctlOptFormatXCF", "ctlOptFormatXCF")
51820 ' optFormatXCFControl.Width = dmFraDescription.Width
51830 ' Set optFormatXCF = optFormatXCFControl.object
51840 ' optFormatXCF.SetLanguageStrings
51850 ' optFormatXCF.SetOptions
51860  ' Add GhostscriptControl
51870  Set optGhostscriptControl = Controls.Add("PDFCreator.ctlOptGhostscript", "ctlOptGhostscript")
51880  optGhostscriptControl.Width = dmFraDescription.Width
51890  Set optGhostscript = optGhostscriptControl.object
51900  optGhostscript.SetLanguageStrings
51910  optGhostscript.SetOptions
51920  ' Add LanguagesControl
51930  Set optLanguagesControl = Controls.Add("PDFCreator.ctlOptLanguages", "ctlOptLanguages")
51940  optLanguagesControl.Width = dmFraDescription.Width
51950  Set optLanguages = optLanguagesControl.object
51960  optLanguages.SetLanguageStrings
51970  optLanguages.SetOptions
51980  ' Add PrintControl
51990  Set optPrintControl = Controls.Add("PDFCreator.ctlOptPrint", "ctlOptPrint")
52000  optPrintControl.Width = dmFraDescription.Width
52010  Set optPrint = optPrintControl.object
52020  optPrint.SetLanguageStrings
52030  optPrint.SetOptions
52040  ' Add SaveControl
52050  '
52060  Set optSaveControl = Controls.Add("PDFCreator.ctlOptSave", "ctlOptSave")
52070  optSaveControl.Width = dmFraDescription.Width
52080  Set optSave = optSaveControl.object
52090  optSave.SetLanguageStrings
52100  optSave.SetOptions
52110
52120  ' Add GeneralControl
52130  '
52140  Set optGeneralControl = Controls.Add("PDFCreator.ctlOptGeneral", "ctlOptGeneral")
52150  optGeneralControl.Width = dmFraDescription.Width
52160  Set optGeneral = optGeneralControl.object
52170  optGeneral.SetLanguageStrings
52180  optGeneral.SetOptions
52190
52200  dmFraProfile.Caption = LanguageStrings.OptionsProfile
52210  cmbProfile.Clear
52220  cmbProfile.AddItem LanguageStrings.OptionsProfileDefaultName
52230
52240  Set Profiles = GetProfiles
52250  ReDim ProfileNames(Profiles.Count)
52260  ReDim ProfileOptions(Profiles.Count)
52270  ProfileNames(0) = LanguageStrings.OptionsProfileDefaultName
52280  ProfileOptions(0) = Options
52290
52300  With dmFraDescription
52310   .Caption = LanguageStrings.OptionsTreeProgram
52320   .Visible = True
52330
52340   optActionsControl.Top = .Top + .Height + ControlTop
52350   optActionsControl.Left = .Left
52360   optActionsControl.Width = .Width
52370   optAutosaveControl.Top = .Top + .Height + ControlTop
52380   optAutosaveControl.Left = .Left
52390   optAutosaveControl.Width = .Width
52400 '  optDirectoriesControl.Top = .Top + .Height + ControlTop
52410 '  optDirectoriesControl.Left = .Left
52420 '  optDirectoriesControl.Width = .Width
52430   optDocumentControl.Top = .Top + .Height + ControlTop
52440   optDocumentControl.Left = .Left
52450   optDocumentControl.Width = .Width
52460   optFontsControl.Top = .Top + .Height + ControlTop
52470   optFontsControl.Left = .Left
52480   optFontsControl.Width = .Width
52490   optFormatPNGControl.Top = .Top + .Height + ControlTop
52500   optFormatPNGControl.Left = .Left
52510   optFormatPNGControl.Width = .Width
52520   optFormatJPEGControl.Top = .Top + .Height + ControlTop
52530   optFormatJPEGControl.Left = .Left
52540   optFormatJPEGControl.Width = .Width
52550   optFormatBMPControl.Top = .Top + .Height + ControlTop
52560   optFormatBMPControl.Left = .Left
52570   optFormatBMPControl.Width = .Width
52580   optFormatPCXControl.Top = .Top + .Height + ControlTop
52590   optFormatPCXControl.Left = .Left
52600   optFormatPCXControl.Width = .Width
52610   optFormatTIFFControl.Top = .Top + .Height + ControlTop
52620   optFormatTIFFControl.Left = .Left
52630   optFormatTIFFControl.Width = .Width
52640   optFormatPDFControl.Top = .Top + .Height + ControlTop
52650   optFormatPDFControl.Left = .Left
52660   optFormatPDFControl.Width = .Width
52670   optFormatPSControl.Top = .Top + .Height + ControlTop
52680   optFormatPSControl.Left = .Left
52690   optFormatPSControl.Width = .Width
52700   optFormatEPSControl.Top = .Top + .Height + ControlTop
52710   optFormatEPSControl.Left = .Left
52720   optFormatEPSControl.Width = .Width
52730   optFormatTXTControl.Top = .Top + .Height + ControlTop
52740   optFormatTXTControl.Left = .Left
52750   optFormatTXTControl.Width = .Width
52760   optFormatPSDControl.Top = .Top + .Height + ControlTop
52770   optFormatPSDControl.Left = .Left
52780   optFormatPSDControl.Width = .Width
52790   optFormatPCLControl.Top = .Top + .Height + ControlTop
52800   optFormatPCLControl.Left = .Left
52810   optFormatPCLControl.Width = .Width
52820   optFormatRAWControl.Top = .Top + .Height + ControlTop
52830   optFormatRAWControl.Left = .Left
52840   optFormatRAWControl.Width = .Width
52850   optFormatSVGControl.Top = .Top + .Height + ControlTop
52860   optFormatSVGControl.Left = .Left
52870   optFormatSVGControl.Width = .Width
52880 '  optFormatXCFControl.Top = .Top + .Height + ControlTop
52890 '  optFormatXCFControl.Left = .Left
52900 '  optFormatXCFControl.Width = .Width
52910   optGeneralControl.Top = .Top + .Height + ControlTop
52920   optGeneralControl.Left = .Left
52930   optGeneralControl.Width = .Width
52940   optGhostscriptControl.Top = .Top + .Height + ControlTop
52950   optGhostscriptControl.Left = .Left
52960   optGhostscriptControl.Width = .Width
52970   optLanguagesControl.Top = .Top + .Height + ControlTop
52980   optLanguagesControl.Left = .Left
52990   optLanguagesControl.Width = .Width
53000   optPrintControl.Top = .Top + .Height + ControlTop
53010   optPrintControl.Left = .Left
53020   optPrintControl.Width = .Width
53030   optSaveControl.Top = .Top + .Height + ControlTop
53040   optSaveControl.Left = .Left
53050   optSaveControl.Width = .Width
53060
53070   cmdCancel.Left = .Left
53080   cmdReset.Left = .Left + (.Width - cmdReset.Width) / 2
53090   cmdSave.Left = .Left + .Width - cmdSave.Width
53100  End With
53110
53120  For i = 1 To Profiles.Count
53130   cmbProfile.AddItem Profiles(i)
53140   ProfileNames(i) = Profiles(i)
53150   ProfileOptions(i) = ReadOptions(True, , Profiles(i))
53160  Next i
53170  SetProfile CurrentPrinterProfile
53180
53190  If cmbProfile.ListIndex = 0 Then
53200    optGhostscript.ControlsEnabled = True
53210    optLanguages.ControlsEnabled = True
53220    cmdProfileRename.Enabled = False
53230    cmdProfileDelete.Enabled = False
53240   Else
53250    optGhostscript.ControlsEnabled = False
53260    optLanguages.ControlsEnabled = False
53270    cmdProfileRename.Enabled = True
53280    cmdProfileDelete.Enabled = True
53290  End If
53300
53310  Set PrinterProfiles = GetPrinterProfiles
53320  For i = 1 To PrinterProfiles.Count
53330   sa(0) = PrinterProfiles(i)(0)
53340   sa(1) = PrinterProfiles(i)(1)
53350   sa(2) = PrinterProfiles(i)(1)
53360   TempPrinterProfiles.Add sa
53370  Next i
53380
53390  With LanguageStrings
53400   cmdProfileAdd.ToolTipText = .OptionsProfileAdd
53410   cmdProfileDelete.ToolTipText = .OptionsProfileDel
53420   cmdProfileRename.ToolTipText = .OptionsProfileRenameProfile
53430   cmdProfileSave.ToolTipText = .OptionsProfileSaveToDisc
53440   cmdProfileLoad.ToolTipText = .OptionsProfileLoadFromDisc
53450   cmbProfile.List(0) = .OptionsProfileDefaultName
53460  End With
53470
53480  If ShowOnlyOptions = True Then
53490   FormInTaskbar Me, True, True
53500   Caption = "PDFCreator - " & Caption
53510  End If
53520
53530  ShowAcceleratorsInForm Me, True
53540
53550  Screen.MousePointer = vbNormal
53560
53570  With Options
53580   SetFontControls Me.Controls, .ProgramFont, .ProgramFontCharset, .ProgramFontSize
53590  End With
53600
53610  trvOptions.Nodes("Program").Selected = True
53620  SetSubOption "Program", True
53630  LastNodeKey = "Program"
53640
53650  If InstalledAsServer = True And IsAdmin = False Then
53660   cmdSave.Enabled = False
53670  End If
53680
53690  LoadReady = True
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "Form_Load")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub SetOptions()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  optActions.SetOptions
50020  optAutosave.SetOptions
50030 ' optDirectories.SetOptions
50040  optDocument.SetOptions
50050  optFonts.SetOptions
50060  optFormatPNG.SetOptions
50070  optFormatJPEG.SetOptions
50080  optFormatBMP.SetOptions
50090  optFormatPCX.SetOptions
50100  optFormatTIFF.SetOptions
50110  optFormatPDF.SetOptions
50120  optFormatPS.SetOptions
50130  optFormatEPS.SetOptions
50140  optFormatTXT.SetOptions
50150  optFormatPSD.SetOptions
50160  optFormatPCL.SetOptions
50170  optFormatRAW.SetOptions
50180  optFormatSVG.SetOptions
50190 ' optFormatXCF.SetOptions
50200  optGhostscript.SetOptions
50210  optLanguages.SetOptions
50220  optPrint.SetOptions
50230  optSave.SetOptions
50240
50250  optGeneral.SetOptions
50260
50270  With Options
50280   SetFontControls Me.Controls, .ProgramFont, .ProgramFontCharset, .ProgramFontSize
50290  End With
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "SetOptions")
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
50010  UnloadForm = True
50020  Me.Visible = False
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "Form_QueryUnload")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub trvOptions_NodeClick(ByVal Node As MSComctlLib.Node)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If LastNodeKey = Node.key Or (LastNodeKey = "Program" And Node.key = "ProgramGeneral") Or (LastNodeKey = "ProgramGeneral" And Node.key = "Program") Then
50020    Exit Sub
50030   Else
50040    LastNodeKey = Node.key
50050  End If
50060  If HKLMProfileExists(cmbProfile.List(cmbProfile.ListIndex)) And InstalledAsServer = False Then
50070    SetSubOption Node.key, False
50080   Else
50090    SetSubOption Node.key, True
50100  End If
50110  If cmbProfile.ListIndex > 0 Then
50120   optGeneral.ControlsEnabled = False
50130   optGhostscript.ControlsEnabled = False
50140   optFonts.ControlsEnabled = False
50150   optLanguages.ControlsEnabled = False
50160  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "trvOptions_NodeClick")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub SetSubOption(SubOptionName As String, SubOptionsEnabled As Boolean)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  optActionsControl.Visible = False
50020  optAutosaveControl.Visible = False
50030 ' optDirectoriesControl.Visible = False
50040  optDocumentControl.Visible = False
50050  optFontsControl.Visible = False
50060  optFormatPNGControl.Visible = False
50070  optFormatJPEGControl.Visible = False
50080  optFormatBMPControl.Visible = False
50090  optFormatPCXControl.Visible = False
50100  optFormatTIFFControl.Visible = False
50110  optFormatPDFControl.Visible = False
50120  optFormatPSControl.Visible = False
50130  optFormatEPSControl.Visible = False
50140  optFormatTXTControl.Visible = False
50150  optFormatPSDControl.Visible = False
50160  optFormatPCLControl.Visible = False
50170  optFormatRAWControl.Visible = False
50180  optFormatSVGControl.Visible = False
50190 ' optFormatXCFControl.Visible = False
50200  optGeneralControl.Visible = False
50210  optGhostscriptControl.Visible = False
50220  optLanguagesControl.Visible = False
50230  optPrintControl.Visible = False
50240  optSaveControl.Visible = False
50250
50261  Select Case UCase$(SubOptionName)
        Case "PROGRAM", "PROGRAMGENERAL"
50280    Set picOptions = LoadResPicture(2130, vbResIcon)
50290    lblOptions.Caption = LanguageStrings.OptionsProgramGeneralDescription
50300    optGeneral.SetControlsEnabled SubOptionsEnabled
50310    optGeneralControl.Visible = True
50320    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50330   Case "PROGRAMGHOSTSCRIPT"
50340    Set picOptions = LoadResPicture(2119, vbResIcon)
50350    lblOptions.Caption = LanguageStrings.OptionsProgramGhostscriptDescription
50360    optGhostscript.SetControlsEnabled SubOptionsEnabled
50370    optGhostscriptControl.Visible = True
50380    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50390   Case "PROGRAMDOCUMENT"
50400    Set picOptions = LoadResPicture(2105, vbResIcon)
50410    lblOptions.Caption = LanguageStrings.OptionsProgramDocumentDescription
50420    optDocument.SetControlsEnabled SubOptionsEnabled
50430    optDocumentControl.Visible = True
50440    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50450   Case "PROGRAMSAVE"
50460    Set picOptions = LoadResPicture(2106, vbResIcon)
50470    lblOptions.Caption = LanguageStrings.OptionsProgramSaveDescription
50480    optSave.SetControlsEnabled SubOptionsEnabled
50490    optSaveControl.Visible = True
50500    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50510   Case "PROGRAMAUTOSAVE"
50520    Set picOptions = LoadResPicture(2103, vbResIcon)
50530    lblOptions.Caption = LanguageStrings.OptionsProgramAutosaveDescription
50540    optAutosave.SetControlsEnabled SubOptionsEnabled
50550    optAutosaveControl.Visible = True
50560    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50570 '  Case "PROGRAMDIRECTORIES"
50580 '   Set picOptions = LoadResPicture(2104, vbResIcon)
50590 '   lblOptions.Caption = LanguageStrings.OptionsProgramDirectoriesDescription
50600 '   optDirectoriesControl.Visible = True
50610 '   dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50620   Case "PROGRAMACTIONS"
50630    Set picOptions = LoadResPicture(2121, vbResIcon)
50640    lblOptions.Caption = LanguageStrings.OptionsProgramActionsDescription
50650    optActions.SetControlsEnabled SubOptionsEnabled
50660    optActionsControl.Visible = True
50670    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50680   Case "PROGRAMPRINT"
50690    Set picOptions = LoadResPicture(2122, vbResIcon)
50700    lblOptions.Caption = LanguageStrings.OptionsProgramPrintDescription
50710    optPrint.SetControlsEnabled SubOptionsEnabled
50720    optPrintControl.Visible = True
50730    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50740   Case "PROGRAMFONTS"
50750    Set picOptions = LoadResPicture(2102, vbResIcon)
50760    lblOptions.Caption = LanguageStrings.OptionsProgramFontDescription
50770    optFonts.SetControlsEnabled SubOptionsEnabled
50780    optFontsControl.Visible = True
50790    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50800   Case "PROGRAMLANGUAGES"
50810    Set picOptions = LoadResPicture(2123, vbResIcon)
50820    lblOptions.Caption = LanguageStrings.OptionsProgramLanguagesDescription
50830    optLanguages.SetControlsEnabled SubOptionsEnabled
50840    optLanguagesControl.Visible = True
50850    dmFraDescription.Caption = LanguageStrings.OptionsTreeProgram
50860   Case "FORMATS", "FORMATSPDF"
50870    Set picOptions = LoadResPicture(2111, vbResIcon)
50880    lblOptions.Caption = LanguageStrings.OptionsPDFDescription
50890    optFormatPDF.SetControlsEnabled SubOptionsEnabled
50900    optFormatPDFControl.Visible = True
50910    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
50920   Case "FORMATSPNG"
50930    Set picOptions = LoadResPicture(2112, vbResIcon)
50940    lblOptions.Caption = LanguageStrings.OptionsPNGDescription
50950    optFormatPNG.SetControlsEnabled SubOptionsEnabled
50960    optFormatPNGControl.Visible = True
50970    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
50980   Case "FORMATSJPEG"
50990    Set picOptions = LoadResPicture(2113, vbResIcon)
51000    lblOptions.Caption = LanguageStrings.OptionsJPEGDescription
51010    optFormatJPEG.SetControlsEnabled SubOptionsEnabled
51020    optFormatJPEGControl.Visible = True
51030    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51040   Case "FORMATSBMP"
51050    Set picOptions = LoadResPicture(2114, vbResIcon)
51060    lblOptions.Caption = LanguageStrings.OptionsBMPDescription
51070    optFormatBMP.SetControlsEnabled SubOptionsEnabled
51080    optFormatBMPControl.Visible = True
51090    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51100   Case "FORMATSPCX"
51110    Set picOptions = LoadResPicture(2115, vbResIcon)
51120    lblOptions.Caption = LanguageStrings.OptionsPCXDescription
51130    optFormatPCX.SetControlsEnabled SubOptionsEnabled
51140    optFormatPCXControl.Visible = True
51150    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51160   Case "FORMATSTIFF"
51170    Set picOptions = LoadResPicture(2116, vbResIcon)
51180    lblOptions.Caption = LanguageStrings.OptionsTIFFDescription
51190    optFormatTIFF.SetControlsEnabled SubOptionsEnabled
51200    optFormatTIFFControl.Visible = True
51210    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51220   Case "FORMATSPS"
51230    Set picOptions = LoadResPicture(2117, vbResIcon)
51240    lblOptions.Caption = LanguageStrings.OptionsPSDescription
51250    optFormatPS.SetControlsEnabled SubOptionsEnabled
51260    optFormatPSControl.Visible = True
51270    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51280   Case "FORMATSEPS"
51290    Set picOptions = LoadResPicture(2118, vbResIcon)
51300    lblOptions.Caption = LanguageStrings.OptionsEPSDescription
51310    optFormatEPS.SetControlsEnabled SubOptionsEnabled
51320    optFormatEPSControl.Visible = True
51330    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51340   Case "FORMATSTXT"
51350    Set picOptions = LoadResPicture(2124, vbResIcon)
51360    lblOptions.Caption = LanguageStrings.OptionsTXTDescription
51370    optFormatTXT.SetControlsEnabled SubOptionsEnabled
51380    optFormatTXTControl.Visible = True
51390    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51400   Case "FORMATSPSD"
51410    Set picOptions = LoadResPicture(2125, vbResIcon)
51420    lblOptions.Caption = LanguageStrings.OptionsPSDDescription
51430    optFormatPSD.SetControlsEnabled SubOptionsEnabled
51440    optFormatPSDControl.Visible = True
51450    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51460   Case "FORMATSPCL"
51470    Set picOptions = LoadResPicture(2126, vbResIcon)
51480    lblOptions.Caption = LanguageStrings.OptionsPCLDescription
51490    optFormatPCL.SetControlsEnabled SubOptionsEnabled
51500    optFormatPCLControl.Visible = True
51510    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51520   Case "FORMATSRAW"
51530    Set picOptions = LoadResPicture(2127, vbResIcon)
51540    lblOptions.Caption = LanguageStrings.OptionsRAWDescription
51550    optFormatRAW.SetControlsEnabled SubOptionsEnabled
51560    optFormatRAWControl.Visible = True
51570    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51580   Case "FORMATSSVG"
51590    Set picOptions = LoadResPicture(2129, vbResIcon)
51600    lblOptions.Caption = LanguageStrings.OptionsSVGDescription
51610    optFormatSVG.SetControlsEnabled SubOptionsEnabled
51620    optFormatSVGControl.Visible = True
51630    dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51640 '  Case "FORMATSXCF"
51650 '   Set picOptions = LoadResPicture(2128, vbResIcon)
51660 '   lblOptions.Caption = LanguageStrings.OptionsXCFDescription
51670 '   optFormatXCFControl.Visible = True
51680 '   dmFraDescription.Caption = LanguageStrings.OptionsTreeFormats
51690  End Select
51700
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "SetSubOption")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Public Sub SetFrames(OptionsDesign As Long)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  optActions.SetFrames OptionsDesign
50020  optAutosave.SetFrames OptionsDesign
50030 ' optDirectories.SetFrames OptionsDesign
50040  optDocument.SetFrames OptionsDesign
50050  optFonts.SetFrames OptionsDesign
50060  optFormatBMP.SetFrames OptionsDesign
50070  optFormatEPS.SetFrames OptionsDesign
50080  optFormatJPEG.SetFrames OptionsDesign
50090  optFormatPCL.SetFrames OptionsDesign
50100  optFormatPCX.SetFrames OptionsDesign
50110  optFormatPDF.SetFrames OptionsDesign
50120  optFormatPNG.SetFrames OptionsDesign
50130  optFormatPS.SetFrames OptionsDesign
50140  optFormatPSD.SetFrames OptionsDesign
50150  optFormatRAW.SetFrames OptionsDesign
50160  optFormatSVG.SetFrames OptionsDesign
50170  optFormatTIFF.SetFrames OptionsDesign
50180  optFormatTXT.SetFrames OptionsDesign
50190  optGeneral.SetFrames OptionsDesign
50200  optGhostscript.SetFrames OptionsDesign
50210  optLanguages.SetFrames OptionsDesign
50220  optPrint.SetFrames OptionsDesign
50230  optSave.SetFrames OptionsDesign
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "SetFrames")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Sub SetProfile(Optional ByVal ProfileName As String = "") ' Empty profilename for default profile
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim i As Long
50020  If cmbProfile.ListIndex < 0 Then
50030    OldProfile = 0
50040   Else
50050    OldProfile = cmbProfile.ListIndex
50060  End If
50070  ProfileName = Trim$(ProfileName)
50080  If LenB(ProfileName) = 0 Then
50090   cmbProfile.ListIndex = 0
50100   Exit Sub
50110  End If
50120  For i = 1 To cmbProfile.ListCount - 1
50130   If LCase$(ProfileName) = LCase$(cmbProfile.List(i)) Then
50140    cmbProfile.ListIndex = i
50150    Exit Sub
50160   End If
50170  Next i
50180  cmbProfile.ListIndex = 0
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("frmOptions", "SetProfile")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub
