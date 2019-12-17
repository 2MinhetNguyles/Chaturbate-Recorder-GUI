VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Gallery 
   Caption         =   "Gallery"
   ClientHeight    =   6990
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14820
   LinkTopic       =   "Form1"
   ScaleHeight     =   6990
   ScaleWidth      =   14820
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Check1 
      Caption         =   "Auto Preview"
      Height          =   255
      Left            =   2880
      TabIndex        =   4
      Top             =   6720
      Value           =   1  'Checked
      Width           =   3495
   End
   Begin VB.ListBox List2 
      Height          =   6105
      Left            =   2880
      TabIndex        =   2
      Top             =   480
      Width           =   3615
   End
   Begin VB.ListBox List1 
      Height          =   6105
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   2535
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   6495
      Left            =   6600
      TabIndex        =   5
      Top             =   480
      Width           =   8055
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   14208
      _cy             =   11456
   End
   Begin VB.Label Label2 
      Caption         =   "Video Files:"
      Height          =   255
      Left            =   2880
      TabIndex        =   3
      Top             =   120
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Model Name"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1695
   End
End
Attribute VB_Name = "Gallery"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim colFiles As New Collection
Dim arrTemp
Dim boolMatch
Dim i
Dim x
    
    Set colFiles = FindFiles(App.Path & "\Recordings\", , False, False)
    
    For Each x In colFiles
        arrTemp = Split(x, " ")
        boolMatch = False
        For i = 0 To List1.ListCount - 1
            If UCase(arrTemp(0)) = UCase(List1.List(i)) Then boolMatch = True: Exit For
        Next i
        If boolMatch = False Then List1.AddItem arrTemp(0)
    Next
    
End Sub

Private Sub List1_Click()
Dim colFiles As New Collection
Dim arrTemp
Dim i
Dim x
    
    Set colFiles = FindFiles(App.Path & "\Recordings\", , False, False)
    List2.Clear
    
    For Each x In colFiles
        arrTemp = Split(x, " ")
        If UCase(arrTemp(0)) = UCase(List1.Text) Then List2.AddItem x
    Next

End Sub

Private Sub List2_Click()
    If Check1.Value = 1 Then
        WindowsMediaPlayer1.URL = App.Path & "\Recordings\" & List2.Text
        WindowsMediaPlayer1.settings.mute = True
        WindowsMediaPlayer1.stretchToFit = True
    End If
End Sub
