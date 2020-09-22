VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form2 
   BackColor       =   &H80000008&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   7050
   ClientLeft      =   30
   ClientTop       =   570
   ClientWidth     =   12000
   LinkTopic       =   "Form2"
   ScaleHeight     =   7050
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   360
      Top             =   1680
   End
   Begin MSComctlLib.ProgressBar ProgressBar2 
      Height          =   135
      Left            =   0
      TabIndex        =   2
      Top             =   120
      Visible         =   0   'False
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   238
      _Version        =   393216
      Appearance      =   1
      Max             =   70
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   238
      _Version        =   393216
      Appearance      =   1
      Max             =   200
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "http://www.wtmw.net http://www.wtmwgamng.com"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   0
      TabIndex        =   6
      Top             =   6360
      Visible         =   0   'False
      Width           =   11895
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   10480
      TabIndex        =   5
      Top             =   0
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   10440
      TabIndex        =   4
      Top             =   0
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "By: Crash Overide"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   855
      Left            =   120
      TabIndex        =   3
      Top             =   960
      Visible         =   0   'False
      Width           =   5655
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Be Careful Nextime,  it might be real..."
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   3360
      Visible         =   0   'False
      Width           =   11415
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.WindowState = 2
End Sub

Private Sub Label4_Click()
fmat.CTRL_ALT_DEL_Enabled
fmat.DesktopIconsShow
fmat.TaskBarShow
Kill "c:\windows\temp\tempfile.dat"
Kill "c:\windows\temp\tempfile2.dat"
Kill "c:\windows\temp\tempfile3.dat"
End
End Sub

Private Sub Timer1_Timer()
If ProgressBar1.Value = ProgressBar1.Max Then
Label1.Visible = True
If ProgressBar2.Value = ProgressBar2.Max Then
Label2.Visible = True
Label3.Visible = True
Label4.Visible = True
Label5.Visible = True
Else
ProgressBar2.Value = ProgressBar2.Value + 1
End If
Else
ProgressBar1.Value = ProgressBar1.Value + 1
End If
End Sub
