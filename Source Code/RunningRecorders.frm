VERSION 5.00
Begin VB.Form RunningRecorders 
   Caption         =   "Running Recorders"
   ClientHeight    =   5100
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6705
   LinkTopic       =   "Form1"
   ScaleHeight     =   5100
   ScaleWidth      =   6705
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   4320
      Top             =   240
   End
   Begin VB.CommandButton btnHide 
      Caption         =   "Hide All Recorders"
      Height          =   495
      Left            =   4320
      TabIndex        =   3
      Top             =   4320
      Width           =   2175
   End
   Begin VB.CommandButton btnShow 
      Caption         =   "Show All Recorders"
      Height          =   495
      Left            =   4320
      TabIndex        =   2
      Top             =   720
      Width           =   2175
   End
   Begin VB.ListBox List1 
      Height          =   4155
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   4095
   End
   Begin VB.Label Label2 
      Caption         =   $"RunningRecorders.frx":0000
      Height          =   2295
      Left            =   4320
      TabIndex        =   4
      Top             =   1680
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Window Handle"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2175
   End
End
Attribute VB_Name = "RunningRecorders"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnHide_Click()
Dim i
    If List1.ListCount <> 0 Then
        For i = 0 To List1.ListCount - 1
            Call HideWindow(CDbl(List1.List(i)))
        Next i
    End If
End Sub

Private Sub btnShow_Click()
Dim i
    If List1.ListCount <> 0 Then
        For i = 0 To List1.ListCount - 1
            Call UnHideWindow(CDbl(List1.List(i)))
        Next i
    End If
End Sub

'Updates the list of recorders each tick.
Private Sub Timer1_Timer()
Dim colRecorders As New Collection
Dim x
    
    List1.Clear
    Set colRecorders = LoadTaskList
    
    For Each x In colRecorders
        List1.AddItem x
    Next
    
End Sub
