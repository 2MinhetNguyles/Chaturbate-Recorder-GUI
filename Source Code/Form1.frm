VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Recorder 
   BackColor       =   &H00C0C0FF&
   Caption         =   "Chaturbate Recorder Interface by: 2MinhetNguyles"
   ClientHeight    =   14970
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11085
   LinkTopic       =   "Form1"
   ScaleHeight     =   14970
   ScaleWidth      =   11085
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnGallery 
      BackColor       =   &H00FFC0FF&
      Caption         =   "View Gallery"
      Height          =   495
      Left            =   8040
      Style           =   1  'Graphical
      TabIndex        =   22
      Top             =   240
      Width           =   2055
   End
   Begin VB.CommandButton btnRunRec 
      BackColor       =   &H00FFFF80&
      Caption         =   "View Running Recorders"
      Height          =   495
      Left            =   5760
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   240
      Width           =   2055
   End
   Begin VB.CheckBox CheckAutoLoad 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Auto Load?"
      Height          =   375
      Left            =   120
      TabIndex        =   19
      Top             =   6840
      Width           =   2415
   End
   Begin VB.CommandButton btnWhoIsOnline 
      Caption         =   "Check Who Is Online"
      Height          =   375
      Left            =   5880
      TabIndex        =   17
      Top             =   3000
      Width           =   3015
   End
   Begin VB.CommandButton btnClearPreview 
      Caption         =   "Clear Preview"
      Height          =   495
      Left            =   2880
      TabIndex        =   16
      Top             =   7680
      Width           =   2415
   End
   Begin VB.CommandButton btnShowPreview 
      Caption         =   "Show Preview"
      Height          =   495
      Left            =   120
      TabIndex        =   14
      Top             =   7680
      Width           =   2415
   End
   Begin VB.ListBox List2 
      Height          =   3180
      Left            =   5880
      TabIndex        =   11
      Top             =   3480
      Width           =   3015
   End
   Begin VB.CommandButton btnAddFav 
      Caption         =   "Add To Favourites"
      Height          =   375
      Left            =   7320
      TabIndex        =   10
      Top             =   1440
      Width           =   2775
   End
   Begin VB.CommandButton btnCopy 
      Caption         =   "Copy"
      Height          =   375
      Left            =   6120
      TabIndex        =   9
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton btnClear 
      Caption         =   "Clear"
      Height          =   375
      Left            =   4920
      TabIndex        =   8
      Top             =   1440
      Width           =   1095
   End
   Begin VB.ListBox List1 
      Height          =   3180
      Left            =   120
      TabIndex        =   7
      Top             =   3480
      Width           =   3015
   End
   Begin VB.CommandButton btnRemFav 
      Caption         =   "Remove From Favourites"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   3000
      Width           =   3015
   End
   Begin VB.TextBox information 
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1920
      Width           =   9975
   End
   Begin VB.TextBox cbAddress 
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   1440
      Width           =   4695
   End
   Begin VB.CommandButton btnFFmpeg 
      Caption         =   "Start FFmpeg"
      Height          =   495
      Left            =   2520
      TabIndex        =   1
      Top             =   240
      Width           =   2295
   End
   Begin VB.CommandButton btnGetStreamAddress 
      Caption         =   "Get Stream Address"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Click on list item to load."
      Height          =   495
      Left            =   3600
      TabIndex        =   21
      Top             =   3840
      Width           =   1815
   End
   Begin VB.Label lblCheck 
      BackColor       =   &H00C0C0FF&
      Height          =   1695
      Left            =   9000
      TabIndex        =   18
      Top             =   3600
      Width           =   1935
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   6615
      Left            =   120
      TabIndex        =   15
      Top             =   8280
      Width           =   10695
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
      _cx             =   18865
      _cy             =   11668
   End
   Begin VB.Label Label4 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Preview Window"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   7320
      Width           =   2655
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Online Favourites"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5880
      TabIndex        =   12
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Favourites List:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Please Enter The Model URL Below:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   4695
   End
End
Attribute VB_Name = "Recorder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnAddFav_Click()
Dim arrTemp
Dim boolMatch
Dim i
    
    If Len(cbAddress.Text) > 22 Then
        arrTemp = Split(cbAddress.Text, "/")
        For i = 0 To List1.ListCount - 1    'Check for duplicates before adding.
            If UCase(List1.List(i)) = UCase(arrTemp(3)) Then boolMatch = True
        Next i
        If Not boolMatch Then List1.AddItem arrTemp(3)
        Call WriteFavourites
    End If
End Sub

Private Sub btnClear_Click()
    cbAddress.Text = ""
    information.Text = ""
End Sub

Private Sub btnClearPreview_Click()
    WindowsMediaPlayer1.URL = ""
End Sub

