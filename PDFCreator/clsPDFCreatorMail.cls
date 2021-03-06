VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsPDFCreatorMail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Option Explicit

Private iStandardEmailClient As String

Public Property Get StandardEmailClient() As String
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  StandardEmailClient = iStandardEmailClient
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Property
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "StandardEmailClient [GET]")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Property
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Property

Public Function Send(ByVal filename As String, Optional Subject As String = "", Optional SendMailMethod As Long = 0, Optional EmailAddress As String) As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50011  Select Case SendMailMethod
        Case 1
50030    Send = VBMapiEmail(filename, Subject)
50040   Case 2
50050    Send = SendToMailRecipientViaSendmailDll(filename)
50060   Case Else
50071    Select Case UCase$(iStandardEmailClient)
          Case "MICROSOFT OUTLOOK"
50090      Send = MSOutlookEmail(filename, Subject, EmailAddress)
50100     Case "PEGASUS MAIL"
50110      Send = PegasusEmail(filename, Subject)
50120     Case "THE BAT!"
50130      Send = TheBatEmail(filename, Subject)
50140     Case "FOXMAIL"
50150      Send = FoxEmail(filename, Subject)
50160     Case "SYLPHEED"
50170      Send = SylpheedClaws(filename, Subject)
50180     Case "MOZILLA THUNDERBIRD"
50190      Send = ThunderbirdEmail(filename, Subject, EmailAddress)
50200     Case "OUTLOOK EXPRESS", "MOZILLA THUNDERBIRD", "MOZILLA"
50210      Send = VBMapiEmail(filename, Subject, EmailAddress)
50220     Case "LOTUS NOTES"
50230      Send = SendNotesMail(filename, Subject, EmailAddress)
50240     Case Else
50250      Send = SendToMailRecipientViaSendmailDll(filename)
50260    End Select
50270  End Select
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "Send")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Sub Class_Initialize()
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  iStandardEmailClient = GetStandardEmailClient
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "Class_Initialize")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub

Private Function GetStandardEmailClient() As String
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim reg As clsRegistry, tStr As String
50020  Set reg = New clsRegistry
50030  reg.hkey = HKEY_CURRENT_USER
50040  reg.KeyRoot = "SOFTWARE\Clients\Mail"
50050  tStr = reg.GetRegistryValue("")
50060  If LenB(Trim$(tStr)) = 0 Then
50070    reg.hkey = HKEY_LOCAL_MACHINE
50080    GetStandardEmailClient = reg.GetRegistryValue("")
50090   Else
50100    GetStandardEmailClient = tStr
50110  End If
50120  Set reg = Nothing
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "GetStandardEmailClient")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function MSOutlookEmail(filename As String, Optional Subject As String = "", Optional EmailAddress As String) As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim olApp As Object, oItem As Object
50020  MSOutlookEmail = 0
50030  Set olApp = CreateObject("Outlook.Application")
50040  If olApp Is Nothing Then
50050   MSOutlookEmail = -1
50060   Exit Function
50070  End If
50080  Set oItem = olApp.CreateItem(0)
50090  With oItem
50100   .To = EmailAddress: .cc = "": .BCC = "": .Subject = Subject
50110   .Attachments.Add filename
50120   .Display
50130  End With
50140  Set oItem = Nothing: Set olApp = Nothing
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "MSOutlookEmail")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function VBMapiEmail(filename As String, Optional Subject As String = "", Optional EmailAddress As String) As Long
 On Error GoTo ErrorHandler
 Dim MAPISess As MAPISession, MAPIMess As MAPIMessages

 VBMapiEmail = 0

 Set MAPISess = New MAPISession
 Set MAPIMess = New MAPIMessages

 With MAPISess
  .DownLoadMail = False
  .LogonUI = True
  .SignOn
  .NewSession = True
 End With
 With MAPIMess
  .SessionID = MAPISess.SessionID
  .Compose
  If LenB(EmailAddress) > 0 Then
   .RecipAddress = EmailAddress
  End If
  If Len(Trim$(filename)) > 0 Then
   .AttachmentIndex = 0
   .AttachmentPathName = filename
   .AttachmentName = filename
  End If
  .MsgSubject = Subject
  .Send True
 End With
 MAPISess.SignOff
 Set MAPIMess = Nothing
 Set MAPISess = Nothing
 Exit Function
ErrorHandler:
 MsgBox LanguageStrings.MessagesMsg20 & vbCrLf & vbCrLf & _
  "Line " & Erl & ": [" & Err.Number & "] " & Err.Description
 Err.Clear
End Function

