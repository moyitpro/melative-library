#tag ClassProtected Class WindowMenuItemInherits MenuItem	#tag Event		Function Action() As Boolean		  dim w as Window = me.Window		  if w <> Nil then		    w.Show		  end if		  return true		End Function	#tag EndEvent	#tag Event		Sub EnableMenu()		  dim w as Window = me.Window		  if w <> Nil then		    dim altTitle as String = AlternateTitle(w)		    if altTitle <> "" then		      me.Text = altTitle		    else		      me.Text = w.Title		    end if		  end if		  		  		End Sub	#tag EndEvent	#tag Method, Flags = &h21		Private Function AlternateTitle(w as Window) As String		  //from Window Manager docs:  This API sets an alternate title for a window.		  //The alternate title overrides what is displayed in the Window menu.		  //If you do not set an alternate title, the normal window title is used.		  //You would normally use this if the window title was not expressive		  //enough to be used in the Window menu (or similar text-only situation).		  		  if w is nil then		    return ""		  end if		  		  soft declare function CopyWindowAlternateTitle lib CarbonFramework (inWindow as WindowPtr, ByRef outTitle as CFStringRef) as Integer		  		  dim outTitle as CFStringRef		  dim OSStatus as Integer = CopyWindowAlternateTitle(w, outTitle)		  if OSStatus <> 0 then		    return ""		  end if		  		  return outTitle		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub Constructor(w as Window)		  if w Is Nil then		    return		  end if		  		  me.Tag = w.handle		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function Window() As Window		  const VartypeInteger = 2		  		  if me.Tag.Type <> VartypeInteger then		    return nil		  end if		  		  dim theWindow as Window		  for i as Integer = 0 to WindowCount - 1		    if me.Tag.IntegerValue = Window(i).handle then		      theWindow = Window(i)		      exit		    end if		  next		  return theWindow		End Function	#tag EndMethod	#tag Constant, Name = CarbonFramework, Type = String, Dynamic = False, Default = \"Carbon.framework", Scope = Private	#tag EndConstant	#tag ViewBehavior		#tag ViewProperty			Name="AutoEnable"			Group="Behavior"			InitialValue="0"			Type="Boolean"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="Checked"			Group="Behavior"			InitialValue="0"			Type="Boolean"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="CommandKey"			Group="Behavior"			Type="String"			EditorType="MultiLineEditor"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="Enabled"			Group="Behavior"			InitialValue="0"			Type="Boolean"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="Icon"			Group="Behavior"			InitialValue="0"			Type="Picture"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="Index"			Visible=true			Group="ID"			InitialValue="-2147483648"			Type="Integer"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="KeyboardShortcut"			Group="Behavior"			Type="String"			EditorType="MultiLineEditor"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="Left"			Visible=true			Group="Position"			InitialValue="0"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Name"			Visible=true			Group="ID"			Type="String"			EditorType="MultiLineEditor"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="Super"			Visible=true			Group="ID"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Text"			Group="Behavior"			Type="String"			EditorType="MultiLineEditor"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="Top"			Visible=true			Group="Position"			InitialValue="0"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Visible"			Group="Behavior"			InitialValue="0"			Type="Boolean"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="_Bold"			Group="Behavior"			InitialValue="0"			Type="Boolean"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="_Italic"			Group="Behavior"			InitialValue="0"			Type="Boolean"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="_mIndex"			Group="Behavior"			InitialValue="0"			Type="Integer"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="_mName"			Group="Behavior"			Type="String"			EditorType="MultiLineEditor"			InheritedFrom="MenuItem"		#tag EndViewProperty		#tag ViewProperty			Name="_Underline"			Group="Behavior"			InitialValue="0"			Type="Boolean"			InheritedFrom="MenuItem"		#tag EndViewProperty	#tag EndViewBehaviorEnd Class#tag EndClass