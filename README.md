You can use this source if your program/project is completely free of charge. If you get any income even from donations or ads, please support me.<br>
<br>
For the "AutoItX3.Inno.iss" work fully, you need the "AutoItX3.dll", so if you don't have this file yet, you can download it from here: <a href="https://www.autoitscript.com/site/autoit/downloads/" rel="nofollow">https://www.autoitscript.com/site/autoit/downloads/</a><br>
Just download the portable version of AutoIT and extract the "AutoItX3.dll" from zipped file. Location of "AutoItX3.dll" is under folder of "AutoItX", for installed version as well for the portable zipped program.<br>
Place the "AutoItX3.dll" and the "AutoItX3.Inno.iss" in the same location as your Inno script.<br>
<br>
I also prepared some examples of use, you can download them in one pack, or as separate files.<br>
(you also need all of the above mentioned files to compile the examples by yourself)<br>
<br>
<b> --------------------------------------------------------------------------------------------------------------------------------</b><br>
 You can find below functions and/or procedures in the AutoIT help file,<br>
 just remove the "AU3_". For example to find the help for "AU3_Run",<br>
 please search the "Run" instead of "AU3_Run". That's all.<br>
<br>
 Maybe the AutoIT help for the "Run" can have more parameters than here, so<br>
 you will need to use extract count of parameters from the given function/procedure as below.<br>
<br>
 NOTE<br>
 Because Inno Setup does not support the "PWideChar", I created overlayed procedures and functions for original procedures/functions.<br>
 Please don't use any variables/procedures/functions beginning with "Internal", because your installer may work incorrectly or don't works at all.<br>
<br>
 P.S.<br>
 I'm not the author of the AutoIT dll, I only "translated" below functions and procedures from the AutoIT help to use them into Inno Setup.<br>
 So, all bugs and errors please report to the AutoIT Team, or ask on <a href="http://www.autoitscript.com/forum/" rel="nofollow">http://www.autoitscript.com/forum/</a>, if it does not works for you correctly.<br>
