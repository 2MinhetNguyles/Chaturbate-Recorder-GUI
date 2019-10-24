Attribute VB_Name = "Module1"
'Returns the HTML source of a webpage.
Function getHTML(address)
    Dim objXmlHttp: Set objXmlHttp = CreateObject("MSXML2.XMLHTTP.6.0")
    
    objXmlHttp.Open "get", address
    objXmlHttp.send
    getHTML = objXmlHttp.responseText

End Function


'Determines if a file exists or not.
Function FileExists(strPath)
    On Error Resume Next
    Dim objFSO: Set objFSO = CreateObject("Scripting.FileSystemObject")
    Dim boolFile: boolFile = False
    If objFSO.FileExists(strPath) Then boolFile = True
    FileExists = boolFile
End Function


'Reads the favourites file.
Function ReadFavourites()

    Dim strFile: strFile = App.Path & "\Favourites.txt"
    Dim textline As String
    Dim tempCol As New Collection
    
    Open strFile For Input As #1
    
    Do Until EOF(1)
        Line Input #1, textline
        tempCol.Add textline
    Loop
    Close #1
    
    Set ReadFavourites = tempCol

End Function


Sub WriteFavourites()

    Dim strFile: strFile = App.Path & "\Favourites.txt"
    Dim i
    
    Open strFile For Output As #1
    
    For i = 0 To Recorder.List1.ListCount - 1
    
        Print #1, Recorder.List1.List(i)
    
    Next i

    Close #1

End Sub



Public Function FindFiles(FolderPath As String, Optional FileExtension As String, Optional IncludeDirectories As Boolean, Optional onlyDirectories As Boolean) As Collection

    Dim file As String
    Dim i As Integer
    Dim tempArray As New Collection
    Dim objFSO
    Dim x As String
    
    Set objFSO = CreateObject("Scripting.FileSystemObject")

    If IncludeDirectories = True Then
        file = Dir(FolderPath, vbDirectory)
    Else
        file = Dir(FolderPath)
    End If
    
    i = 0
    While file <> ""
        If onlyDirectories Then
            x = FolderPath & file
            If (objFSO.FolderExists(x)) And file <> "." And file <> ".." And file <> "" Then
                tempArray.Add file
                i = i + 1
            End If
        Else
            If InStr(1, file, FileExtension) > 1 Or FileExtension = vbNullString And file <> "." And file <> ".." Then
                tempArray.Add file
                i = i + 1
            End If
        End If
        
        file = Dir
    Wend
    
    Set FindFiles = tempArray

End Function

'Populates the online list.
Sub whoIsOnline()

    Dim modelHtml
    Dim i
    
    Recorder.List2.Clear
    For i = 1 To Recorder.List1.ListCount
    
        Recorder.lblCheck.Caption = "Checking: " & i & " of " & Recorder.List1.ListCount
        DoEvents
        modelHtml = getHTML("https://chaturbate.com/" & Recorder.List1.List(i - 1) & "/")
        
        'Format Address
        modelHtml = Left(modelHtml, InStr(modelHtml, ".m3u8") + 4)
        modelHtml = Right(modelHtml, Len(modelHtml) - InStr(modelHtml, "https://edge") + 1)
        
        If Len(modelHtml) < 20 Then
            modelHtml = ""
            'Offline
        Else
            Recorder.List2.AddItem Recorder.List1.List(i - 1)
        End If
        
    Next i

    Recorder.lblCheck.Caption = ""

End Sub




'Figures out the output name of the stream to be recorded
Function getOutputName()
    Dim objShell: Set objShell = CreateObject("WScript.Shell")
    Dim objFSO: Set objFSO = CreateObject("Scripting.FileSystemObject")
    Dim outputName
    Dim i
    
    outputName = Right(Recorder.cbAddress.Text, Len(Recorder.cbAddress.Text) - 23)
    outputName = Replace(outputName, "/", "")
    outputName = outputName & " " & Replace(Now(), "/", "-")
    outputName = Replace(outputName, ":", ".")
    outputName = outputName & ".mp4"
    
    getOutputName = outputName
    
End Function



'Hides all ffmpeg windows.
Sub HideAllRecorders()
    Dim colRecorders As New Collection
    Dim x
    
    Set colRecorders = LoadTaskList
    
    For Each x In colRecorders
        Call HideWindow(CDbl(x))
    Next
End Sub

