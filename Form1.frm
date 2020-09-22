VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   975
   ClientLeft      =   2520
   ClientTop       =   3705
   ClientWidth     =   6855
   Enabled         =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   975
   ScaleWidth      =   6855
   ShowInTaskbar   =   0   'False
   Begin MSComctlLib.ProgressBar ProgressBar4 
      Height          =   190
      Left            =   200
      TabIndex        =   5
      Top             =   390
      Visible         =   0   'False
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   344
      _Version        =   393216
      Appearance      =   1
   End
   Begin MSComctlLib.ProgressBar ProgressBar3 
      Height          =   195
      Left            =   195
      TabIndex        =   4
      Top             =   390
      Visible         =   0   'False
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   344
      _Version        =   393216
      Appearance      =   1
      Max             =   65
   End
   Begin MSComctlLib.ProgressBar ProgressBar2 
      Height          =   180
      Left            =   195
      TabIndex        =   3
      Top             =   390
      Visible         =   0   'False
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   318
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.FileListBox File2 
      Height          =   285
      Left            =   720
      TabIndex        =   2
      Top             =   720
      Visible         =   0   'False
      Width           =   495
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   180
      Left            =   200
      TabIndex        =   0
      Top             =   390
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   318
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   240
      Top             =   600
   End
   Begin VB.Label PCent 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Installing Computer Virus, Please Wait..."
      Height          =   255
      Left            =   2040
      TabIndex        =   1
      Top             =   120
      Width           =   2895
   End
   Begin VB.Line Line8 
      X1              =   120
      X2              =   120
      Y1              =   600
      Y2              =   360
   End
   Begin VB.Line Line7 
      X1              =   6720
      X2              =   120
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Line Line6 
      X1              =   6720
      X2              =   6720
      Y1              =   360
      Y2              =   600
   End
   Begin VB.Line Line5 
      X1              =   120
      X2              =   6720
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Line Line4 
      X1              =   6840
      X2              =   6840
      Y1              =   960
      Y2              =   0
   End
   Begin VB.Line Line3 
      X1              =   0
      X2              =   6840
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   0
      Y1              =   0
      Y2              =   960
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   6840
      Y1              =   0
      Y2              =   0
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const MF_BYPOSITION = &H400&
Private Const MF_REMOVE = &H1000&


Private Declare Function GetSystemMenu Lib "user32" _
        (ByVal hWnd As Long, ByVal bRevert As Long) As Long


Private Declare Function GetMenuItemCount Lib "user32" _
        (ByVal hMenu As Long) As Long


Private Declare Function DrawMenuBar Lib "user32" _
        (ByVal hWnd As Long) As Long


Private Declare Function RemoveMenu Lib "user32" _
        (ByVal hMenu As Long, ByVal nPosition As Long, _
        ByVal wFlags As Long) As Long
        


Private Sub Timer1_Timer()
File2.Path = "C:\Windows"
ProgressBar1.Max = File2.ListCount
If ProgressBar1.Value = ProgressBar1.Max Then
ProgressBar2.Visible = True
PCent.Caption = "Finishing Up Installation, Please Wait..."
If ProgressBar2.Value = 100 Then
PCent.Caption = "Starting Up Virus, Please Wait..."
ProgressBar3.Visible = True
If ProgressBar3.Value = 65 Then
ProgressBar4.Visible = True
PCent.Caption = "Formatting Hard Drive, muahahahahaha >:)"
ProgressBar4.Max = 500
If ProgressBar4.Value = ProgressBar4.Max Then
Form2.Show
Unload Me
Else
ProgressBar4.Value = ProgressBar4.Value + 1
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
Else
ProgressBar3.Value = ProgressBar3.Value + 1
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
Else
ProgressBar2.Value = ProgressBar2.Value + 1
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
