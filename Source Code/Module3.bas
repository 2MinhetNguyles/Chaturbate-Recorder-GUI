Attribute VB_Name = "Module3"
Private Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long
Private Declare Function GetParent Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Const GW_HWNDFIRST = 0
Const GW_HWNDNEXT = 2

Function LoadTaskList()
    Dim CurrWnd As Long
    Dim Length As Long
    Dim TaskName As String
    Dim Parent As Long
    Dim tempCol As New Collection

    CurrWnd = GetWindow(Recorder.hwnd, GW_HWNDFIRST)
    While CurrWnd <> 0
        Parent = GetParent(CurrWnd)
        Length = GetWindowTextLength(CurrWnd)
        TaskName = Space$(Length + 1)
        Length = GetWindowText(CurrWnd, TaskName, Length + 1)
        TaskName = Left$(TaskName, Len(TaskName) - 1)
        
        If Length > 0 Then
            If TaskName <> Recorder.Caption Then
                If UCase(Right(TaskName, 10)) = "FFMPEG.EXE" Then tempCol.Add CurrWnd
            End If
        End If
        CurrWnd = GetWindow(CurrWnd, GW_HWNDNEXT)
    Wend
    
    Set LoadTaskList = tempCol
    
End Function
