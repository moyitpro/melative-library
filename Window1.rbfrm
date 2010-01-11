#tag WindowBegin Window Window1   BackColor       =   &hFFFFFF   Backdrop        =   ""   CloseButton     =   True   Composite       =   False   Frame           =   0   FullScreen      =   False   HasBackColor    =   False   Height          =   498   ImplicitInstance=   True   LiveResize      =   False   MacProcID       =   0   MaxHeight       =   32000   MaximizeButton  =   False   MaxWidth        =   32000   MenuBar         =   ""   MenuBarVisible  =   True   MinHeight       =   64   MinimizeButton  =   True   MinWidth        =   64   Placement       =   0   Resizeable      =   False   Title           =   "Melative Library"   Visible         =   True   Width           =   657   Begin Listbox yourlist      AutoDeactivate  =   True      AutoHideScrollbars=   True      Bold            =   ""      Border          =   True      ColumnCount     =   1      ColumnsResizable=   ""      ColumnWidths    =   ""      DataField       =   ""      DataSource      =   ""      DefaultRowHeight=   -1      Enabled         =   True      EnableDrag      =   ""      EnableDragReorder=   ""      GridLinesHorizontal=   0      GridLinesVertical=   0      HasHeading      =   ""      HeadingIndex    =   -1      Height          =   498      HelpTag         =   ""      Hierarchical    =   ""      Index           =   -2147483648      InitialParent   =   ""      InitialValue    =   ""      Italic          =   ""      Left            =   0      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   ""      LockRight       =   ""      LockTop         =   ""      RequiresSelection=   ""      Scope           =   0      ScrollbarHorizontal=   ""      ScrollBarVertical=   True      SelectionType   =   0      TabIndex        =   0      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   0      Underline       =   ""      UseFocusRing    =   False      Visible         =   True      Width           =   657      _ScrollWidth    =   -1   End   Begin maintoolbar maintoolbar      Enabled         =   True      Height          =   77      Index           =   -2147483648      InitialParent   =   ""      Left            =   -16      LockedInPosition=   False      Scope           =   0      TabPanelIndex   =   0      Top             =   -44      Visible         =   True      Width           =   374   EndEnd#tag EndWindow#tag WindowCode	#tag Event		Sub Open()		  //set up yourlist listbox		  yourlist.columncount=5		  yourlist.columnwidths="0,50%,12%,22%,16%"		  yourlist.HasHeading=True		  yourlist.Heading(0)="ID"		  yourlist.Heading(1)="Title"		  yourlist.Heading(2)="State"		  yourlist.Heading(3)="Last Used"		  yourlist.Heading(4)="Progress"		  yourlist.Column(0).UserResizable=false		  me.Title = "Melative Library - Logged in as: " + app.MemUsername		  loadlist		End Sub	#tag EndEvent	#tag Method, Flags = &h21		Private Sub loadlist()		  dim socket1 as new httpsocket		  dim listdata as string		  socket1.setrequestheader "Authorization","Basic " + app.loginenc		  listdata= socket1.get("http://melative.com/api/library.xml?media=anime&alpha=1" ,10)		  // debugyourlist.text = data		  If socket1.httpstatuscode = 200 then		    //Populate data to the list		    // clear list		    yourlist.visible = false		    dim XML as new XMLDocument		    dim d as new dictionary // store item information		    dim d2 as new dictionary // context information		    dim d3 as new dictionary // progress		    dim p as new xmlnodelist // store item information		    dim p2 as new xmlnodelist // context information		    dim p3 as new xmlnodelist // progress		    yourlist.DeleteAllRows		    xml.LoadXML(listdata)		    r = getXMLroot(xml)		    p = getList(r) // load item information		    p2=getcontext(r) // load context information		    p3 = getprogress(r) //load progress information		    c = p.Length - 1		    yourlist.visible = false		    for i = 0 to c		      d = parseAnime(p.Item(i))		      d2 = parsecontext(p2.Item(i))		      Yourlist.AddRow(d2.Value("id"))		      Yourlist.Cell(Yourlist.LastIndex, 1) = d2.Value("alias")		      Yourlist.Cell(Yourlist.LastIndex, 2) = d.Value("state")		      Yourlist.Cell(Yourlist.LastIndex, 3) = d.Value("last")		      if d.HasKey("progress")= true then		        d3 = parseAnime(p3.item(pcount))		        pcount = pcount + 1		        If d3.haskey("type") = true then		          Yourlist.Cell(Yourlist.LastIndex, 4) = d3.value("type") + " " + d3.value("name")		        else		          Yourlist.Cell(Yourlist.LastIndex, 4) = d3.value("name")		        end if		      end if		      		    next		    yourlist.visible = true		    //yourlist.listboxsort(1)		  else		    //self.errboxshow("There is a problem while retreving your list",   "Unable to refresh your Anime List. Make sure you are connected to the internet!")		  end if		  		  		End Sub	#tag EndMethod	#tag Property, Flags = &h0		c As Integer	#tag EndProperty	#tag Property, Flags = &h0		i As Integer	#tag EndProperty	#tag Property, Flags = &h0		pcount As Integer	#tag EndProperty	#tag Property, Flags = &h0		r As XmlNode	#tag EndProperty#tag EndWindowCode#tag Events yourlist	#tag Event		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean		  if row mod 2 = 0 then		    g.forecolor = GetThemeColor(kThemeBrushListViewOddRowBackground)		  else		    g.forecolor = GetThemeColor(kThemeBrushListViewEvenRowBackground)		  end		  g.fillrect(0,0,g.width,g.height)		End Function	#tag EndEvent	#tag Event		Sub Change()		  If yourlist.listindex = -1 then		    maintoolbar.usebut.enabled = false		    maintoolbar.UpdateBut.enabled = false		  else		    maintoolbar.usebut.enabled = true		    maintoolbar.UpdateBut.enabled = true		  End If		End Sub	#tag EndEvent#tag EndEvents#tag Events maintoolbar	#tag Event		Sub Action(item As ToolItem)		  Select Case item.name		  Case "UseBut"		    dim mu as new melupdatewindow		    mu.truewindow.Title = "Post Melative Update - " + yourlist.cell(yourlist.listindex,1)		    mu.titletext.Text = yourlist.cell(yourlist.listindex,1)		    mu.checkbox1.value = true		    mu.Show		  Case "Refreshbut"		    loadlist		  end select		End Sub	#tag EndEvent#tag EndEvents