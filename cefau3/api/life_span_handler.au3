#cs
	file: api/life_span_handler.au3
	author: wuuyi123
#ce

#include-once

; CefLifeSpanHandler
; ==================================================

global $__CefLifeSpanHandler = -1

global const $__CefLifeSpanHandler__OBP = Cef_CallbackRegister(__CefLifeSpanHandler__OBP, 	'int', 	'ptr;ptr;ptr;ptr;ptr;int;ptr;ptr;ptr;ptr;ptr')
global const $__CefLifeSpanHandler__OAC = Cef_CallbackRegister(__CefLifeSpanHandler__OAC, 	'none', 'ptr;ptr')
global const $__CefLifeSpanHandler__DC 	= Cef_CallbackRegister(__CefLifeSpanHandler__DC, 	'int', 	'ptr;ptr')
global const $__CefLifeSpanHandler__OBC = Cef_CallbackRegister(__CefLifeSpanHandler__OBC, 	'none', 'ptr;ptr')

; ==================================================

func CefLifeSpanHandler_Create($ptr = null)
	if ($__CefLifeSpanHandler == -1) then
		$__CefLifeSpanHandler = _AutoItObject_Create()
		_AutoItObject_AddProperty($__CefLifeSpanHandler, '__ptr')
		_AutoItObject_AddProperty($__CefLifeSpanHandler, '__type', 1, 'CefLifeSpanHandler')

		_AutoItObject_AddMethod($__CefLifeSpanHandler, 'OnBeforePopup', 	'__CefLifeSpanHandler_OBP')
		_AutoItObject_AddMethod($__CefLifeSpanHandler, 'OnAfterCreated',	'__CefLifeSpanHandler_OAC')
		_AutoItObject_AddMethod($__CefLifeSpanHandler, 'DoClose', 			'__CefLifeSpanHandler_DC')
		_AutoItObject_AddMethod($__CefLifeSpanHandler, 'OnBeforeClose', 	'__CefLifeSpanHandler_OBC')
	endif

	local $self = _AutoItObject_Create($__CefLifeSpanHandler)
	if ($ptr == null) then $ptr = dllcall($__Cefau3Dll__, 'ptr:cdecl', 'CefLifeSpanHandler_Create')[0]
	$self.__ptr = $ptr
	return $self
endfunc

func __CefLifeSpanHandler_OBP($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefLifeSpanHandler_Get_OBP', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefLifeSpanHandler_Set_OBP', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefLifeSpanHandler_OBP', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefLifeSpanHandler__OBP : null)
endfunc

func __CefLifeSpanHandler_OAC($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefLifeSpanHandler_Get_OAC', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefLifeSpanHandler_Set_OAC', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefLifeSpanHandler_OAC', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefLifeSpanHandler__OAC : null)
endfunc

func __CefLifeSpanHandler_DC($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefLifeSpanHandler_Get_DC', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefLifeSpanHandler_Set_DC', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefLifeSpanHandler_DC', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefLifeSpanHandler__DC : null)
endfunc

func __CefLifeSpanHandler_OBC($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefLifeSpanHandler_Get_OBC', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefLifeSpanHandler_Set_OBC', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefLifeSpanHandler_OBC', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefLifeSpanHandler__OBC : null)
endfunc

; ==================================================

func __CefLifeSpanHandler__OBP($self, $browser, $frame, $target_url, $target_frame_name, $target_disposition, $windowInfo, $client, $settings, $no_javascript_access)
	$self = dllcall($__Cefau3Dll__, 'str:cdecl', 'CefLifeSpanHandler_Get_OBP', 'ptr', $self)[0]
	$browser = CefBrowser_Create($browser)

	return call($self, $browser, $frame, $target_url, $target_frame_name, $target_disposition, $windowInfo, $client, $settings, $no_javascript_access)
endfunc

func __CefLifeSpanHandler__OAC($self, $browser)
	$self = dllcall($__Cefau3Dll__, 'str:cdecl', 'CefLifeSpanHandler_Get_OAC', 'ptr', $self)[0]
	$browser = CefBrowser_Create($browser)

	call($self, $browser)
endfunc

func __CefLifeSpanHandler__DC($self, $browser)
	$self = dllcall($__Cefau3Dll__, 'str:cdecl', 'CefLifeSpanHandler_Get_DC', 'ptr', $self)[0]
	$browser = CefBrowser_Create($browser)

	return call($self, $browser)
endfunc

func __CefLifeSpanHandler__OBC($self, $browser)
	$self = dllcall($__Cefau3Dll__, 'str:cdecl', 'CefLifeSpanHandler_Get_OBC', 'ptr', $self)[0]
	$browser = CefBrowser_Create($browser)

	call($self, $browser)
endfunc