;* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; You can find below functions and/or procedures in the AutoIT help file,
; just remove the "AU3_". For example to find the help for "AU3_Run",
; please search the "Run" instead of "AU3_Run". That's all.

; Maybe the AutoIT help for the "Run" can have more parameters than here, so
; you will need to use extract count of parameters from the given function/procedure as below.

; NOTE
; Because Inno Setup does not support the "PWideChar", I created overlayed procedures and functions for original procedures/functions.
; Please don't use any variables/procedures/functions beginning with "Internal", because your installer may work incorrectly or don't works at all.

; P.S.
; I'm not the author of the AutoIT dll, I only "translated" below functions and procedures from the AutoIT help to use them into Inno Setup.
; So, all bugs and errors please report to the AutoIT Team, or ask on http://www.autoitscript.com/forum/, if it does not works for you correctly.

; Best Regards,
; Wilenty
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*

[Files]
Source: "AutoItX3.dll"; DestDir: "{tmp}"; Flags: ignoreversion dontcopy
[/Files]

[Code]
Const
  AU3_INTDEFAULT = -2147483647;	{ "Default" value for _some_ int parameters (largest negative number)}

///////////////////////////////////////////////////////////////////////////////
// Exported functions
///////////////////////////////////////////////////////////////////////////////

//Init procedure
Procedure AU3_Init();
  External 'AU3_Init@files:AutoItX3.dll stdcall';
//Returns internal error function, 0 = no errors (in AutoIT script is: @error )
Function AU3_error(): Integer;
  External 'AU3_error@files:AutoItX3.dll stdcall';

//AutoItSetOption function
Function AU3_AutoItSetOption(const szOption: String; const nValue: Integer): Integer;
  External 'AU3_AutoItSetOption@files:AutoItX3.dll stdcall';

//Clipboard functions
{Please use the AU3_ClipGet instead of InternalClipGet}
Procedure InternalClipGet(szClip: PAnsiChar; nBufSize: Integer);
  External 'AU3_ClipGet@files:AutoItX3.dll stdcall';
Procedure AU3_ClipPut(const szClip: String);
  External 'AU3_ClipPut@files:AutoItX3.dll stdcall';

//Control functions
Function AU3_ControlClick(const szTitle: String; const szText: String; const szControl: String; const szButton: String; const nNumClicks: Integer; const nX {= AU3_INTDEFAULT}: Integer; const nY {= AU3_INTDEFAULT}: Integer): Integer;
  External 'AU3_ControlClick@files:AutoItX3.dll stdcall';
Function AU3_ControlClickByHandle(const hWnd: HWND; const hCtrl: HWND; const szButton: String; const nNumClicks: Integer; const nX {= AU3_INTDEFAULT}: Integer; const nY {= AU3_INTDEFAULT}: Integer): Integer;
  External 'AU3_ControlClickByHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlCommand instead of InternalControlCommand}
Procedure InternalControlCommand(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; const szExtra: String; szResult: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlCommand@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlCommandByHandle instead of InternalControlCommandByHandle}
Procedure InternalControlCommandByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra: String; szResult: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlCommandByHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlListView instead of InternalControlListView}
Procedure InternalControlListView(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; const szExtra1: String; const szExtra2: String; szResult: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlListView@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlListViewByHandle instead of InternalControlListViewByHandle}
Procedure InternalControlListViewByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra1: String; const szExtra2: String; szResult: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlListViewByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlDisable(const szTitle: String; const szText: String; const szControl: String): Integer;
  External 'AU3_ControlDisable@files:AutoItX3.dll stdcall';
Function AU3_ControlDisableByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;
  External 'AU3_ControlDisableByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlEnable(const szTitle: String; const szText: String; const szControl: String): Integer;
  External 'AU3_ControlEnable@files:AutoItX3.dll stdcall';
Function AU3_ControlEnableByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;
  External 'AU3_ControlEnableByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlFocus(const szTitle: String; const szText: String; const szControl: String): Integer;
  External 'AU3_ControlFocus@files:AutoItX3.dll stdcall';
Function AU3_ControlFocusByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;
  External 'AU3_ControlFocusByHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlGetFocus instead of InternalControlGetFocus}
