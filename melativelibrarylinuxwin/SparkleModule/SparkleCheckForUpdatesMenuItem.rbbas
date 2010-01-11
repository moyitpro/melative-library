	#tag Class	Class SparkleCheckForUpdatesMenuItem	Inherits AppleMenuItem		#tag Event			Function Action() As Boolean			  soft declare function ProcessHICommand lib "Carbon.framework" ( inCommand as Ptr) as Integer			  			  const sizeOfHICommand = 14			  dim command as new MemoryBlock(sizeOfHICommand)			  			  const kHICommandFromMenu = 1			  const kHICommandFromWindow = 4			  			  //I really should set this to kHICommandFromMenu.  But to do so requires that I get the MenuRef and MenuItemIndex of this menu item.  This is possible,			  //but it is some work, and what I do here appears to work for now.			  command.UInt32Value(0) = kHICommandFromWindow			  command.UInt32Value(4) = OSTypeToUInt32(kHICommandSparkleCheckForUpdates)			  command.Long(8) = 0			  			  dim OSError as Integer = ProcessHICommand(command)			End Function		#tag EndEvent		#tag Method, Flags = &h21			Private Shared Function OSTypeToUInt32(x as OSType) As UInt32			  dim char() as String = SplitB(x, "")			  return ((AscB(char(0))*256 + AscB(char(1)))*256 + AscB(char(2)))*256 + AscB(char(3))			End Function		#tag EndMethod		#tag Constant, Name = kHICommandSparkleCheckForUpdates, Type = String, Dynamic = False, Default = \"sCUP", Scope = Private		#tag EndConstant		#tag ViewBehavior			#tag ViewProperty				Name="AutoEnable"				Group="Behavior"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Checked"				Group="Behavior"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="CommandKey"				Group="Behavior"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Enabled"				Group="Behavior"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Icon"				Group="Behavior"				InitialValue="0"				Type="Picture"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Index"				Visible=true				Group="ID"				InitialValue="-2147483648"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="KeyboardShortcut"				Group="Behavior"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Left"				Visible=true				Group="Position"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Name"				Visible=true				Group="ID"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Super"				Visible=true				Group="ID"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Text"				Group="Behavior"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Top"				Visible=true				Group="Position"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="Visible"				Group="Behavior"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="_Bold"				Group="Behavior"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="_Italic"				Group="Behavior"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="_mIndex"				Group="Behavior"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="_mName"				Group="Behavior"				InheritedFrom="MenuItem"			#tag EndViewProperty			#tag ViewProperty				Name="_Underline"				Group="Behavior"				InitialValue="0"				InheritedFrom="MenuItem"			#tag EndViewProperty		#tag EndViewBehavior	End Class	#tag EndClass