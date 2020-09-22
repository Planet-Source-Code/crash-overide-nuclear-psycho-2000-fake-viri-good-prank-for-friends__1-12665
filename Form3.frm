VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form3 
   BorderStyle     =   0  'None
   Caption         =   "Form3"
   ClientHeight    =   1455
   ClientLeft      =   4140
   ClientTop       =   3405
   ClientWidth     =   3615
   LinkTopic       =   "Form3"
   ScaleHeight     =   1455
   ScaleWidth      =   3615
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   3120
      Top             =   0
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   195
      Left            =   180
      TabIndex        =   0
      Top             =   1050
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   344
      _Version        =   393216
      Appearance      =   1
      Max             =   200
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   $"Form3.frx":0000
      Height          =   855
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   3375
   End
   Begin VB.Line Line8 
      X1              =   3480
      X2              =   3480
      Y1              =   1320
      Y2              =   960
   End
   Begin VB.Line Line7 
      X1              =   3480
      X2              =   120
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Line Line6 
      X1              =   120
      X2              =   120
      Y1              =   1320
      Y2              =   960
   End
   Begin VB.Line Line5 
      X1              =   120
      X2              =   3480
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Line Line4 
      X1              =   0
      X2              =   0
      Y1              =   1440
      Y2              =   0
   End
   Begin VB.Line Line3 
      X1              =   3600
      X2              =   0
      Y1              =   1440
      Y2              =   1440
   End
   Begin VB.Line Line2 
      X1              =   3600
      X2              =   3600
      Y1              =   1440
      Y2              =   0
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   3600
      Y1              =   0
      Y2              =   0
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
fmat.CTRL_ALT_DEL_Disabled
fmat.DesktopIconsHide
fmat.MinimizeAll
fmat.TaskBarHide
End Sub

Private Sub Timer1_Timer()
If ProgressBar1.Value = ProgressBar1.Max Then
Unload Me
Form1.Show
Else
ProgressBar1.Value = ProgressBar1.Value + 1
' Write three DAT files with the Progress Bars value
' in it, that make the hard drive work a little bit.
Open "c:\windows\temp\tempfile.dat" For Append As #1
Open "c:\windows\temp\tempfile2.dat" For Append As #2
Open "c:\windows\temp\tempfile3.dat" For Append As #3
    Print #1, ProgressBar1.Value
    Print #2, ProgressBar1.Value
    Print #3, ProgressBar1.Value
    Close #1
    Close #2
    Close #3
End If
End Sub