Private Function PegasusEmail(filename As String, Optional Subject As String = "") As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim cReg As clsRegistry, PegasusBaseDir As String, WsendToPath As String
50020  PegasusEmail = 0
50030  Set cReg = New clsRegistry
50040
50050  cReg.hkey = HKEY_CLASSES_ROOT
50060  cReg.KeyRoot = "Software\Pegasus Mail\BaseDir"
50070  PegasusBaseDir = cReg.GetRegistryValue("")
50080  WsendToPath = CompletePath(PegasusBaseDir) & "wsendto.exe"
50090  If Dir(WsendToPath) <> vbNullString Then
50100    Shell """" & WsendToPath & """ """ & filename & """"
50110   Else
50120    MsgBox LanguageStrings.MessagesMsg20
50130    PegasusEmail = -1
50140  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "PegasusEmail")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function ThunderbirdEmail(filename As String, Optional Subject As String = "", Optional EmailAddress As String) As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim cReg As clsRegistry, tbVersions As Collection, KeyRoot As String, i As Long
50020  Dim PathToExe As String, attachmentParam As String, subjectParam As String, tbParam As String
50030
50040  ThunderbirdEmail = -1
50050
50060  Set cReg = New clsRegistry
50070  cReg.hkey = HKEY_LOCAL_MACHINE
50080
50090  KeyRoot = "SOFTWARE\Mozilla\Mozilla Thunderbird"
50100  Set tbVersions = cReg.EnumRegistryKeys(HKEY_LOCAL_MACHINE, KeyRoot)
50110  If tbVersions.Count > 0 Then
50120   cReg.KeyRoot = KeyRoot & "\" & tbVersions.Item(1) & "\Main"
50130   PathToExe = cReg.GetRegistryValue("PathToExe", "")
50140   If FileExists(PathToExe) Then
50150    If LenB(EmailAddress) > 0 Then
50160     tbParam = "to=""" & EmailAddress & """"
50170    End If
50180    If LenB(Subject) > 0 Then
50190     subjectParam = "subject=""" & Subject & """"
50200     If LenB(tbParam) > 0 Then
50210       tbParam = tbParam & "," & subjectParam
50220      Else
50230       tbParam = subjectParam
50240     End If
50250    End If
50260    If LenB(filename) > 0 Then
50270     If FileExists(filename) Then
50280      attachmentParam = "attachment=""" & filename & """"
50290      If LenB(tbParam) > 0 Then
50300        tbParam = tbParam & "," & attachmentParam
50310       Else
50320        tbParam = attachmentParam
50330      End If
50340     End If
50350    End If
50360    Shell """" & PathToExe & """" & " -compose " & tbParam, vbNormalFocus
50370    ThunderbirdEmail = 0
50380   End If
50390  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "ThunderbirdEmail")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function TheBatEmail(filename As String, Optional Subject As String = "") As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim cReg As clsRegistry, ExePath As String
50020  TheBatEmail = 0
50030  Set cReg = New clsRegistry
50040
50050  cReg.hkey = HKEY_CURRENT_USER
50060  cReg.KeyRoot = "Software\Rit\The Bat!"
50070  ExePath = cReg.GetRegistryValue("EXE path")
50080  If Dir(ExePath) <> vbNullString Then
50090    Shell """" & ExePath & """ """ & filename & """"
50100   Else
50110    MsgBox LanguageStrings.MessagesMsg20
50120    TheBatEmail = -1
50130  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "TheBatEmail")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function FoxEmail(filename As String, Optional Subject As String = "") As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim cReg As clsRegistry, ExePath As String
50020  FoxEmail = 0
50030  Set cReg = New clsRegistry
50040
50050  cReg.hkey = HKEY_LOCAL_MACHINE
50060  cReg.KeyRoot = "Software\Aerofox\Foxmail"
50070  ExePath = cReg.GetRegistryValue("Executable")
50080  If Dir(ExePath) <> vbNullString Then
50090    Shell """" & ExePath & """ /min """ & filename & """"
50100   Else
50110    MsgBox LanguageStrings.MessagesMsg20
50120    FoxEmail = -1
50130  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "FoxEmail")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function SylpheedClaws(filename As String, Optional Subject As String = "") As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim cReg As clsRegistry, ExePath As String
50020  SylpheedClaws = 0
50030  Set cReg = New clsRegistry
50040
50050  cReg.hkey = HKEY_LOCAL_MACHINE
50060  cReg.KeyRoot = "Software\Microsoft\Windows\CurrentVersion\Uninstall\Sylpheed-Claws_is1"
50070  ExePath = cReg.GetRegistryValue("AppPath")
50080  ExePath = CompletePath(ExePath) & "bin\sylpheed.exe"
50090  If Dir(ExePath) <> vbNullString Then
50100    Shell """" & ExePath & """ --attach """ & filename & """"
50110   Else
50120    MsgBox LanguageStrings.MessagesMsg20
50130    SylpheedClaws = -1
50140  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "SylpheedClaws")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function SendToMailRecipientViaSendmailDll(ByVal filename As String) As Long
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim tIID_IDropTarget As UUID, tCLSID_SendMail As UUID, oSendMail As IDropTarget, _
  oDO As IDataObject, lRes As Long
