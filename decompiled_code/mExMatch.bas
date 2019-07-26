
Public Sub Proc_9_0_42A220
  Dim arg_8 As Me
  Dim var_44 As Me
  Dim var_40 As Me
  Dim arg_C As Me
  repz stosd
  var_58 = arg_8.ScaleHeight
  var_38 = CLng(var_58)
  var_58 = arg_8.ScaleMode
  var_38 = var_38 - 00000001h
  var_34 = CLng(var_58)
  CLng(var_58) = CLng(var_58) - 00000001h
  ReDim arg_C(0 To var_38-00000001h, 0 To CLng(var_58))
  var_58 = arg_8.CurrentX
  var_44 = arg_8.ControlBox
  If var_40 Then
    If var_40 = 2 Then
      If var_40.%x3 = PropBag.ReadProperty(%StkVar1, %StkVar2) >= 0 Then
        var_eax = Err.Raise
      End If
      If esi >= 0 Then
        var_eax = Err.Raise
      End If
      var_40.%x1 = Invoke 'Ignore this = var_40.%x1 = Invoke 'Ignore this + var_40.%x3 = PropBag.ReadProperty(%StkVar1, %StkVar2)
      GoTo loc_0042A3D0
    End If
  End If
  var_eax = Err.Raise
  loc_0042A3D0: 
  var_eax = GetDIBits(var_58, CLng(var_54), 00000000h, var_34)
  GoTo loc_0042A43D
  Exit Sub
  loc_0042A43D: 
  Exit Sub
End Sub

Public Sub Proc_9_1_42A460
  Dim var_3C As Global
  On Error Resume Next
  var_eax = Unknown_VTable_Call[ecx+00000300h]
  var_9C = Unknown_VTable_Call[ecx+00000300h]
  var_eax = Global.LoadPicture 8, var_4C, var_48, var_44, 10
  var_eax = Unknown_VTable_Call[ebx+00000064h]
  var_eax = Unknown_VTable_Call[ecx+00000300h]
  arg_10 = arg_10 * 15
  var_D8 = arg_10
  var_eax = Unknown_VTable_Call[eax+00000084h]
  var_eax = Unknown_VTable_Call[edx+00000300h]
  arg_14 = arg_14 * 15
  var_E0 = arg_14
  var_eax = Unknown_VTable_Call[ecx+0000008Ch]
  var_eax = Unknown_VTable_Call[ecx+000002FCh]
  var_9C = Unknown_VTable_Call[ecx+000002FCh]
  var_48 = arg_C
  var_eax = Global.LoadPicture arg_C, var_4C, var_48, var_44, 10
  var_eax = Unknown_VTable_Call[ebx+00000064h]
  var_eax = Unknown_VTable_Call[ecx+000002FCh]
  arg_10 = arg_10 * 15
  var_E8 = arg_10
  var_eax = Unknown_VTable_Call[eax+00000084h]
  var_eax = Unknown_VTable_Call[edx+000002FCh]
  arg_14 = arg_14 * 15
  var_F0 = arg_14
  var_eax = Unknown_VTable_Call[ecx+0000008Ch]
  var_eax = Unknown_VTable_Call[ecx+00000300h]
  var_eax = Proc_9_0_42A220(var_38, var_24, var_38)
  var_eax = Unknown_VTable_Call[edx+000002FCh]
  var_eax = Proc_9_0_42A220(var_38, var_28, var_38)
  arg_10 = arg_10 - 00000001h
  var_A8 = arg_10
  If ecx <= arg_10-00000001h Then
    arg_14 = arg_14 - 00000001h
    var_B0 = arg_14
    If var_30 <= arg_14-00000001h Then
      If var_24 Then
        If var_24 = 2 Then
          ecx = ecx - edx+0000001Ch
          If ecx-edx+0000001Ch >= 0 Then
            var_eax = Err.Raise
          End If
          var_30 = var_30 - edx+00000014h
          If var_30 >= 0 Then
            var_eax = Err.Raise
          End If
          %x1 = Global.Screen = %x1 = Global.Screen * var_30
          %x1 = Global.Screen = %x1 = Global.Screen + ecx-edx+0000001Ch
          GoTo loc_0042AAF9
        End If
      End If
      var_eax = Err.Raise
  loc_0042AAF9: 
      If var_28 Then
        If var_28 = 2 Then
          var_34 = var_34 - ecx+0000001Ch
          If var_34 >= 0 Then
            var_eax = Err.Raise
          End If
          var_30 = var_30 - ecx+00000014h
          If var_30 >= 0 Then
            var_eax = Err.Raise
          End If
          var_28(7) = var_28(7) * var_30
          var_28(7) = var_28(7) + var_34
          GoTo loc_0042AB4B
        End If
      End If
      call var_30(var_3C, Unknown_VTable_Call[edx+000002FCh], global_0042C060, var_3C, var_3C, Unknown_VTable_Call[ecx+00000300h], global_0042C060, var_38, var_F0, var_38, Unknown_VTable_Call[edx+000002FCh], global_0042C060)
  loc_0042AB4B: 
      ecx+esi = ecx+esi - edi+eax
      call __vbaI4Abs
      If __vbaI4Abs < 600000 Then
        var_20 = var_20(1)
      End If
      00000001h = 00000001h + var_30
      var_30 = 00000001h+var_30
      GoTo loc_0042AA96
    End If
    00000001h = 00000001h + var_34
    var_34 = 00000001h+var_34
    GoTo loc_0042AA76
  End If
  var_FC = var_20 * 100
  var_108 = arg_10 * ebx
  If global_42C000 = 0 Then
    GoTo loc_0042AC18
  End If
  loc_0042AC18: 
  var_2C = (var_FC / var_108)
  Exit Sub
  GoTo loc_0042AC47
  Exit Sub
  loc_0042AC47: 
  Exit Sub
End Sub
