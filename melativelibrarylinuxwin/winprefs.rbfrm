#tag WindowBegin Window winprefs   BackColor       =   16777215   Backdrop        =   ""   CloseButton     =   True   Composite       =   True   Frame           =   0   FullScreen      =   False   HasBackColor    =   False   Height          =   275   ImplicitInstance=   True   LiveResize      =   False   MacProcID       =   0   MaxHeight       =   32000   MaximizeButton  =   False   MaxWidth        =   32000   MenuBar         =   ""   MenuBarVisible  =   True   MinHeight       =   64   MinimizeButton  =   False   MinWidth        =   64   Placement       =   0   Resizeable      =   False   Title           =   "General"   Visible         =   True   Width           =   600   Begin TabPanel TabPanel1      AutoDeactivate  =   True      Bold            =   ""      Enabled         =   True      Height          =   259      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   13      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   ""      LockRight       =   ""      LockTop         =   ""      Panels          =   ""      Scope           =   0      SmallTabs       =   ""      TabDefinition   =   "General\rUpdates"      TabIndex        =   7      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   8      Underline       =   ""      Value           =   0      Visible         =   True      Width           =   570      Begin StaticText StaticText1         AutoDeactivate  =   True         Bold            =   True         DataField       =   ""         DataSource      =   ""         Enabled         =   True         Height          =   20         HelpTag         =   ""         Index           =   -2147483648         InitialParent   =   "TabPanel1"         Italic          =   ""         Left            =   55         LockBottom      =   ""         LockedInPosition=   False         LockLeft        =   ""         LockRight       =   ""         LockTop         =   ""         Multiline       =   ""         Scope           =   0         TabIndex        =   0         TabPanelIndex   =   1         Text            =   "Login"         TextAlign       =   0         TextColor       =   0         TextFont        =   "System"         TextSize        =   13         TextUnit        =   0         Top             =   49         Underline       =   ""         Visible         =   True         Width           =   100      End      Begin CheckBox CheckBox1         AutoDeactivate  =   True         Bold            =   ""         Caption         =   "Enable Automatic Login"         DataField       =   ""         DataSource      =   ""         Enabled         =   True         Height          =   20         HelpTag         =   ""         Index           =   -2147483648         InitialParent   =   "TabPanel1"         Italic          =   ""         Left            =   55         LockBottom      =   ""         LockedInPosition=   False         LockLeft        =   ""         LockRight       =   ""         LockTop         =   ""         Scope           =   0         State           =   0         TabIndex        =   1         TabPanelIndex   =   1         TabStop         =   True         TextFont        =   "System"         TextSize        =   13         TextUnit        =   0         Top             =   73         Underline       =   ""         Value           =   False         Visible         =   True         Width           =   212      End      Begin StaticText StaticText4         AutoDeactivate  =   True         Bold            =   ""         DataField       =   ""         DataSource      =   ""         Enabled         =   True         Height          =   50         HelpTag         =   ""         Index           =   -2147483648         InitialParent   =   "TabPanel1"         Italic          =   ""         Left            =   76         LockBottom      =   ""         LockedInPosition=   False         LockLeft        =   ""         LockRight       =   ""         LockTop         =   ""         Multiline       =   True         Scope           =   0         TabIndex        =   2         TabPanelIndex   =   1         Text            =   "Enabling this option will make Melative Library log you in automatically using your stored password. If Remember Password isn't checked, this option cannot be enabled."         TextAlign       =   0         TextColor       =   0         TextFont        =   "System"         TextSize        =   11         TextUnit        =   0         Top             =   97         Underline       =   ""         Visible         =   True         Width           =   465      End      Begin PushButton PushButton1         AutoDeactivate  =   False         Bold            =   ""         Cancel          =   ""         Caption         =   "Check Now…"         Default         =   ""         Enabled         =   True         Height          =   20         HelpTag         =   ""         Index           =   -2147483648         InitialParent   =   "TabPanel1"         Italic          =   ""         Left            =   260         LockBottom      =   ""         LockedInPosition=   False         LockLeft        =   ""         LockRight       =   ""         LockTop         =   ""         Scope           =   0         TabIndex        =   0         TabPanelIndex   =   2         TabStop         =   True         TextFont        =   "System"         TextSize        =   13         TextUnit        =   0         Top             =   116         Underline       =   ""         Visible         =   True         Width           =   106      End      Begin CheckBox CheckBox2         AutoDeactivate  =   True         Bold            =   ""         Caption         =   "Check for Updates Automatically"         DataField       =   ""         DataSource      =   ""         Enabled         =   True         Height          =   20         HelpTag         =   ""         Index           =   -2147483648         InitialParent   =   "TabPanel1"         Italic          =   ""         Left            =   190         LockBottom      =   ""         LockedInPosition=   False         LockLeft        =   ""         LockRight       =   ""         LockTop         =   ""         Scope           =   0         State           =   0         TabIndex        =   1         TabPanelIndex   =   2         TabStop         =   True         TextFont        =   "System"         TextSize        =   0         TextUnit        =   0         Top             =   77         Underline       =   ""         Value           =   False         Visible         =   True         Width           =   246      End      Begin StaticText StaticText5         AutoDeactivate  =   True         Bold            =   True         DataField       =   ""         DataSource      =   ""         Enabled         =   True         Height          =   20         HelpTag         =   ""         Index           =   -2147483648         InitialParent   =   "TabPanel1"         Italic          =   ""         Left            =   67         LockBottom      =   ""         LockedInPosition=   False         LockLeft        =   ""         LockRight       =   ""         LockTop         =   ""         Multiline       =   ""         Scope           =   0         TabIndex        =   2         TabPanelIndex   =   2         Text            =   "Automatic Updates\r"         TextAlign       =   0         TextColor       =   0         TextFont        =   "System"         TextSize        =   13         TextUnit        =   0         Top             =   51         Underline       =   ""         Visible         =   True         Width           =   168      End   EndEnd#tag EndWindow#tag WindowCode	#tag Event		Sub Close()		  // Save Preferences		  app.prefs.Save		End Sub	#tag EndEvent	#tag Event		Sub Open()		  		  if app.prefs.root.GetBoolean("RememberPassword",false) = false then		    checkbox1.enabled = false		  else		    		  end if		End Sub	#tag EndEvent	#tag MenuHandler		Function FileClose() As Boolean Handles FileClose.Action			me.close			Return True					End Function	#tag EndMenuHandler#tag EndWindowCode#tag Events CheckBox1	#tag Event		Sub Open()		  checkbox1.value = app.prefs.root.GetBoolean("AutoLogin",false)		End Sub	#tag EndEvent	#tag Event		Sub Action()		  app.prefs.root.SetBoolean("AutoLogin", me.value)		End Sub	#tag EndEvent#tag EndEvents#tag Events CheckBox2	#tag Event		Sub Action()		  app.prefs.root.SetBoolean("AutoUpdates", me.value)		End Sub	#tag EndEvent	#tag Event		Sub Open()		  me.value = app.prefs.root.GetBoolean("AutoUpdates",false)		End Sub	#tag EndEvent#tag EndEvents