50030
50040  SendToMailRecipientViaSendmailDll = -1
50050  CLSIDFromString "{00000122-0000-0000-C000-000000000046}", tIID_IDropTarget
50060  CLSIDFromString "{9E56BE60-C50F-11CF-9A2C-00A0C90A90CE}", tCLSID_SendMail
50070  lRes = CoCreateInstance(tCLSID_SendMail, Nothing, CLSCTX_INPROC_SERVER, _
  tIID_IDropTarget, oSendMail)
50090
50100  If lRes = S_OK Then
50110    Set oDO = GetFileDataObject(filename)
50120    oSendMail.DragEnter oDO, vbKeyLButton, 0, 0, DROPEFFECT_COPY
50130    oSendMail.Drop oDO, vbKeyLButton, 0, 0, DROPEFFECT_COPY
50140    SendToMailRecipientViaSendmailDll = 0
50150   Else
50160    Err.Raise lRes
50170  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "SendToMailRecipientViaSendmailDll")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function GetFileDataObject(ByVal filename As String) As IDataObject
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim tIID_IDataObject As UUID, tIID_IShellFolder As UUID, _
  oDesktop As IShellFolder, oParent As IShellFolder, oUnk As IUnknown, _
  sFolder As String, lPidl As Long, lPtr As Long
50040
50050  CLSIDFromString "{0000010e-0000-0000-C000-000000000046}", tIID_IDataObject
50060  CLSIDFromString IIDSTR_IShellFolder, tIID_IShellFolder
50070
50080  sFolder = Left$(filename, InStrRev(filename, "\") - 1)
50090  filename = Mid$(filename, Len(sFolder) + 2)
50100  If Right$(sFolder, 1) = ":" Then
50110   sFolder = sFolder + "\"
50120  End If
50130  Set oDesktop = SHGetDesktopFolder
50140  oDesktop.ParseDisplayName 0, 0, StrPtr(sFolder), lPtr, lPidl, 0
50150  oDesktop.BindToObject lPidl, 0, tIID_IShellFolder, lPtr
50160  MoveMemory oParent, lPtr, 4&
50170  CoTaskMemFree lPidl
50180  oParent.ParseDisplayName 0, 0, StrPtr(filename), 0, lPidl, 0
50190  lPtr = oParent.GetUIObjectOf(0, 1, lPidl, tIID_IDataObject, 0)
50200  MoveMemory oUnk, lPtr, 4&
50210  CoTaskMemFree lPidl
50220  Set GetFileDataObject = oUnk
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "GetFileDataObject")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function SendNotesMail(Attachments As String, Optional Subject As String = "", Optional EmailAddress As String = "")
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  'Display email in Notes prefilled with Subject and Attachments
50020  'Allow user to make edits (eg. to message) and then send manually
50030  'based on code at
 'http://www.granite.ab.ca/access/email/lotusnotesedit.htm
50050  'AND HughLerwill
50060  Const EMBED_ATTACHMENT As Integer = 1454, notesclass As String = "NOTES"
50070
50080  Dim i As Long, t As Long, lotusWindow As Long, session As Object, _
  dB As Object, doc As Object, beDoc As Object, workspace As Object, _
  bodypart As Object
50110
50120  t = Timer
50130  Screen.MousePointer = vbHourglass
50140  Do Until lotusWindow <> 0 Or Timer - t > 5
50150   lotusWindow = FindWindow(notesclass, vbNullString)
50160  Loop
50170
50180  Screen.MousePointer = vbDefault
50190
50200  If lotusWindow = 0 Then
50210    MsgBox "Lotus Notes must be running before you use this facility!" & vbCrLf & _
    "Please click ok and then try again.", vbExclamation
50230   Else
50240    ShowWindow lotusWindow, SW_MAXIMIZE
50250    SetForegroundWindow lotusWindow
50260    Set session = CreateObject("Notes.Notessession")
50270    Set dB = session.getDatabase("", "")
50280    dB.Openmail
50290    Set beDoc = dB.CreateDocument
50300    Set bodypart = beDoc.CREATERICHTEXTITEM("Body")
50310    beDoc.Form = "Memo"
50320    beDoc.Subject = Subject
50330    beDoc.sendto = EmailAddress
50340    If Attachments <> "" Then
50350     bodypart.EmbedObject EMBED_ATTACHMENT, "", Attachments
50360    End If
50370    Set workspace = CreateObject("Notes.NotesUIWorkspace")
50380    Call workspace.EditDocument(True, beDoc).GotoField("To")
50390    Set session = Nothing
50400    Set dB = Nothing
50410    Set doc = Nothing
50420    Set beDoc = Nothing
50430    Set workspace = Nothing
50440    Set bodypart = Nothing
50450  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("clsPDFCreatorMail", "SendNotesMail")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function
