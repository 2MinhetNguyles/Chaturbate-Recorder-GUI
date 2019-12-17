Attribute VB_Name = "modTypes"
'Cam girl type.
Public Type CamGirl
    name As String          'Name of camgirl
    status As Integer       'Using enum: camStatus
    m3u8 As String          'm3u8 address string
    recording As Boolean    'Whether or not there is a recording running for this cam girl
End Type


'Used to keep track of what recorder is what.
Public Type ffMpegRecorder
    hWnd As String
    ModelName As String
End Type
