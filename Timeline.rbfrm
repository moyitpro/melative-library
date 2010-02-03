#tag WindowBegin Window Timeline   BackColor       =   &hFFFFFF   Backdrop        =   ""   CloseButton     =   True   Composite       =   True   Frame           =   0   FullScreen      =   False   HasBackColor    =   False   Height          =   4.14e+2   ImplicitInstance=   True   LiveResize      =   False   MacProcID       =   0   MaxHeight       =   32000   MaximizeButton  =   False   MaxWidth        =   32000   MenuBar         =   866092770   MenuBarVisible  =   True   MinHeight       =   64   MinimizeButton  =   True   MinWidth        =   64   Placement       =   0   Resizeable      =   False   Title           =   "Stream"   Visible         =   True   Width           =   2.97e+2   Begin TextArea commentsfield      AcceptTabs      =   ""      Alignment       =   0      AutoDeactivate  =   True      BackColor       =   &hFFFFFF      Bold            =   ""      Border          =   True      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Format          =   ""      Height          =   62      HelpTag         =   ""      HideSelection   =   True      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   0      LimitText       =   0      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Mask            =   ""      Multiline       =   True      ReadOnly        =   ""      Scope           =   0      ScrollbarHorizontal=   ""      ScrollbarVertical=   True      Styled          =   True      TabIndex        =   1      TabPanelIndex   =   0      TabStop         =   True      Text            =   ""      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   348      Underline       =   ""      UseFocusRing    =   False      Visible         =   True      Width           =   205   End   Begin PushButton PushButton1      AutoDeactivate  =   True      Bold            =   ""      Cancel          =   ""      Caption         =   "Update"      Default         =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   210      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   2      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   390      Underline       =   ""      Visible         =   True      Width           =   80   End   Begin StaticText MessageLength      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Italic          =   ""      Left            =   210      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   ""      Scope           =   0      TabIndex        =   4      TabPanelIndex   =   0      Text            =   0      TextAlign       =   0      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   11      TextUnit        =   0      Top             =   348      Underline       =   ""      Visible         =   True      Width           =   50   End   Begin Timer Timer1      Height          =   32      Index           =   -2147483648      Left            =   415      LockedInPosition=   False      Mode            =   2      Period          =   300000      Scope           =   0      TabPanelIndex   =   0      Top             =   180      Width           =   32   End   Begin HTMLViewer HTMLViewer1      AutoDeactivate  =   True      Enabled         =   True      Height          =   340      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   -1      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   0      TabPanelIndex   =   0      Top             =   0      Visible         =   True      Width           =   298   EndEnd#tag EndWindow#tag WindowCode	#tag Event		Sub Close()		  f.Delete		End Sub	#tag EndEvent	#tag Event		Sub Open()		  loadtimeline		End Sub	#tag EndEvent	#tag MenuHandler		Function FileClose() As Boolean Handles FileClose.Action			me.close			Return True					End Function	#tag EndMenuHandler	#tag Method, Flags = &h0		Sub loadtimeline()		  dim socket1 as new httpsocket		  dim listdata as string		  dim d as new dictionary		  dim d2 as new dictionary		  dim p as new xmlnodelist		  dim p2 as new xmlnodelist		  dim c , i as integer		  dim r as xmlnode		  dim m as string		  socket1.yield = true		  socket1.setrequestheader "Authorization","Basic " + app.loginenc		  listdata= socket1.get("http://melative.com/api/statuses/friends_timeline.xml" ,10)		  If socket1.httpstatuscode = 200 then		    //Populate data to the list		    // clear list		    dim stream as string		    Dim t as TextOutputStream		    f = SpecialFolder.Temporary		    f = f.child("t.html")		    t=TextOutputStream.Create(f)		    dim XML as new XMLDocument		    xml.LoadXML(listdata)		    r = getXMLroot(xml)		    p = getanything(r, "//statuses/status")		    p2 = getanything(r, "//statuses/status/user")		    c = p.Length - 1		    for i = 0 to c		      d = parseAnime(p.Item(i))		      d2 = parseAnime(p2.Item(i))		      m = "<img src='" + d2.value("profile_image_url") + "&size=64' alt='' align='left' /><b>" + d2.value("name") + "</b> " + d.value("text") + "<br />"+ d.value("source") + " on " + d.value("created_at")+"<br /><br />"		      stream = stream + m		    next		    htmlviewer1.LoadPage(stream,f)		  end if		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub melpostupdate()		  dim socket1 as new httpsocket		  pushbutton1.enabled = false		  dim data as string		  		  // create and populate the form object		  dim form2 as New Dictionary		  // Set content		  		  // Use Normal Updating		  form2.value("message") = commentsfield.text		  // Set Client ( e.g. <username> in anime <time> ago from MAL Client OS X)		  form2.value("source") = "Melative Library"		  // setup the socket to POST the form		  socket1.setFormData form2		  socket1.setrequestheader "Authorization","Basic " + app.loginenc		  data = socket1.post("http://melative.com/api/micro/update.json",10)		  		  // release data from memory		  form2 = nil		  If socket1.httpstatuscode = 200 then		    commentsfield.text = ""		    pushbutton1.enabled = true		    loadtimeline		  else		    // Show Error		    self.errboxshow("Melative Library was unable to post your update on Melative",   "Check to see if your internet connection is working or revertify your Melative account information and try posting your update again.")		    pushbutton1.enabled = true		  end if		  		End Sub	#tag EndMethod	#tag Property, Flags = &h0		f As folderitem	#tag EndProperty#tag EndWindowCode#tag Events commentsfield	#tag Event		Sub TextChange()		  MessageLength.text = cstr(Len(commentsfield.text))		End Sub	#tag EndEvent#tag EndEvents#tag Events PushButton1	#tag Event		Sub Action()		  		  if commentsfield.text = "" then		    self.errboxshow("Melative Library was unable to post the update.", "You cannot leave the message field blank. You must have a message written.")		  else		    melpostupdate		  end if		End Sub	#tag EndEvent#tag EndEvents#tag Events Timer1	#tag Event		Sub Action()		  loadtimeline		End Sub	#tag EndEvent#tag EndEvents#tag Events HTMLViewer1	#tag Event		Function CancelLoad(URL as String) As Boolean		  If url = ReplaceAll(f.URLPath, "/localhost/", "//")  then		    return false		  else		    showurl url		    return true		  end if		End Function	#tag EndEvent#tag EndEvents