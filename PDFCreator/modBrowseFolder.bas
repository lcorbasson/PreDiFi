Attribute VB_Name = "modBrowseFolder"
'This module contains all the declarations to use the
'Windows 95 Shell API to use the browse for folders
'dialog box.  To use the browse for folders dialog box,
'please call the BrowseForFolders function using the
'syntax: stringFolderPath=BrowseForFolders(Hwnd,TitleOfDialog)
'
'For more demo projects, please visit out web site at
'http://www.btinternet.com/~jelsoft/
'
'To contact us, please send an email to jelsoft@btinternet.com

Option Explicit

Public Type BrowseInfo
 hwndOwner As Long
 pIDLRoot As Long
 pszDisplayName As Long
 lpszTitle As Long
 ulFlags As Long
 lpfnCallback As Long
 lParam As Long
 iImage As Long
End Type

Public Const BIF_RETURNONLYFSDIRS = 1
Public Const MAX_PATH = 260

Public Declare Sub CoTaskMemFree Lib "ole32.dll" (ByVal hMem As Long)
Public Declare Function lstrcat Lib "kernel32" Alias "lstrcatA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long
Public Declare Function SHBrowseForFolder Lib "shell32" (lpbi As BrowseInfo) As Long
Public Declare Function SHGetPathFromIDList Lib "shell32" (ByVal pidList As Long, ByVal lpBuffer As String) As Long

Public Function BrowseForFolder(hwndOwner As Long, sPrompt As String) As String
 'declare variables to be used
 Dim iNull As Integer, lpIDList As Long, lResult As Long, sPath As String, _
  udtBI As BrowseInfo

 'initialise variables
 With udtBI
  .hwndOwner = hwndOwner
  .lpszTitle = lstrcat(sPrompt, "")
  .ulFlags = BIF_RETURNONLYFSDIRS
 End With

 'Call the browse for folder API
 lpIDList = SHBrowseForFolder(udtBI)

 'get the resulting string path
 If lpIDList Then
  sPath = String$(MAX_PATH, 0)
  lResult = SHGetPathFromIDList(lpIDList, sPath)
  Call CoTaskMemFree(lpIDList)
  iNull = InStr(sPath, vbNullChar)
  If iNull Then sPath = Left$(sPath, iNull - 1)
 End If

 'If cancel was pressed, sPath = ""
 BrowseForFolder = sPath
End Function
