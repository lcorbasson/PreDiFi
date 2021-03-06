Attribute VB_Name = "modImage2PS"
Option Explicit

Private Const CharsPerLine = 60

Public Function IsValidGraphicFile(filename As String) As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim Ext As String
50020  SplitPath filename, , , , , Ext
50030  Ext = LCase(Ext)
50040  If Ext = "jpg" Or Ext = "jpeg" Or Ext = "jfif" Or Ext = "bmp" Then
50050   IsValidGraphicFile = True
50060  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("modImage2PS", "IsValidGraphicFile")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Public Function Image2PS(sourceFileName As String, destinationFileName As String) As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim Ext As String
50020  SplitPath sourceFileName, , , , , Ext
50030  Ext = LCase(Ext)
50040  If Ext = "jpg" Or Ext = "jpeg" Or Ext = "jfif" Then
50050    Image2PS = ConvertJPEGImage(sourceFileName, destinationFileName)
50060   Else
50070    Image2PS = ConvertStandardImageFromFile(sourceFileName, destinationFileName)
50080  End If
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("modImage2PS", "Image2PS")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function ConvertJPEGImage(sourceFileName As String, destinationFileName As String) As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim sHeader As String, ColorDeviceStr As String, DecodeStr As String, jpegInfo As tJPEGInfo, sLines() As String, _
  fLen As Long, fn As Long, buffer() As Byte, LastCountOfChars As Long, tStr1 As String, i As Long, j As Long
50030
50040  jpegInfo = GetJPEGInfo(sourceFileName)
50050
50061  Select Case jpegInfo.BitsPerPixel
        Case 24, 32, 16
50080    ColorDeviceStr = "/DeviceRGB setcolorspace"
50090    DecodeStr = "[0 1 0 1 0 1]"
50100   Case 8, 4, 1
50110    ColorDeviceStr = "/DeviceGray setcolorspace"
50120    DecodeStr = "[0 1]"
50130   Case Else
50140    ConvertJPEGImage = False
50150    Exit Function
50160  End Select
50170
50180  sHeader = "%!PS-Adobe-1.0"
50190  sHeader = sHeader + vbCrLf + "%%Creator: PDFCreator"
50200  sHeader = sHeader + vbCrLf + "%%For: PDFCreator"
50210  sHeader = sHeader + vbCrLf + "%%Title:" & sourceFileName
50220  sHeader = sHeader + vbCrLf + "%%Documentdata: Binary"
50230  sHeader = sHeader + vbCrLf + "%%DocumentMedia: CustomSize " & jpegInfo.Width & " " & jpegInfo.Height & " 0 () ()"
50240  sHeader = sHeader + vbCrLf + "%%LanguageLevel: 2"
50250  sHeader = sHeader + vbCrLf + "%%EndComments"
50260  sHeader = sHeader + vbCrLf + vbCrLf & "/setpagedevice where { pop 1 dict dup /PageSize [" & jpegInfo.Width & " " & jpegInfo.Height & "] put setpagedevice } if"
50270  sHeader = sHeader + vbCrLf & "save"
50280  sHeader = sHeader + vbCrLf + "/RawData currentfile /ASCIIHexDecode filter def"
50290  sHeader = sHeader + vbCrLf + "/Data RawData << >> /DCTDecode filter def"
50300  sHeader = sHeader + vbCrLf + "0 0 translate"
50310  sHeader = sHeader + vbCrLf & jpegInfo.Width & " " & jpegInfo.Height & " scale"
50320  sHeader = sHeader + vbCrLf + ColorDeviceStr
50330  sHeader = sHeader + vbCrLf + "{ << /ImageType 1 /Width " & jpegInfo.Width & " /Height " & jpegInfo.Height & _
  " /ImageMatrix [" & jpegInfo.Width & " 0 0 -" & jpegInfo.Height & " 0 " & jpegInfo.Height & "]" + _
  "/DataSource Data /BitsPerComponent 8 /Decode " + DecodeStr + ">> image"