Private Sub btnCopy_Click()
    Clipboard.Clear
    Clipboard.SetText (cbAddress.Text)
End Sub

Private Sub btnFFmpeg_Click()
Dim objShell: Set objShell = CreateObject("WScript.Shell")
    If Len(information.Text) < 20 Then
        MsgBox "You need to get a stream address first!"
    Else
        Debug.Print objShell.CurrentDirectory
        objShell.Run Chr(34) & App.Path & "\ffmpeg.exe" & Chr(34) & " -hwaccel auto -i " & information.Text & " -c:v copy " & Chr(34) & App.Path & "\Recordings\" & getOutputName & Chr(34)
        Sleep (2000)
        Call HideAllRecorders 'hide the ffmpeg window.
    End If
End Sub

Private Sub btnGallery_Click()
    Gallery.Show
    Gallery.Top = Me.Top
    Gallery.Left = Me.Left
End Sub

Private Sub btnGetStreamAddress_Click()
On Error GoTo ErrorExit
Dim modelHtml
    
    modelHtml = getHTML(cbAddress.Text)
    
    'Format Address
    modelHtml = Left(modelHtml, InStr(modelHtml, ".m3u8") + 4)
    modelHtml = Right(modelHtml, Len(modelHtml) - InStr(modelHtml, "https://edge") + 1)
    
    If Len(modelHtml) < 20 Then
        modelHtml = ""
        MsgBox "Sorry, the model is offline or does not exist!"
    End If
    
    Call unfuckModelAddress(modelHtml)
    
    information.Text = modelHtml
    
ErrorExit:
    Exit Sub
    
End Sub


Private Sub unfuckModelAddress(ByRef modelURL)
'Dim strTempA: strTempA = ""
Dim strTempB: strTempB = ""
    
    'strTempA = Left(modelURL, InStr(1, modelURL, "/live")) & "live-hls/"
    'strTempB = Replace(modelURL, strTempA, "")
    
    strTempB = Replace(modelURL, "/live\u002Dhls/", "/live-hls/")
    strTempB = Replace(strTempB, "\u002Dhls/", "")
    strTempB = Replace(strTempB, "\u002D", "-")
    'strTempB = Replace(strTempB, "playlist.m3u8", "chunklist_w693825947_b5128000_t64RlBTOjMwLjA=.m3u8")
    
    modelURL = strTempB 'strTempA & strTempB

End Sub




Private Sub btnRemFav_Click()
On Error Resume Next
    List1.RemoveItem (List1.ListIndex)
    Call WriteFavourites
End Sub

Private Sub btnRunRec_Click()
    RunningRecorders.Show
    RunningRecorders.Left = Me.Left
    RunningRecorders.Top = Me.Top
End Sub

'Show preview of current stream.
Private Sub btnShowPreview_Click()
    WindowsMediaPlayer1.URL = information.Text
    WindowsMediaPlayer1.settings.mute = True
    WindowsMediaPlayer1.stretchToFit = True
End Sub

Private Sub btnWhoIsOnline_Click()
On Error Resume Next
    Call whoIsOnline
End Sub

Private Sub Command1_Click()
    Clipboard.Clear
    Clipboard.SetText getHTML("https://cbjpeg.stream.highwebmedia.com/stream?room=cutiebooty_em")
End Sub

Private Sub Command2_Click()
    Clipboard.Clear
    Clipboard.SetText getHTML("https://cbjpeg.stream.highwebmedia.com/stream?room=happyhornycorn")
End Sub

Private Sub Form_Load()
Dim objFSO: Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim colFavs
Dim x
    
    'Check for ffmpeg.
    If FileExists(App.Path & "\ffmpeg.exe") = False Then MsgBox "ffmpeg not detected, please place it in the same directory as this executable!", vbOKOnly, "ffmpeg missing": Unload Me: Exit Sub
    
    'Load favourites.
    If FileExists(App.Path & "\Favourites.txt") Then
        Set colFavs = ReadFavourites
        For Each x In colFavs
            List1.AddItem x
        Next
    End If
    
    'Check if the recording folder is present, and create it if needed.
    If Not objFSO.FolderExists(App.Path & "\Recordings") Then
        objFSO.CreateFolder (App.Path & "\Recordings")
    End If
    
End Sub


Private Sub List1_Click()
    Call btnClear_Click
    cbAddress.Text = "https://chaturbate.com/" & List1.Text & "/"
    If CheckAutoLoad.Value = 1 Then
        Call btnGetStreamAddress_Click
        Call btnShowPreview_Click
    End If
End Sub



Private Sub List2_Click()
    Call btnClear_Click
    cbAddress.Text = "https://chaturbate.com/" & List2.Text & "/"
    Call btnGetStreamAddress_Click
    Call btnShowPreview_Click
End Sub
