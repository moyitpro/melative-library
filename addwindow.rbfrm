#tag WindowBegin Window addwindow   BackColor       =   &hFFFFFF   Backdrop        =   ""   CloseButton     =   False   Composite       =   True   Frame           =   8   FullScreen      =   False   HasBackColor    =   False   Height          =   2.41e+2   ImplicitInstance=   True   LiveResize      =   False   MacProcID       =   0   MaxHeight       =   32000   MaximizeButton  =   False   MaxWidth        =   32000   MenuBar         =   ""   MenuBarVisible  =   True   MinHeight       =   64   MinimizeButton  =   False   MinWidth        =   64   Placement       =   0   Resizeable      =   False   Title           =   "Search and Add"   Visible         =   True   Width           =   4.9e+2   Begin TextField TextField1      AcceptTabs      =   ""      Alignment       =   0      AutoDeactivate  =   True      BackColor       =   &hFFFFFF      Bold            =   ""      Border          =   True      CueText         =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Format          =   ""      Height          =   22      HelpTag         =   "Title of the Media"      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   20      LimitText       =   0      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Mask            =   ""      Password        =   ""      ReadOnly        =   ""      Scope           =   0      TabIndex        =   1      TabPanelIndex   =   0      TabStop         =   True      Text            =   ""      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   19      Underline       =   ""      UseFocusRing    =   True      Visible         =   True      Width           =   246   End   Begin PushButton SearchBut      AutoDeactivate  =   True      Bold            =   ""      Cancel          =   ""      Caption         =   "Search"      Default         =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   390      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   3      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   19      Underline       =   ""      Visible         =   True      Width           =   80   End   Begin PopupMenu PopupMenu1      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      InitialValue    =   "anime\rmanga\rlightnovel\rvn\radrama"      Italic          =   ""      Left            =   278      ListIndex       =   0      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   2      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   19      Underline       =   ""      Visible         =   True      Width           =   100   End   Begin Listbox Listbox1      AutoDeactivate  =   True      AutoHideScrollbars=   True      Bold            =   False      Border          =   True      ColumnCount     =   1      ColumnsResizable=   ""      ColumnWidths    =   ""      DataField       =   ""      DataSource      =   ""      DefaultRowHeight=   -1      Enabled         =   True      EnableDrag      =   ""      EnableDragReorder=   ""      GridLinesHorizontal=   0      GridLinesVertical=   0      HasHeading      =   ""      HeadingIndex    =   -1      Height          =   120      HelpTag         =   ""      Hierarchical    =   False      Index           =   -2147483648      InitialParent   =   ""      InitialValue    =   ""      Italic          =   ""      Left            =   20      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      RequiresSelection=   ""      Scope           =   0      ScrollbarHorizontal=   ""      ScrollBarVertical=   True      SelectionType   =   0      TabIndex        =   4      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   11      TextUnit        =   0      Top             =   49      Underline       =   ""      UseFocusRing    =   False      Visible         =   True      Width           =   450      _ScrollWidth    =   -1   End   Begin ComboBox ComboBox1      AutoComplete    =   False      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      InitialValue    =   "Current\rUnknown\rComplete\rPlanned\rStarted\rPaused\rResumed\rHold\rSubscribed\rWishlisted\rMarathon\rBacklog\rDropped\r"      Italic          =   ""      Left            =   90      ListIndex       =   0      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   5      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   11      TextUnit        =   0      Top             =   177      Underline       =   ""      UseFocusRing    =   True      Visible         =   True      Width           =   106   End   Begin StaticText StaticText1      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   9      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   ""      Scope           =   0      TabIndex        =   5      TabPanelIndex   =   0      Text            =   "State:"      TextAlign       =   2      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   13      TextUnit        =   0      Top             =   177      Underline       =   ""      Visible         =   True      Width           =   69   End   Begin PushButton PushButton2      AutoDeactivate  =   True      Bold            =   ""      Cancel          =   ""      Caption         =   "Add"      Default         =   False      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   390      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   False      Scope           =   0      TabIndex        =   8      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   208      Underline       =   ""      Visible         =   True      Width           =   80   End   Begin PushButton PushButton3      AutoDeactivate  =   True      Bold            =   ""      Cancel          =   True      Caption         =   "Cancel"      Default         =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   298      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   False      Scope           =   0      TabIndex        =   7      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   208      Underline       =   ""      Visible         =   True      Width           =   80   End   Begin ProgressWheel ProgressWheel1      AutoDeactivate  =   True      Enabled         =   True      Height          =   16      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   20      LockBottom      =   True      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   False      Scope           =   0      TabIndex        =   8      TabPanelIndex   =   0      TabStop         =   True      Top             =   212      Visible         =   False      Width           =   16   End   Begin CheckBox CheckBox1      AutoDeactivate  =   True      Bold            =   ""      Caption         =   "Add via Microblogging"      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   "If nothing shows up in the search result, choose this option to have it added to the list."      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   208      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      State           =   0      TabIndex        =   6      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   177      Underline       =   ""      Value           =   False      Visible         =   True      Width           =   177   End   Begin BevelButton MoreInfoBut      AcceptFocus     =   False      AutoDeactivate  =   True      BackColor       =   &h000000      Bevel           =   0      Bold            =   False      ButtonType      =   0      Caption         =   "More Info"      CaptionAlign    =   3      CaptionDelta    =   0      CaptionPlacement=   1      Enabled         =   False      HasBackColor    =   False      HasMenu         =   0      Height          =   22      HelpTag         =   ""      Icon            =   ""      IconAlign       =   0      IconDX          =   0      IconDY          =   0      Index           =   -2147483648      InitialParent   =   ""      Italic          =   False      Left            =   390      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      MenuValue       =   0      Scope           =   0      TabIndex        =   9      TabPanelIndex   =   0      TabStop         =   True      TextColor       =   &h000000      TextFont        =   11      TextSize        =   ""      TextUnit        =   0      Top             =   177      Underline       =   False      Value           =   False      Visible         =   True      Width           =   80   EndEnd#tag EndWindow#tag WindowCode	#tag Event		Sub Open()		  //set up listbox1 listbox		  listbox1.columncount=5		  listbox1.columnwidths="0,54%,16%,16%,14%"		  listbox1.HasHeading=True		  listbox1.Heading(0)="ID"		  listbox1.Heading(1)="Title"		  listbox1.Heading(2)="Type"		  listbox1.Heading(3)="Popularity"		  listbox1.Heading(4)="Rank"		  listbox1.Column(0).UserResizable=false		  		End Sub	#tag EndEvent	#tag Property, Flags = &h0		success As boolean	#tag EndProperty#tag EndWindowCode#tag Events TextField1	#tag Event		Function KeyDown(Key As String) As Boolean		  if key = chr(13) then		    Searchbut.Push		  end if		End Function	#tag EndEvent#tag EndEvents#tag Events SearchBut	#tag Event		Sub Action()		  progresswheel1.visible = true		  dim socket1 as new httpsocket		  dim listdata as string		  socket1.yield = true		  socket1.setrequestheader "Authorization","Basic " + app.loginenc		  listdata= socket1.get("http://melative.com/api/entity/search.xml?q=" + EncodeURLComponent(textfield1.text) ,10)		  If socket1.httpstatuscode = 200 then		    //Populate data to the list		    // clear list		    dim XML as new XMLDocument		    dim d as new dictionary // store search info		    dim p as new xmlnodelist // store search info		    dim c , i as integer		    dim r as xmlnode		    xml.LoadXML(listdata)		    r = getXMLroot(xml)		    p = getanything(r, "//response/context") // Load search info		    c = p.Length - 1		    listbox1.DeleteAllRows		    for i = 0 to c		      d = parseAnime(p.Item(i))		      if d.value("type") = "anime" or  d.value("type") = "manga" or d.value("type") = "lightnovel" or d.value("type") = "vn"  or d.value("type") = "adrama" then		        listbox1.AddRow(d.value("id"))		        listbox1.Cell(listbox1.LastIndex, 1) = d.value("alias")		        listbox1.Cell(listbox1.LastIndex, 2) = d.value("type")		        if d.haskey("popularity") = true then		          listbox1.Cell(listbox1.LastIndex, 3) = d.value("popularity")		        end if		        If d.haskey("rank") = true then		          listbox1.Cell(listbox1.LastIndex, 4) = d.value("rank")		        end if		      end if		    next		    listbox1.listboxsort(1)		    progresswheel1.visible = false		  else		    errboxshowdialog("Melative Library was unable to perform a search.","Cannot retrieve data. Check your internet connection and try your search again.")		    progresswheel1.visible = false		  end if		End Sub	#tag EndEvent#tag EndEvents#tag Events Listbox1	#tag Event		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean		  #If TargetMacOS		    if row mod 2 = 0 then		      g.forecolor = GetThemeColor(kThemeBrushListViewOddRowBackground)		    else		      g.forecolor = GetThemeColor(kThemeBrushListViewEvenRowBackground)		    end		    g.fillrect(0,0,g.width,g.height)		  #endif		End Function	#tag EndEvent	#tag Event		Sub Open()		  #If TargetMacOS		    me.Hierarchical = true		  #endif		End Sub	#tag EndEvent	#tag Event		Sub DoubleClick()		  textfield1.text = listbox1.cell(listbox1.listindex,1)		  If listbox1.cell(listbox1.listindex,2) = "anime" then		    popupmenu1.listindex = 0		  elseif listbox1.cell(listbox1.listindex,2) = "manga" then		    popupmenu1.listindex = 1		  elseif listbox1.cell(listbox1.listindex,2) = "lightnovel" then		    popupmenu1.listindex = 2		  elseif listbox1.cell(listbox1.listindex,2) = "vn" then		    popupmenu1.listindex = 3		  elseif listbox1.cell(listbox1.listindex,2) = "adrama" then		    popupmenu1.listindex = 4		  end if		End Sub	#tag EndEvent	#tag Event		Sub Change()		  If me.listindex = -1 then		    moreinfobut.enabled = false		  else		    moreinfobut.enabled = true		  end if		End Sub	#tag EndEvent#tag EndEvents#tag Events PushButton2	#tag Event		Sub Action()		  progresswheel1.visible = true		  If Textfield1.text = "" then		    errboxshowdialog("Melative Library was unable to add your title to your list since you didn't enter a title", "Enter a title you want to add and try adding it again")		    progresswheel1.visible = false		  else		    If checkbox1.value = true then		      dim socket1 as new httpsocket		      dim data as string		      dim form1 as new dictionary		      // Set content		      		      // Use Normal Updating		      // Figure out the num of episodes. If zero, episode part will not be shown in the update		      dim s as string		      If popupmenu1.text = "anime" or popupmenu1.text = "adrama" then		        s = "watching"		      elseif popupmenu1.text = "manga" or popupmenu1.text = "lightnovel" then		        s = "reading"		      elseif popupmenu1.text = "vn" then		        s = "playing"		      end if		      form1.value("message") = "/" + s + " /"+ popupmenu1.text + "/" + textfield1.text+ "/"		      		      // Set Client ( e.g. <username> in anime <time> ago from MAL Client OS X)		      form1.value("source") = "Melative Library"		      // setup the socket to POST the form		      socket1.setFormData form1		      socket1.setrequestheader "Authorization","Basic " + app.loginenc		      data = socket1.post("http://melative.com/api/micro/update.json",10)		      If socket1.httpstatuscode = 200  then		        success = true		        hide		      else		        // Show Error		        errboxshowdialog("Melative Library was unable to add your title to your list", "Check your internet connection and try adding your title again.")		        success = false		        progresswheel1.visible = false		      end if		    else		      If UpdateState(textfield1.text,combobox1.text,popupmenu1.text) = 200  then		        success = true		        hide		      else		        // Show Error		        errboxshowdialog("Melative Library was unable to add your title to your list", "Check your internet connection and try adding your title again.")		        success = false		        progresswheel1.visible = false		      end if		    end if		  end if		End Sub	#tag EndEvent#tag EndEvents#tag Events PushButton3	#tag Event		Sub Action()		  hide		End Sub	#tag EndEvent#tag EndEvents#tag Events MoreInfoBut	#tag Event		Sub Action()		  ShowMoreInfowindow(listbox1.cell(listbox1.listindex,1),listbox1.cell(listbox1.listindex,2))		End Sub	#tag EndEvent#tag EndEvents