50360  sHeader = sHeader + vbCrLf + "Data closefile"
50370  sHeader = sHeader + vbCrLf + "RawData flushfile"
50380  sHeader = sHeader + vbCrLf + "showpage"
50390  sHeader = sHeader + vbCrLf + "restore"
50400  sHeader = sHeader + vbCrLf + "} exec "
50410  fLen = GetFileLength(sourceFileName)
50420  tStr1 = String(CharsPerLine, "0")
50430  ReDim buffer(CharsPerLine \ 2 - 1)
50440  fn = FreeFile
50450  Open sourceFileName For Binary As #fn
50460  If (fLen * 2) Mod CharsPerLine > 0 Then
50470    ReDim sLines((fLen * 2) \ CharsPerLine)
50480    LastCountOfChars = (fLen * 2) Mod CharsPerLine
50490    For i = LBound(sLines) To UBound(sLines)
50500     sLines(i) = tStr1
50510    Next i
50520    For i = LBound(sLines) To UBound(sLines) - 1
50530     Get #fn, , buffer
50540     For j = 0 To UBound(buffer)
50550      tStr1 = Hex$(buffer(j))
50560      If Len(tStr1) = 1 Then
50570        Mid(sLines(i), 2 * j + 2) = tStr1
50580       Else
50590        Mid(sLines(i), 2 * j + 1) = tStr1
50600      End If
50610     Next j
50620    Next i
50630    ReDim buffer(LastCountOfChars \ 2 - 1)
50640    Get #fn, , buffer
50650    For j = 0 To UBound(buffer)
50660     tStr1 = Hex$(buffer(j))
50670     If Len(tStr1) = 1 Then
50680       Mid(sLines(i), 2 * j + 2) = tStr1
50690      Else
50700       Mid(sLines(i), 2 * j + 1) = tStr1
50710     End If
50720    Next j
50730   Else
50740    ReDim sLines((fLen * 2) \ CharsPerLine - 1)
50750    LastCountOfChars = CharsPerLine
50760    For i = LBound(sLines) To UBound(sLines)
50770     sLines(i) = tStr1
50780    Next i
50790    For i = LBound(sLines) To UBound(sLines)
50800     Get #fn, , buffer
50810     For j = 0 To UBound(buffer)
50820      tStr1 = Hex$(buffer(j))
50830      If Len(tStr1) = 1 Then
50840        Mid(sLines(i), 2 * j + 2) = tStr1
50850       Else
50860        Mid(sLines(i), 2 * j + 1) = tStr1
50870      End If
50880     Next j
50890    Next i
50900    Close #fn
50910  End If
50920  Close #fn
50930  sLines(UBound(sLines)) = Mid$(sLines(UBound(sLines)), 1, LastCountOfChars) + ">"
50940  WriteLinesToFile destinationFileName, sHeader, sLines, "%%EOF", LastCountOfChars + 1, True
50950  ConvertJPEGImage = True
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("modImage2PS", "ConvertJPEGImage")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Public Function ConvertStandardImageFromPicture(pic As IPictureDisp, destinationFileName As String, Title As String) As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim hImage As Long, b As BITMAP, sLines() As String, sLine As String, tStr1 As String
50020  Dim hdc As Long, hObj As Long, i As Long, j As Long, col As Long, c As Long, c1 As Long, c2 As Long, LastCountOfChars As Long
50030  Dim sHeader As String, BytesPerColor As Long, colStr As String, picBytes() As Byte, maxBytes As Long
50040  hImage = pic.handle
50050  GetObject hImage, Len(b), b
50060
50071  Select Case b.bmBitsPixel
        Case 24, 32, 16
50090    BytesPerColor = 6
50100    colStr = "false 3 colorimage"
50110   Case 8, 4, 1
50120    BytesPerColor = 2
50130    colStr = "image"
50140   Case Else
50150    ConvertStandardImageFromPicture = False
50160 '   MsgBox "Unsupported image format: BitsPerPixel=" & b.bmBitsPixel
50170    Exit Function
50180  End Select
50190  If (b.bmHeight * b.bmWidth * BytesPerColor) Mod CharsPerLine > 0 Then
50200    ReDim sLines((b.bmHeight * b.bmWidth * BytesPerColor) \ CharsPerLine)
50210    LastCountOfChars = (b.bmHeight * b.bmWidth * BytesPerColor) Mod CharsPerLine
50220   Else
50230    ReDim sLines((b.bmHeight * b.bmWidth * BytesPerColor) \ CharsPerLine - 1)
50240    LastCountOfChars = CharsPerLine
50250  End If
50260  tStr1 = String(CharsPerLine, "0")
50270  For i = LBound(sLines) To UBound(sLines)
50280   sLines(i) = tStr1
50290  Next i
50300
50310  hdc = CreateCompatibleDC(0)
50320  hObj = SelectObject(hdc, hImage)
50330
50340  sHeader = "%!PS-Adobe-1.0"
50350  sHeader = sHeader & vbCrLf & "%%Creator: PDFCreator"
50360  sHeader = sHeader & vbCrLf & "%%For: PDFCreator"
50370  sHeader = sHeader & vbCrLf & "%%Title:" & Title
50380  sHeader = sHeader & vbCrLf & "%%DocumentMedia: CustomSize " & b.bmWidth & " " & b.bmHeight & " 0 () ()"
50390  sHeader = sHeader & vbCrLf & "%%EndComments"
50400  sHeader = sHeader + vbCrLf + vbCrLf & "/setpagedevice where { pop 1 dict dup /PageSize [" & b.bmWidth & " " & b.bmHeight & "] put setpagedevice } if"
50410  sHeader = sHeader & vbCrLf & "/PicString 3 string def"
50420  sHeader = sHeader & vbCrLf & "/DisplayImage{0 0 translate " & _
  b.bmWidth & " " & b.bmHeight & " scale " & _
  b.bmWidth & " " & b.bmHeight & " " & 8 & " [" & b.bmWidth & " 0 0 -" & b.bmHeight & " 0 " & b.bmHeight & "]" & _
  "{currentfile PicString readhexstring pop}" + colStr + "}def"
