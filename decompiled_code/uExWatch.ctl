VERSION 5.00
Begin VB.UserControl uExWatch
  BackColor = &H0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  ClipControls = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 570
  ClientHeight = 555
  Appearance = 0 'Flat
  HasDC = 0   'False
End

Attribute VB_Name = "uExWatch"


Private Sub IEObject_UnknownEvent_4 '429070
  Dim arg_8 As Me
  Set var_24 = arg_C
  On Error Resume Next
  call RaiseEvent(arg_8, 00000001h, 00000001h, &H4008, var_44, CStr(arg_10), var_3C, FFFFFFFFh, 0, esi, ebx)
  GoTo loc_00429170
  Exit Sub
  loc_00429170: 
End Sub

Private Sub IEObject_UnknownEvent_5 '4291A0
  Dim arg_8 As Me
  On Error Resume Next
  var_eax = uExWatch.VTable_000007C4
  call RaiseEvent(arg_8, 00000002h, edi, arg_8, On Error Resume Next, var_20, On Error Resume Next, edi, global_0040A2F8, 00000001h, edi, arg_8, arg_8)
  Exit Sub
  GoTo loc_00429256
  Exit Sub
  loc_00429256: 
End Sub

Public Property Get IEKey() '428D50
  Dim arg_8 As Me
  On Error Resume Next
  var_eax = uExWatch.VTable_000007BC
  arg_8.Enabled = var_28
  var_20 = var_28
  Exit Sub
  GoTo loc_00428E10
  Exit Sub
  loc_00428E10: 
End Sub

Public Function AddSubClass(Value) '428E40
  Dim arg_8 As Me
  Dim var_34 As Me
  On Error Resume Next
  var_eax = uExWatch.VTable_000007C4
  var_eax = uExWatch.VTable_000007C4
  var_eax = uExWatch.VTable_000007BC
  var_28 = arg_8.Top
  var_30 = uExWatch.ValidatePath(var_28)
  var_24 = Trim$(var_30)
  If Len(var_24) > 0 Then
    call RaiseEvent(arg_8, 00000001h, 00000001h, 00004008h, var_40, var_24, var_38, arg_8, var_34, arg_8, Value, var_34, Value, Value, global_0040A2F8, arg_8)
  End If
  GoTo loc_0042900E
  loc_0042900E: 
  Exit Sub
  GoTo loc_0042903C
  Exit Sub
  loc_0042903C: 
End Function

Public Sub SetIENothing() '429280
  On Error Resume Next
  var_eax = uExWatch.VTable_000007C4
  Exit Sub
  GoTo loc_0042931E
  Exit Sub
  loc_0042931E: 
End Sub

Public Function ValidatePath(nstr) '429340
  On Error Resume Next
  var_2C = nstr
  var_2C = Replace(var_2C, "file:///", global_00408114, 1, -1, 0)
  var_2C = Replace(var_2C, global_00409840, global_00406544, 1, -1, 0)
  GoTo loc_00429443
  loc_00429431: 
  var_24 = var_24 + var_54
  var_24 = var_24+var_54
  loc_00429443: 
  If var_24 <= &HFF Then
    var_48 = var_24
    var_2C = Replace(var_2C, global_004097E0 & Hex$(var_24), Chr$(var_24), 1, -1, 1)
    GoTo loc_00429431
  End If
  var_28 = var_2C
  GoTo loc_0042956E
  If 0 And 4 Then
  End If
  Exit Sub
  loc_0042956E: 
End Function
