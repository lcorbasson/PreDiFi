Attribute VB_Name = "modGeneral3"
Option Explicit

Public Function CompletePath(Path As String) As String
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  If Len(Path) = 0 Then
50020   Exit Function
50030  End If
50040  Path = Trim$(Path)
50050  If Right$(Path, 1) = "\" Then
50060    CompletePath = Path
50070   Else
50080    CompletePath = Path & "\"
50090  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("modGeneral3", "CompletePath")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Public Function InCollection(colTest As Collection, sKey As String) As Boolean
'
' Check to see if item [sKey] is in collection [colTest].
' Return True if it is, false if not
'
 On Error GoTo ErrorHandler
 If VarType(colTest.Item(sKey)) = vbObject Then
  '
  ' This test will indicate if the item actually exists in the
  ' collection. No further checking is needed.
  '
 End If
 InCollection = True
Exit Function
ErrorHandler:
   InCollection = False
End Function

Public Function ProgramIsRunning(GUIDStr As String) As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim mutex As clsMutex
50020  Set mutex = New clsMutex
50030  ProgramIsRunning = mutex.CheckMutex(GUIDStr)
50040  Set mutex = Nothing
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("modGeneral3", "ProgramIsRunning")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Public Sub QuickSortSpoolFiles(ByRef vSort() As clsSpoolFile, Optional ByVal lngStart As Variant, Optional ByVal lngEnd As Variant)
 Dim i As Long, j As Long, h As clsSpoolFile, x As String
 
 If IsMissing(lngStart) Then lngStart = LBound(vSort)
 If IsMissing(lngEnd) Then lngEnd = UBound(vSort)
 
 i = lngStart: j = lngEnd
 x = vSort((lngStart + lngEnd) / 2).FileDateTimeKey
 
 Do
  While (StrComp(vSort(i).FileDateTimeKey, x) < 0): i = i + 1: Wend
  While (StrComp(vSort(j).FileDateTimeKey, x) > 0): j = j - 1: Wend
 
  If (i <= j) Then
   Set h = vSort(i)
   Set vSort(i) = vSort(j)
   Set vSort(j) = h
   i = i + 1: j = j - 1
  End If
 Loop Until (i > j)
 
 If (lngStart < j) Then QuickSortSpoolFiles vSort, lngStart, j
 If (i < lngEnd) Then QuickSortSpoolFiles vSort, i, lngEnd
End Sub