<b> --------------------------------------------------------------------------------------------------------------------------------</b><br>
<br>
AutoIT functions and procedures included in the file: "AutoItX3.Inno.iss"<br>
<br>
<b>
Init procedure:<br>
Procedure AU3_Init();<br>
Returns internal error function, 0 = no errors (in AutoIT script is: @error ):<br>
Function AU3_error(): Integer;<br>
<br>
AutoItSetOption function:<br>
Function AU3_AutoItSetOption(const szOption: String; const nValue: Integer): Integer;<br>
<br>
Clipboard functions:<br>
Procedure AU3_ClipGet(out szClip: String; var nBufSize: Integer);<br>
Procedure AU3_ClipPut(const szClip: String);<br>
<br>
Control functions:<br>
Function AU3_ControlClick(const szTitle: String; const szText: String; const szControl: String; const szButton: String; const nNumClicks: Integer; const nX {= AU3_INTDEFAULT}: Integer; const nY {= AU3_INTDEFAULT}: Integer): Integer;<br>
Function AU3_ControlClickByHandle(const hWnd: HWND; const hCtrl: HWND; const szButton: String; const nNumClicks: Integer; const nX {= AU3_INTDEFAULT}: Integer; const nY {= AU3_INTDEFAULT}: Integer): Integer;<br>
Procedure AU3_ControlCommand(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; szExtra: String; out szResult: String; var nBufSize: Integer);<br>
Procedure AU3_ControlCommandByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra: String; out szResult: String; var nBufSize: Integer);<br>
Procedure AU3_ControlListView(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; const szExtra1: String; const szExtra2: String; out szResult: String; var nBufSize: Integer);<br>
Procedure AU3_ControlListViewByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra1: String; const szExtra2: String; out szResult: String; var nBufSize: Integer);<br>
Function AU3_ControlDisable(const szTitle: String; const szText: String; const szControl: String): Integer;<br>
Function AU3_ControlDisableByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;<br>
Function AU3_ControlEnable(const szTitle: String; const szText: String; const szControl: String): Integer;<br>
Function AU3_ControlEnableByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;<br>
Function AU3_ControlFocus(const szTitle: String; const szText: String; const szControl: String): Integer;<br>
Function AU3_ControlFocusByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;<br>
Procedure AU3_ControlGetFocus(const szTitle: String; const szText: String; out szControlWithFocus: String; var nBufSize: Integer);<br>
Procedure AU3_ControlGetFocusByHandle(const hWnd: HWND; out szControlWithFocus: String; var nBufSize: Integer);<br>
Function AU3_ControlGetHandle(const hWnd: HWND; const szControl: String): HWND;<br>
Procedure AU3_ControlGetHandleAsText(const szTitle: String; const szText: String; const szControl: String; out szRetText: String; var nBufSize: Integer);<br>
Function AU3_ControlGetPos(const szTitle: String; const szText: String; const szControl: String; var lpRect: TRect): Integer;<br>
Function AU3_ControlGetPosByHandle(const hWnd: HWND; const hCtrl: HWND; var lpRect: TRect): Integer;<br>
Procedure AU3_ControlGetText(const szTitle: String; const szText: String; const szControl: String; out szControlText: String; var nBufSize: Integer);<br>
Procedure AU3_ControlGetTextByHandle(const hWnd: HWND; const hCtrl: HWND; out szControlText: String; var nBufSize: Integer);<br>
Function AU3_ControlHide(const szTitle: String; const szText: String; const szControl: String): Integer;<br>
Function AU3_ControlHideByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;<br>
Function AU3_ControlMove(const szTitle: String; const szText: String; const szControl: String; const nX: Integer; const nY: Integer; const nWidth {= -1}: Integer; const nHeight {= -1}: Integer): Integer;<br>
Function AU3_ControlMoveByHandle(const hWnd: HWND; const hCtrl: HWND; const nX: Integer; const nY: Integer; const nWidth {= -1}: Integer; const nHeight {= -1}: Integer): Integer;<br>
Function AU3_ControlSend(const szTitle: String; const szText: String; const szControl: String; const szSendText: String; const nMode {= 0}: Integer): Integer;<br>
Function AU3_ControlSendByHandle(const hWnd: HWND; const hCtrl: HWND; const szSendText: String; const nMode {= 0}: Integer): Integer;<br>
Function AU3_ControlSetText(const szTitle: String; const szText: String; const szControl: String; const szControlText: String): Integer;<br>
Function AU3_ControlSetTextByHandle(const hWnd: HWND; const hCtrl: HWND; const szControlText: String): Integer;<br>
Function AU3_ControlShow(const szTitle: String; const szText: String; const szControl: String): Integer;<br>
Function AU3_ControlShowByHandle(const hWnd: HWND; const hCtrl: HWND): Integer;<br>
Procedure AU3_ControlTreeView(const szTitle: String; const szText: String; const szControl: String; const szCommand: String; const szExtra1: String; const szExtra2: String; out szResult: String; var nBufSize: Integer);<br>
Procedure AU3_ControlTreeViewByHandle(const hWnd: HWND; const hCtrl: HWND; const szCommand: String; const szExtra1: String; const szExtra2: String; out szResult: String; var nBufSize: Integer);<br>
<br>
DriveMap functions:<br>
Procedure AU3_DriveMapAdd(const szDevice: String; const szShare: String; const nFlags: Integer; const szUser: String; const szPwd: String; out szResult: String; var nBufSize: Integer);<br>
Function AU3_DriveMapDel(const szDevice: String): Integer;<br>
Procedure AU3_DriveMapGet(const szDevice: String; out szMapping: String; var nBufSize: Integer);<br>
<br>
IsAdmin function:<br>
Function AU3_IsAdmin(): Integer;<br>
<br>
Mouse functions:<br>
Function AU3_MouseClick(const szButton: String; const nX {= AU3_INTDEFAULT}: Integer; const nY {= AU3_INTDEFAULT}: Integer; const nClicks {= 1}: Integer; const nSpeed {= -1}: Integer): Integer;<br>
Function AU3_MouseClickDrag(const szButton: String; const nX1: Integer; const nY1: Integer; const nX2: Integer; const nY2: Integer; const nSpeed {= -1}: Integer): Integer;<br>
Procedure AU3_MouseDown(const szButton: String);<br>
Function AU3_MouseGetCursor(): Integer;<br>
Procedure AU3_MouseGetPos(var lpPoint: TPoint);<br>
Function AU3_MouseMove(const nX: Integer; const nY: Integer; const nSpeed {= -1}: Integer): Integer;<br>
Procedure AU3_MouseUp(const szButton: String);<br>
Procedure AU3_MouseWheel(const szDirection: String; const nClicks: Integer);<br>
<br>
AutoItSetOption function alternative:<br>
Function AU3_Opt(const szOption: String; const nValue: Integer): Integer;<br>
<br>
Pixel functions:<br>
Function AU3_PixelChecksum(const lpRect: TRect; const nStep {= 1}: Integer): LongInt;<br>
Function AU3_PixelGetColor(const nX: Integer; const nY: Integer): Integer;<br>
Procedure AU3_PixelSearch(const lpRect: TRect; const nCol: Integer; const nVar: Integer; const nStep: Integer; var pPointResult: TPoint);<br>
<br>
Process functions:<br>
Function AU3_ProcessClose(const szProcess: String): Integer;<br>
Function AU3_ProcessExists(const szProcess: String): Integer;<br>
Function AU3_ProcessSetPriority(const szProcess: String; const nPriority: Integer): Integer;<br>
Function AU3_ProcessWait(const szProcess: String; const nTimeout {= 0}: Integer): Integer;<br>
Function AU3_ProcessWaitClose(const szProcess: String; const nTimeout {= 0}: Integer): Integer;<br>
<br>
Run functions:<br>
Function AU3_Run(const szProgram: String; const szDir: String; const nShowFlag {= SW_SHOWNORMAL}: Integer): Integer;<br>
Function AU3_RunWait(const szProgram: String; const szDir: String; const nShowFlag {= SW_SHOWNORMAL}: Integer): Integer;<br>
Function AU3_RunAs(const szUser: String; const szDomain: String; const szPassword: String; const nLogonFlag: Integer; const szProgram: String; const szDir: String; const nShowFlag {= SW_SHOWNORMAL}: Integer): Integer;<br>
Function AU3_RunAsWait(const szUser: String; const szDomain: String; const szPassword: String; const nLogonFlag: Integer; const szProgram: String; const szDir: String; const nShowFlag {= SW_SHOWNORMAL}: Integer): Integer;<br>
<br>
Send function:<br>
Procedure AU3_Send(const szSendText: String; const nMode {= 0}: Integer);<br>
<br>
OS shutdown/reboot function:<br>
Function AU3_Shutdown(const nFlags: Integer): Integer;<br>
<br>
Sleep function:<br>
Procedure AU3_Sleep(const nMilliseconds: Integer);<br>
<br>
Statusbar functions:<br>
Function AU3_StatusbarGetText(const szTitle: String; const szText: String; const nPart: Integer; out szStatusText: String; var nBufSize: Integer): Integer;<br>
Function AU3_StatusbarGetTextByHandle(const hWnd: HWND; const nPart: Integer; out szStatusText: String; var nBufSize: Integer): Integer;<br>
<br>
ToolTip function:<br>
Procedure AU3_ToolTip(const szTip: String; const nX {= AU3_INTDEFAULT}: Integer; const nY {= AU3_INTDEFAULT}: Integer);<br>
<br>
Window functions:<br>
Function AU3_WinActivate(const szTitle: String; const szText: String): Integer;<br>
Function AU3_WinActivateByHandle(const hWnd: HWND): Integer;<br>
Function AU3_WinActive(const szTitle:String; const szText: String): Integer;<br>
Function AU3_WinActiveByHandle(const hWnd: HWND): Integer;<br>
Function AU3_WinClose(const szTitle: String; const szText: String): Integer;<br>
Function AU3_WinCloseByHandle(const hWnd: HWND): Integer;<br>
Function AU3_WinExists(const szTitle: String; const szText: String): Integer;<br>
Function AU3_WinExistsByHandle(const hWnd: HWND): Integer;<br>
Function AU3_WinGetCaretPos(var lpPoint: TPoint): Integer;<br>
Procedure AU3_WinGetClassList(const szTitle: String; const szText: String; out szRetText: String; var nBufSize: Integer);<br>
Procedure AU3_WinGetClassListByHandle(const hWnd: HWND; out szRetText: String; var nBufSize: Integer);<br>
Function AU3_WinGetClientSize(const szTitle: String; const szText: String; var lpRect: TRect): Integer;<br>
Function AU3_WinGetClientSizeByHandle(const hWnd: HWND; var lpRect: TRect): Integer;<br>
Function AU3_WinGetHandle(const szTitle: String; const szText: String): HWND;<br>
Procedure AU3_WinGetHandleAsText(const szTitle: String; const szText: String; out szRetText: String; var nBufSize: Integer);<br>
Function AU3_WinGetPos(const szTitle: String; const szText: String; var lpRect: TRect): Integer;<br>
Function AU3_WinGetPosByHandle(const hWnd: HWND; var lpRect: TRect): Integer;<br>
Function AU3_WinGetProcess(const szTitle: String; const szText: String): DWORD;<br>
Function AU3_WinGetProcessByHandle(const hWnd: HWND): DWORD;<br>
Function AU3_WinGetState(const szTitle: String; const szText: String): Integer;<br>
Function AU3_WinGetStateByHandle(const hWnd: HWND): Integer;<br>
Procedure AU3_WinGetText(const szTitle: String; const szText: String; out szRetText: String; var nBufSize: Integer);<br>
Procedure AU3_WinGetTextByHandle(const hWnd: HWND; out szRetText: String; var nBufSize: Integer);<br>
Procedure AU3_WinGetTitle(const szTitle: String; const szText: String; out szRetText: String; var nBufSize: Integer);<br>
Procedure AU3_WinGetTitleByHandle(const hWnd: HWND; out szRetText: String; var nBufSize: Integer);<br>
Function AU3_WinKill(const szTitle: String; const szText: String): Integer;<br>
Function AU3_WinKillByHandle(const hWnd: HWND): Integer;<br>
Function AU3_WinMenuSelectItem(const szTitle: String; const szText: String; const szItem1: String; const szItem2: String; const szItem3: String; const szItem4: String; const szItem5: String; const szItem6: String; const szItem7: String; const szItem8: String): Integer;<br>
Function AU3_WinMenuSelectItemByHandle(const hWnd: HWND; const szItem1: String; const szItem2: String; const szItem3: String; const szItem4: String; const szItem5: String; const szItem6: String; const szItem7: String; const szItem8: String): Integer;<br>
Procedure AU3_WinMinimizeAll();<br>
Procedure AU3_WinMinimizeAllUndo();<br>
Function AU3_WinMove(const szTitle: String; const szText: String; const nX: Integer; const nY: Integer; const nWidth {= -1}: Integer; const nHeight {= -1}: Integer): Integer;<br>
Function AU3_WinMoveByHandle(const hWnd: HWND; const nX: Integer; const nY: Integer; const nWidth {= -1}: Integer; const nHeight {= -1}: Integer): Integer;<br>
Function AU3_WinSetOnTop(const szTitle: String; const szText: String; const nFlag: Integer): Integer;<br>
Function AU3_WinSetOnTopByHandle(const hWnd: HWND; const nFlag: Integer): Integer;<br>
Function AU3_WinSetState(const szTitle: String; const szText: String; const nFlags: Integer): Integer;<br>
Function AU3_WinSetStateByHandle(const hWnd: HWND; const nFlags: Integer): Integer;<br>
Function AU3_WinSetTitle(const szTitle: String; const szText: String; const szNewTitle: String): Integer;<br>
Function AU3_WinSetTitleByHandle(const hWnd: HWND; const szNewTitle: String): Integer;<br>
Function AU3_WinSetTrans(const szTitle: String; const szText: String; const nTrans: Integer): Integer;<br>
Function AU3_WinSetTransByHandle(const hWnd: HWND; const nTrans: Integer): Integer;<br>
Function AU3_WinWait(const szTitle: String; const szText: String; const nTimeout {= 0}: Integer): Integer;<br>
Function AU3_WinWaitByHandle(const hWnd: HWND; const nTimeout: Integer): Integer;<br>
Function AU3_WinWaitActive(const szTitle: String; const szText: String; const nTimeout {= 0}: Integer): Integer;<br>
Function AU3_WinWaitActiveByHandle(const hWnd: HWND; const nTimeout: Integer): Integer;<br>
Function AU3_WinWaitClose(const szTitle: String; const szText: String; const nTimeout {= 0}: Integer): Integer;<br>
Function AU3_WinWaitCloseByHandle(const hWnd: HWND; const nTimeout: Integer): Integer;<br>
Function AU3_WinWaitNotActive(const szTitle: String; const szText: String; const nTimeout: Integer): Integer;<br>
Function AU3_WinWaitNotActiveByHandle(const hWnd: HWND; const nTimeout {= 0}: Integer): Integer;<br>
</b>
<br>
 Have fun and Best Regards,<br>
 Wilenty
