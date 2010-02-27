#tag WindowBegin Window ErrorReporting   BackColor       =   16777215   Backdrop        =   ""   CloseButton     =   True   Composite       =   False   Frame           =   1   FullScreen      =   False   HasBackColor    =   False   Height          =   264   ImplicitInstance=   True   LiveResize      =   True   MacProcID       =   0   MaxHeight       =   32000   MaximizeButton  =   False   MaxWidth        =   32000   MenuBar         =   ""   MenuBarVisible  =   True   MinHeight       =   64   MinimizeButton  =   False   MinWidth        =   64   Placement       =   0   Resizeable      =   False   Title           =   "Error Reporting"   Visible         =   True   Width           =   583   Begin StaticText StaticText1      AutoDeactivate  =   True      Bold            =   True      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   87      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   ""      Scope           =   0      TabIndex        =   0      TabPanelIndex   =   0      TabStop         =   True      Text            =   "Sorry, this program have encountered a error and needs to close..."      TextAlign       =   0      TextColor       =   0      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   14      Underline       =   ""      Visible         =   True      Width           =   449   End   Begin TextArea Errorlog      AcceptTabs      =   ""      Alignment       =   0      AutoDeactivate  =   True      BackColor       =   16777215      Bold            =   ""      Border          =   True      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Format          =   ""      Height          =   99      HelpTag         =   ""      HideSelection   =   True      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   87      LimitText       =   0      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Mask            =   ""      Multiline       =   True      ReadOnly        =   ""      Scope           =   0      ScrollbarHorizontal=   ""      ScrollbarVertical=   True      Styled          =   True      TabIndex        =   2      TabPanelIndex   =   0      TabStop         =   True      Text            =   ""      TextColor       =   0      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   113      Underline       =   ""      UseFocusRing    =   True      Visible         =   True      Width           =   482   End   Begin PushButton PushButton1      AutoDeactivate  =   True      Bold            =   ""      Cancel          =   ""      Caption         =   "Quit"      Default         =   False      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   489      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   3      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   224      Underline       =   ""      Visible         =   True      Width           =   80   End   Begin StaticText StaticText2      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   32      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   87      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   True      Scope           =   0      TabIndex        =   4      TabPanelIndex   =   0      TabStop         =   True      Text            =   "This program encountered a error and cannot continue. If you are in a middle of something, your work might be lost"      TextAlign       =   0      TextColor       =   0      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   39      Underline       =   ""      Visible         =   True      Width           =   504   End   Begin StaticText StaticText3      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   38      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   87      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   True      Scope           =   0      TabIndex        =   5      TabPanelIndex   =   0      TabStop         =   True      Text            =   "Help us by copying the error log and posting it on the bug reports thread so it can be fixed. "      TextAlign       =   0      TextColor       =   0      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   70      Underline       =   ""      Visible         =   True      Width           =   482   End   Begin Canvas Canvas1      AcceptFocus     =   ""      AcceptTabs      =   ""      AutoDeactivate  =   True      Backdrop        =   758576787      DoubleBuffer    =   False      Enabled         =   True      EraseBackground =   True      Height          =   66      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   12      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   6      TabPanelIndex   =   0      TabStop         =   True      Top             =   14      UseFocusRing    =   True      Visible         =   True      Width           =   63   End   Begin PushButton PushButton2      AutoDeactivate  =   True      Bold            =   ""      Cancel          =   ""      Caption         =   "Save Log"      Default         =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   397      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   7      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   224      Underline       =   ""      Visible         =   True      Width           =   80   EndEnd#tag EndWindow#tag WindowCode	#tag Event		Sub Open()		  beep		End Sub	#tag EndEvent	#tag Method, Flags = &h0		Sub Constructor(error as RuntimeException)		  // Calling the overridden superclass constructor.		  Super.Constructor		  Dim t as Introspection.TypeInfo		  t=Introspection.GetType(error)		  Errorlog.text=Errorlog.text + "Version: "+app.ShortVersion + EndOfLine		  Errorlog.text=Errorlog.text + "Executable File: "+app.ExecutableFile.Name + EndOfLine		  Errorlog.text=Errorlog.text + "Mac OS X Version: "+Carbon.SystemVersion + EndOfLine		  Errorlog.text=Errorlog.text + "Error Name: "+str(t.FullName) + EndOfLine		  Errorlog.text=Errorlog.text + "Error Number: "+str(error.ErrorNumber) + EndOfLine		  Errorlog.text=Errorlog.text + "Error Message: "+error.Message + EndOfLine		  // the following works only if in project IDE the App's IncludeFunctionNames option is checked		  Errorlog.text=Errorlog.text+"Stack Trace: "+ EndOfLine+""+join(error.Stack,endofline) + EndOfLine		End Sub	#tag EndMethod#tag EndWindowCode#tag Events PushButton1	#tag Event		Sub Action()		  ErrorReporting.close		  quit		End Sub	#tag EndEvent#tag EndEvents#tag Events PushButton2	#tag Event		Sub Action()		  // Export Anime List		  Dim dlg as New SaveAsDialog		  dim f as folderItem		  Dim s as TextOutputStream		  dlg.InitialDirectory=SpecialFolder.Documents		  dlg.SuggestedFileName="errorlog"		  dlg.Title="Save Error Log"		  dlg.Filter=".log" //defined as a file type in FileTypes1 File Type Set		  f=dlg.ShowModalWithin(self)		  If f <> Nil then		    s=f.createtextfile		    s.write errorlog.text		    s.close		    quit		  Else		    //user canceled		    quit		  End if		End Sub	#tag EndEvent#tag EndEvents