50460  sHeader = sHeader & vbCrLf & "DisplayImage"
50470
50480  sLine = ""
50490  c = 0: c1 = 0: c2 = CharsPerLine / (2 * 3)
50500
50510  If b.bmBitsPixel = 24 Or b.bmBitsPixel = 32 Then
50520    maxBytes = b.bmWidth * b.bmHeight * (b.bmBitsPixel / 8)
50530    ReDim picBytes(0 To maxBytes - 1) As Byte
50540    Call GetBitmapBits(hImage, UBound(picBytes), picBytes(0))
50550    For i = 0 To maxBytes - 1 Step (b.bmBitsPixel / 8)
50560     tStr1 = Hex$(picBytes(i + 2))
50570     If Len(tStr1) = 1 Then
50580       Mid(sLines(c), c1 + 2) = tStr1
50590      Else
50600       Mid(sLines(c), c1 + 1) = tStr1
50610     End If
50620     tStr1 = Hex$(picBytes(i + 1))
50630     If Len(tStr1) = 1 Then
50640       Mid(sLines(c), c1 + 4) = tStr1
50650      Else
50660       Mid(sLines(c), c1 + 3) = tStr1
50670     End If
50680     tStr1 = Hex$(picBytes(i))
50690     If Len(tStr1) = 1 Then
50700       Mid(sLines(c), c1 + 6) = tStr1
50710      Else
50720       Mid(sLines(c), c1 + 5) = tStr1
50730     End If
50740     c1 = c1 + BytesPerColor
50750     If c1 = CharsPerLine Then
50760      c = c + 1
50770      c1 = 0
50780     End If
50790    Next i
50800    DoEvents
50810   Else
50820    For j = 0 To b.bmHeight - 1
50830     For i = 0 To b.bmWidth - 1
50840      col = GetPixel(hdc, i, j)
50850      tStr1 = Hex$(col And &HFF&)
50860      If Len(tStr1) = 1 Then
50870        Mid(sLines(c), c1 + 2) = tStr1
50880       Else
50890        Mid(sLines(c), c1 + 1) = tStr1
50900      End If
50910
50920      c1 = c1 + BytesPerColor
50930
50940      If c1 = CharsPerLine Then
50950       c = c + 1
50960       c1 = 0
50970      End If
50980     Next i
50990     DoEvents
51000    Next j
51010  End If
51020
51030  WriteLinesToFile destinationFileName, sHeader, sLines, "showpage" + vbCrLf + "%%EOF", LastCountOfChars, True
51040
51050  SelectObject hdc, hObj
51060  DeleteDC hdc
51070
51080  ConvertStandardImageFromPicture = True
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("modImage2PS", "ConvertStandardImageFromPicture")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Function ConvertStandardImageFromFile(sourceFileName As String, destinationFileName As String) As Boolean
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim pic As IPictureDisp
50020  Set pic = LoadPicture(sourceFileName)
50030  ConvertStandardImageFromFile = ConvertStandardImageFromPicture(pic, destinationFileName, sourceFileName)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Function
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("modImage2PS", "ConvertStandardImageFromFile")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Function
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Function

Private Sub WriteLinesToFile(destinationFileName As String, sHeader As String, sLines() As String, sFooter As String, Optional LastCountOfChars As Long, Optional Create As Boolean = False)
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
On Error GoTo ErrPtnr_OnError
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
50010  Dim fn As Long, i As Long
50020  fn = FreeFile
50030  If Create Then
50040    Open destinationFileName For Output As #fn
50050   Else
50060    Open destinationFileName For Append As #fn
50070  End If
50080  Print #fn, sHeader
50090  For i = LBound(sLines) To UBound(sLines) - 1
50100   Print #fn, sLines(i)
50110  Next i
50120  Print #fn, Mid$(sLines(i), 1, LastCountOfChars)
50130  Print #fn, sFooter
50140  Close #fn
'---ErrPtnr-OnError-START--- DO NOT MODIFY ! ---
Exit Sub
ErrPtnr_OnError:
Select Case ErrPtnr.OnError("modImage2PS", "WriteLinesToFile")
Case 0: Resume
Case 1: Resume Next
Case 2: Exit Sub
Case 3: End
End Select
'---ErrPtnr-OnError-END--- DO NOT MODIFY ! ---
End Sub
