Attribute VB_Name = "Module2"
Const SWP_HIDEWINDOW = &H80
    Const SWP_SHOWWINDOW = &H40
    Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" _
        (ByVal lpClassName As String, ByVal lpWindowName As String) As Long

    Private Declare Function SetWindowPos Lib "user32" _
        (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, _
        ByVal x As Long, ByVal y As Long, _
        ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
        Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Const GWL_STYLE = (-16)
Private Const WS_CAPTION = &HC00000                  '  WS_BORDER Or WS_DLGFRAME


Option Explicit
Private Const PROCESS_ALL_ACCESS = &H1F0FFF

Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, _
    ByVal bInheritHandle As Long, ByVal dwProcessID As Long) As Long
Private Declare Function GetExitCodeProcess Lib "kernel32" _
    (ByVal hProcess As Long, lpExitCode As Long) As Long
Private Declare Function TerminateProcess Lib "kernel32" _
    (ByVal hProcess As Long, ByVal uExitCode As Long) As Long

Sub HideWindow(gtWnd As Long)
        'Dim gtWnd As Long
        'gtWnd = FindWindow(vbNullString, strWindowName)
        SetWindowPos gtWnd, 0, 0, 0, 0, 0, SWP_HIDEWINDOW
End Sub


Sub UnHideWindow(gtWnd As Long)
        'Dim gtWnd As Long
        'gtWnd = FindWindow(vbNullString, strWindowName)
        SetWindowPos gtWnd, 0, 0, 0, 500, 500, SWP_SHOWWINDOW
End Sub