Procedure InternalControlGetFocus(const szTitle: String; const szText: String; szControlWithFocus: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlGetFocus@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlGetFocusByHandle instead of InternalControlGetFocusByHandle}
Procedure InternalControlGetFocusByHandle(const hWnd: HWND; szControlWithFocus: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlGetFocusByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlGetHandle(const hWnd: HWND; const szControl: String): HWND;
  External 'AU3_ControlGetHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlGetHandleAsText instead of InternalControlGetHandleAsText}
Procedure InternalControlGetHandleAsText(const szTitle: String; const szText: String; const szControl: String; szRetText: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlGetHandleAsText@files:AutoItX3.dll stdcall';
Function AU3_ControlGetPos(const szTitle: String; const szText: String; const szControl: String; var lpRect: TRect): Integer;
  External 'AU3_ControlGetPos@files:AutoItX3.dll stdcall';
Function AU3_ControlGetPosByHandle(const hWnd: HWND; const hCtrl: HWND; var lpRect: TRect): Integer;
  External 'AU3_ControlGetPosByHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlGetText instead of InternalControlGetText}
Procedure InternalControlGetText(const szTitle: String; const szText: String; const szControl: String; szControlText: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlGetText@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlGetTextByHandle instead of InternalControlGetTextByHandle}
Procedure InternalControlGetTextByHandle(const hWnd: HWND; const hCtrl: HWND; szControlText: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlGetTextByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlHide(const szTitle: String; const szText: String; const szControl: String): Integer;
  External 'AU3_ControlHide@files:AutoItX3.dll stdcall';
Function AU3_ControlHideByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;
  External 'AU3_ControlHideByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlMove(const szTitle: String; const szText: String; const szControl: String; const nX: Integer; const nY: Integer; const nWidth {= -1}: Integer; const nHeight {= -1}: Integer): Integer;
  External 'AU3_ControlMove@files:AutoItX3.dll stdcall';
Function AU3_ControlMoveByHandle(const hWnd: HWND; const hCtrl: HWND; const nX: Integer; const nY: Integer; const nWidth {= -1}: Integer; const nHeight {= -1}: Integer): Integer;
  External 'AU3_ControlMoveByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlSend(const szTitle: String; const szText: String; const szControl: String; const szSendText: String; const nMode {= 0}: Integer): Integer;
  External 'AU3_ControlSend@files:AutoItX3.dll stdcall';
Function AU3_ControlSendByHandle(const hWnd: HWND; const hCtrl: HWND; const szSendText: String; const nMode {= 0}: Integer): Integer;
  External 'AU3_ControlSendByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlSetText(const szTitle: String; const szText: String; const szControl: String; const szControlText: String): Integer;
  External 'AU3_ControlSetText@files:AutoItX3.dll stdcall';
Function AU3_ControlSetTextByHandle(const hWnd: HWND; const hCtrl: HWND; const szControlText: String): Integer;
  External 'AU3_ControlSetTextByHandle@files:AutoItX3.dll stdcall';
Function AU3_ControlShow(const szTitle: String; const szText: String; const szControl: String): Integer;
  External 'AU3_ControlShow@files:AutoItX3.dll stdcall';
Function AU3_ControlShowByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;
  External 'AU3_ControlShowByHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlTreeView instead of InternalControlTreeView}
Procedure InternalControlTreeView(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; const szExtra1: String; const szExtra2: String; szResult: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlTreeView@files:AutoItX3.dll stdcall';
{Please use the AU3_ControlTreeViewByHandle instead of InternalControlTreeViewByHandle}
Procedure InternalControlTreeViewByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra1: String; const szExtra2: String; szResult: PAnsiChar; nBufSize: Integer);
  External 'AU3_ControlTreeViewByHandle@files:AutoItX3.dll stdcall';

//DriveMap functions
{Please use the AU3_DriveMapAdd instead of InternalDriveMapAdd}
Procedure InternalDriveMapAdd(const szDevice: String; const szShare: String; const nFlags: Integer; const szUser: String; const szPwd: String; szResult: PAnsiChar; nBufSize: Integer);
  External 'AU3_DriveMapAdd@files:AutoItX3.dll stdcall';
Function AU3_DriveMapDel(const szDevice: String): Integer;
  External 'AU3_DriveMapDel@files:AutoItX3.dll stdcall';
{Please use the AU3_DriveMapGet instead of InternalDriveMapGet}
Procedure InternalDriveMapGet(const szDevice: String; szMapping: PAnsiChar; nBufSize: Integer);
  External 'AU3_DriveMapGet@files:AutoItX3.dll stdcall';

//IsAdmin function
Function AU3_IsAdmin(): Integer;
  External 'AU3_IsAdmin@files:AutoItX3.dll stdcall';

//Mouse functions
Function AU3_MouseClick(const szButton: String; const nX {= AU3_INTDEFAULT}: Integer; const nY {= AU3_INTDEFAULT}: Integer; const nClicks {= 1}: Integer; const nSpeed {= -1}: Integer): Integer;
  External 'AU3_MouseClick@files:AutoItX3.dll stdcall';
Function AU3_MouseClickDrag(const szButton: String; const nX1: Integer; const nY1: Integer; const nX2: Integer; const nY2: Integer; const nSpeed {= -1}: Integer): Integer;
  External 'AU3_MouseClickDrag@files:AutoItX3.dll stdcall';
Procedure AU3_MouseDown(const szButton: String);
  External 'AU3_MouseDown@files:AutoItX3.dll stdcall';
Function AU3_MouseGetCursor(): Integer;
  External 'AU3_MouseGetCursor@files:AutoItX3.dll stdcall';
Procedure AU3_MouseGetPos(var lpPoint: TPoint);
  External 'AU3_MouseGetPos@files:AutoItX3.dll stdcall';
Function AU3_MouseMove(const nX: Integer; const nY: Integer; const nSpeed {= -1}: Integer): Integer;
  External 'AU3_MouseMove@files:AutoItX3.dll stdcall';
Procedure AU3_MouseUp(const szButton: String);
  External 'AU3_MouseUp@files:AutoItX3.dll stdcall';
Procedure AU3_MouseWheel(const szDirection: String; const nClicks: Integer);
  External 'AU3_MouseWheel@files:AutoItX3.dll stdcall';

//AutoItSetOption function alternative
Function AU3_Opt(const szOption: String; const nValue: Integer): Integer;
  External 'AU3_Opt@files:AutoItX3.dll stdcall';

//Pixel functions
Function AU3_PixelChecksum(const lpRect: TRect; const nStep {= 1}: Integer): LongInt;
  External 'AU3_PixelChecksum@files:AutoItX3.dll stdcall';
Function AU3_PixelGetColor(const nX: Integer; const nY: Integer): Integer;
  External 'AU3_PixelGetColor@files:AutoItX3.dll stdcall';
Procedure AU3_PixelSearch(const lpRect: TRect; const nCol: Integer; const nVar: Integer; const nStep: Integer; var pPointResult: TPoint);
  External 'AU3_PixelSearch@files:AutoItX3.dll stdcall';

//Process functions
Function AU3_ProcessClose(const szProcess: String): Integer;
  External 'AU3_ProcessClose@files:AutoItX3.dll stdcall';
Function AU3_ProcessExists(const szProcess: String): Integer;
  External 'AU3_ProcessExists@files:AutoItX3.dll stdcall';
Function AU3_ProcessSetPriority(const szProcess: String; const nPriority: Integer): Integer;
  External 'AU3_ProcessSetPriority@files:AutoItX3.dll stdcall';
Function AU3_ProcessWait(const szProcess: String; const nTimeout {= 0}: Integer): Integer;
  External 'AU3_ProcessWait@files:AutoItX3.dll stdcall';
Function AU3_ProcessWaitClose(const szProcess: String; const nTimeout {= 0}: Integer): Integer;
  External 'AU3_ProcessWaitClose@files:AutoItX3.dll stdcall';

//Run functions
Function AU3_Run(const szProgram: String; const szDir: String; const nShowFlag {= SW_SHOWNORMAL}: Integer): Integer;
  External 'AU3_Run@files:AutoItX3.dll stdcall';
Function AU3_RunWait(const szProgram: String; const szDir: String; const nShowFlag {= SW_SHOWNORMAL}: Integer): Integer;
  External 'AU3_RunWait@files:AutoItX3.dll stdcall';
Function AU3_RunAs(const szUser: String; const szDomain: String; const szPassword: String; const nLogonFlag: Integer; const szProgram: String; const szDir: String; const nShowFlag {= SW_SHOWNORMAL}: Integer): Integer;
  External 'AU3_RunAs@files:AutoItX3.dll stdcall';
Function AU3_RunAsWait(const szUser: String; const szDomain: String; const szPassword: String; const nLogonFlag: Integer; const szProgram: String; const szDir: String; const nShowFlag {= SW_SHOWNORMAL}: Integer): Integer;
  External 'AU3_RunAsWait@files:AutoItX3.dll stdcall';

//Send function
Procedure AU3_Send(const szSendText: String; const nMode {= 0}: Integer);
  External 'AU3_Send@files:AutoItX3.dll stdcall';

//OS shutdown/reboot function
Function AU3_Shutdown(const nFlags: Integer): Integer;
  External 'AU3_Shutdown@files:AutoItX3.dll stdcall';

//Sleep function
Procedure AU3_Sleep(const nMilliseconds: Integer);
  External 'AU3_Sleep@files:AutoItX3.dll stdcall';

//Statusbar functions
{Please use the AU3_StatusbarGetText instead of InternalStatusbarGetText}
Function InternalStatusbarGetText(const szTitle: String; const szText: String; const nPart: Integer; szStatusText: PAnsiChar; nBufSize: Integer): Integer;
  External 'AU3_StatusbarGetText@files:AutoItX3.dll stdcall';
{Please use the AU3_StatusbarGetTextByHandle instead of InternalStatusbarGetTextByHandle}
Function InternalStatusbarGetTextByHandle(const hWnd: HWND; const nPart: Integer; szStatusText: PAnsiChar; nBufSize: Integer): Integer;
  External 'AU3_StatusbarGetTextByHandle@files:AutoItX3.dll stdcall';

//ToolTip function
Procedure AU3_ToolTip(const szTip: String; const nX {= AU3_INTDEFAULT}: Integer; const nY {= AU3_INTDEFAULT}: Integer);
  External 'AU3_ToolTip@files:AutoItX3.dll stdcall';

//Window functions
Function AU3_WinActivate(const szTitle: String; const szText: String): Integer;
  External 'AU3_WinActivate@files:AutoItX3.dll stdcall';
Function AU3_WinActivateByHandle(const hWnd: HWND): Integer;
  External 'AU3_WinActivateByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinActive(const szTitle:String; const szText: String): Integer;
  External 'AU3_WinActive@files:AutoItX3.dll stdcall';
Function AU3_WinActiveByHandle(const hWnd: HWND): Integer;
  External 'AU3_WinActiveByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinClose(const szTitle: String; const szText: String): Integer;
  External 'AU3_WinClose@files:AutoItX3.dll stdcall';
Function AU3_WinCloseByHandle(const hWnd: HWND): Integer;
  External 'AU3_WinCloseByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinExists(const szTitle: String; const szText: String): Integer;
  External 'AU3_WinExists@files:AutoItX3.dll stdcall';
Function AU3_WinExistsByHandle(const hWnd: HWND): Integer;
  External 'AU3_WinExistsByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinGetCaretPos(var lpPoint: TPoint): Integer;
  External 'AU3_WinGetCaretPos@files:AutoItX3.dll stdcall';
{Please use the AU3_WinGetClassList instead of InternalWinGetClassList}
Procedure InternalWinGetClassList(const szTitle: String; const szText: String; szRetText: PAnsiChar; nBufSize: Integer);
  External 'AU3_WinGetClassList@files:AutoItX3.dll stdcall';
{Please use the AU3_WinGetClassListByHandle instead of InternalWinGetClassListByHandle}
Procedure InternalWinGetClassListByHandle(const hWnd: HWND; szRetText: PAnsiChar; nBufSize: Integer);
  External 'AU3_WinGetClassListByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinGetClientSize(const szTitle: String; const szText: String; var lpRect: TRect): Integer;
  External 'AU3_WinGetClientSize@files:AutoItX3.dll stdcall';
Function AU3_WinGetClientSizeByHandle(const hWnd: HWND; var lpRect: TRect): Integer;
  External 'AU3_WinGetClientSizeByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinGetHandle(const szTitle: String; const szText: String): HWND;
  External 'AU3_WinGetHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_WinGetHandleAsText instead of InternalWinGetHandleAsText}
Procedure InternalWinGetHandleAsText(const szTitle: String; const szText: String; szRetText: PAnsiChar; nBufSize: Integer);
  External 'AU3_WinGetHandleAsText@files:AutoItX3.dll stdcall';
Function AU3_WinGetPos(const szTitle: String; const szText: String; var lpRect: TRect): Integer;
  External 'AU3_WinGetPos@files:AutoItX3.dll stdcall';
Function AU3_WinGetPosByHandle(const hWnd: HWND; var lpRect: TRect): Integer;
  External 'AU3_WinGetPosByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinGetProcess(const szTitle: String; const szText: String): DWORD;
  External 'AU3_WinGetProcess@files:AutoItX3.dll stdcall';
Function AU3_WinGetProcessByHandle(const hWnd: HWND): DWORD;
  External 'AU3_WinGetProcessByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinGetState(const szTitle: String; const szText: String): Integer;
  External 'AU3_WinGetState@files:AutoItX3.dll stdcall';
Function AU3_WinGetStateByHandle(const hWnd: HWND): Integer;
  External 'AU3_WinGetStateByHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_WinGetText instead of InternalWinGetText}
Procedure InternalWinGetText(const szTitle: String; const szText: String; szRetText: PAnsiChar; nBufSize: Integer);
  External 'AU3_WinGetText@files:AutoItX3.dll stdcall';
{Please use the AU3_WinGetTextByHandle instead of InternalWinGetTextByHandle}
Procedure InternalWinGetTextByHandle(const hWnd: HWND; szRetText: PAnsiChar; nBufSize: Integer);
  External 'AU3_WinGetTextByHandle@files:AutoItX3.dll stdcall';
{Please use the AU3_WinGetTitle instead of InternalWinGetTitle}
Procedure InternalWinGetTitle(const szTitle: String; const szText: String; szRetText: PAnsiChar; nBufSize: Integer);
  External 'AU3_WinGetTitle@files:AutoItX3.dll stdcall';
{Please use the AU3_WinGetTitleByHandle instead of InternalWinGetTitleByHandle}
Procedure InternalWinGetTitleByHandle(const hWnd: HWND; szRetText: PAnsiChar; nBufSize: Integer);
  External 'AU3_WinGetTitleByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinKill(const szTitle: String; const szText: String): Integer;
  External 'AU3_WinKill@files:AutoItX3.dll stdcall';
Function AU3_WinKillByHandle(const hWnd: HWND): Integer;
  External 'AU3_WinKillByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinMenuSelectItem(const szTitle: String; const szText: String; const szItem1: String; const szItem2: String; const szItem3: String; const szItem4: String; const szItem5: String; const szItem6: String; const szItem7: String; const szItem8: String): Integer;
  External 'AU3_WinMenuSelectItem@files:AutoItX3.dll stdcall';
Function AU3_WinMenuSelectItemByHandle(const hWnd: HWND; const szItem1: String; const szItem2: String; const szItem3: String; const szItem4: String; const szItem5: String; const szItem6: String; const szItem7: String; const szItem8: String): Integer;
  External 'AU3_WinMenuSelectItemByHandle@files:AutoItX3.dll stdcall';
Procedure AU3_WinMinimizeAll();
  External 'AU3_WinMinimizeAll@files:AutoItX3.dll stdcall';
Procedure AU3_WinMinimizeAllUndo();
  External 'AU3_WinMinimizeAllUndo@files:AutoItX3.dll stdcall';
Function AU3_WinMove(const szTitle: String; const szText: String; const nX: Integer; const nY: Integer; const nWidth {= -1}: Integer; const nHeight {= -1}: Integer): Integer;
  External 'AU3_WinMove@files:AutoItX3.dll stdcall';
Function AU3_WinMoveByHandle(const hWnd: HWND; const nX: Integer; const nY: Integer; const nWidth {= -1}: Integer; const nHeight {= -1}: Integer): Integer;
  External 'AU3_WinMoveByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinSetOnTop(const szTitle: String; const szText: String; const nFlag: Integer): Integer;
  External 'AU3_WinSetOnTop@files:AutoItX3.dll stdcall';
Function AU3_WinSetOnTopByHandle(const hWnd: HWND; const nFlag: Integer): Integer;
  External 'AU3_WinSetOnTopByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinSetState(const szTitle: String; const szText: String; const nFlags: Integer): Integer;
  External 'AU3_WinSetState@files:AutoItX3.dll stdcall';
Function AU3_WinSetStateByHandle(const hWnd: HWND; const nFlags: Integer): Integer;
  External 'AU3_WinSetStateByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinSetTitle(const szTitle: String; const szText: String; const szNewTitle: String): Integer;
  External 'AU3_WinSetTitle@files:AutoItX3.dll stdcall';
Function AU3_WinSetTitleByHandle(const hWnd: HWND; const szNewTitle: String): Integer;
  External 'AU3_WinSetTitleByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinSetTrans(const szTitle: String; const szText: String; const nTrans: Integer): Integer;
  External 'AU3_WinSetTrans@files:AutoItX3.dll stdcall';
Function AU3_WinSetTransByHandle(const hWnd: HWND; const nTrans: Integer): Integer;
  External 'AU3_WinSetTransByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinWait(const szTitle: String; const szText: String; const nTimeout {= 0}: Integer): Integer;
  External 'AU3_WinWait@files:AutoItX3.dll stdcall';
Function AU3_WinWaitByHandle(const hWnd: HWND; const nTimeout: Integer): Integer;
  External 'AU3_WinWaitByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinWaitActive(const szTitle: String; const szText: String; const nTimeout {= 0}: Integer): Integer;
  External 'AU3_WinWaitActive@files:AutoItX3.dll stdcall';
Function AU3_WinWaitActiveByHandle(const hWnd: HWND; const nTimeout: Integer): Integer;
  External 'AU3_WinWaitActiveByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinWaitClose(const szTitle: String; const szText: String; const nTimeout {= 0}: Integer): Integer;
  External 'AU3_WinWaitClose@files:AutoItX3.dll stdcall';
Function AU3_WinWaitCloseByHandle(const hWnd: HWND; const nTimeout: Integer): Integer;
  External 'AU3_WinWaitCloseByHandle@files:AutoItX3.dll stdcall';
Function AU3_WinWaitNotActive(const szTitle: String; const szText: String; const nTimeout: Integer): Integer;
  External 'AU3_WinWaitNotActive@files:AutoItX3.dll stdcall';
Function AU3_WinWaitNotActiveByHandle(const hWnd: HWND; const nTimeout {= 0}: Integer): Integer;
  External 'AU3_WinWaitNotActiveByHandle@files:AutoItX3.dll stdcall';

///////////////////////////////////////////////////////////////////////////////

function InternalWideStringToMultiByte(CodePage: UINT; dwFlags: DWORD; const lpWideCharStr: String;
cchWideChar: Integer; lpMultiByteStr: String; cbMultiByte: Integer; lpDefaultChar: Char; lpUsedDefaultChar: BOOL): Integer;
	external 'WideCharToMultiByte@kernel32.dll stdcall';

Var
  InternalAstr: AnsiString;
  InternalStr: String;
  InternalBuffSize: Integer;

Procedure InternalSetBuffer(const BufferSize: Integer);
  Begin
    InternalStr := StringOfChar(#1, BufferSize);
    InternalBuffSize := BufferSize*2;
    InternalAstr := StringOfChar(#1, InternalBuffSize);
end;

Function InternalGetBuffer(): String;
  Begin
    InternalWideStringToMultiByte(0, 0, InternalAstr, InternalBuffSize, InternalStr, InternalBuffSize, #0, False);
    result := InternalStr;
    InternalBuffSize := Pos(#0, result);
    If ( InternalBuffSize > 0 ) then
      result := Copy(result, 0, InternalBuffSize-1);
end;

Procedure AU3_ClipGet(out szClip: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalClipGet(InternalAstr, nBufSize);
    szClip := InternalGetBuffer();
    nBufSize := InternalBuffSize;
End;

Procedure AU3_ControlCommand(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; szExtra: String; out szResult: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlCommand(szTitle, szText, szControl, szCommand, szExtra, InternalAstr, nBufSize);
    szResult := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlCommandByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra: String; out szResult: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlCommandByHandle(hWnd, hCtrl, szCommand, szExtra, InternalAstr, nBufSize);
    szResult := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlListView(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; const szExtra1: String; const szExtra2: String; out szResult: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlListView(szTitle, szText, szControl, szCommand, szExtra1, szExtra2, InternalAstr, nBufSize);
    szResult := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlListViewByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra1: String; const szExtra2: String; out szResult: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlListViewByHandle(hWnd, hCtrl, szCommand, szExtra1, szExtra2, InternalAstr, nBufSize);
    szResult := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlGetFocus(const szTitle: String; const szText: String; out szControlWithFocus: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlGetFocus(szTitle, szText, InternalAstr, nBufSize);
    szControlWithFocus := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlGetFocusByHandle(const hWnd: HWND; out szControlWithFocus: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlGetFocusByHandle(hWnd, InternalAstr, nBufSize);
    szControlWithFocus := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlGetHandleAsText(const szTitle: String; const szText: String; const szControl: String; out szRetText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlGetHandleAsText(szTitle, szText, szControl, InternalAstr, nBufSize);
    szRetText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlGetText(const szTitle: String; const szText: String; const szControl: String; out szControlText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlGetText(szTitle, szText, szControl, InternalAstr, nBufSize);
    szControlText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlGetTextByHandle(const hWnd: HWND; const hCtrl: HWND; out szControlText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlGetTextByHandle(hWnd, hCtrl, InternalAstr, nBufSize);
    szControlText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlTreeView(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; const szExtra1: String; const szExtra2: String; out szResult: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlTreeView(szTitle, szText, szControl, szCommand, szExtra1, szExtra2, InternalAstr, nBufSize);
    szResult := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_ControlTreeViewByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra1: String; const szExtra2: String; out szResult: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalControlTreeViewByHandle(hWnd, hCtrl, szCommand, szExtra1, szExtra2, InternalAstr, nBufSize);
    szResult := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_DriveMapAdd(const szDevice: String; const szShare: String; const nFlags: Integer; const szUser: String; const szPwd: String; out szResult: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalDriveMapAdd(szDevice, szShare, nFlags, szUser, szPwd, InternalAstr, nBufSize);
    szResult := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_DriveMapGet(const szDevice: String; out szMapping: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalDriveMapGet(szDevice, InternalAstr, nBufSize);
    szMapping := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Function AU3_StatusbarGetText(const szTitle: String; const szText: String; const nPart: Integer; out szStatusText: String; var nBufSize: Integer): Integer;
  Begin
    InternalSetBuffer(nBufSize);
    result := InternalStatusbarGetText(szTitle, szText, nPart, InternalAstr, nBufSize);
    szStatusText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Function AU3_StatusbarGetTextByHandle(const hWnd: HWND; const nPart: Integer; out szStatusText: String; var nBufSize: Integer): Integer;
  Begin
    InternalSetBuffer(nBufSize);
    result := InternalStatusbarGetTextByHandle(hWnd, nPart, InternalAstr, nBufSize);
    szStatusText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_WinGetClassList(const szTitle: String; const szText: String; out szRetText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalWinGetClassList(szTitle, szText, InternalAstr, nBufSize);
    szRetText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_WinGetClassListByHandle(const hWnd: HWND; out szRetText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalWinGetClassListByHandle(hWnd, InternalAstr, nBufSize);
    szRetText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_WinGetHandleAsText(const szTitle: String; const szText: String; out szRetText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalWinGetHandleAsText(szTitle, szText, InternalAstr, nBufSize);
    szRetText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_WinGetText(const szTitle: String; const szText: String; out szRetText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalWinGetText(szTitle, szText, InternalAstr, nBufSize);
    szRetText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_WinGetTextByHandle(const hWnd: HWND; out szRetText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalWinGetTextByHandle(hWnd, InternalAstr, nBufSize);
    szRetText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_WinGetTitle(const szTitle: String; const szText: String; out szRetText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalWinGetTitle(szTitle, szText, InternalAstr, nBufSize);
    szRetText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;

Procedure AU3_WinGetTitleByHandle(const hWnd: HWND; out szRetText: String; var nBufSize: Integer);
  Begin
    InternalSetBuffer(nBufSize);
    InternalWinGetTitleByHandle(hWnd, InternalAstr, nBufSize);
    szRetText := InternalGetBuffer();
    nBufSize := InternalBuffSize;
end;
[/Code]
