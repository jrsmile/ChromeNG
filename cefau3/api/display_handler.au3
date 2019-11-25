#cs
	file: api/display_handler.au3
	author: wuuyi123
#ce

#include-once

; CefDisplayHandler
; ==================================================

global $__CefDisplayHandler = null

global const $__CefDisplayHandler__OAC	= Cef_CallbackRegister(__CefDisplayHandler__OAC, 	'none', 'ptr;ptr;ptr;ptr')
global const $__CefDisplayHandler__OTC	= Cef_CallbackRegister(__CefDisplayHandler__OTC, 	'none', 'ptr;ptr;ptr')
global const $__CefDisplayHandler__OFUC	= Cef_CallbackRegister(__CefDisplayHandler__OFUC, 	'none', 'ptr;ptr;ptr')
global const $__CefDisplayHandler__OFMC	= Cef_CallbackRegister(__CefDisplayHandler__OFMC, 	'none', 'ptr;ptr;int')
global const $__CefDisplayHandler__OT	= Cef_CallbackRegister(__CefDisplayHandler__OT, 	'int', 	'ptr;ptr;ptr')
global const $__CefDisplayHandler__OSM	= Cef_CallbackRegister(__CefDisplayHandler__OSM, 	'none', 'ptr;ptr;ptr')
global const $__CefDisplayHandler__OCM	= Cef_CallbackRegister(__CefDisplayHandler__OCM, 	'int', 	'ptr;ptr;ptr;ptr;int')

; ==================================================

func CefDisplayHandler_Create($ptr = null)
	if ($__CefDisplayHandler == null) then
		$__CefDisplayHandler = _AutoItObject_Create()
		_AutoItObject_AddProperty($__CefDisplayHandler, '__ptr')
		_AutoItObject_AddProperty($__CefDisplayHandler, '__type', 1, 'CefDisplayHandler')
		
		_AutoItObject_AddMethod($__CefDisplayHandler, 'OnAddressChange', 		'__CefDisplayHandler_OAC')
		_AutoItObject_AddMethod($__CefDisplayHandler, 'OnTitleChange', 			'__CefDisplayHandler_OTC')
		_AutoItObject_AddMethod($__CefDisplayHandler, 'OnFaviconUrlChange', 	'__CefDisplayHandler_OFUC')
		_AutoItObject_AddMethod($__CefDisplayHandler, 'OnFullscreenModeChange', '__CefDisplayHandler_OFMC')
		_AutoItObject_AddMethod($__CefDisplayHandler, 'OnTooltip', 				'__CefDisplayHandler_OT')
		_AutoItObject_AddMethod($__CefDisplayHandler, 'OnStatusMessage', 		'__CefDisplayHandler_OSM')
		_AutoItObject_AddMethod($__CefDisplayHandler, 'OnConsoleMessage', 		'__CefDisplayHandler_OCM')
	endif

	local $self = _AutoItObject_Create($__CefDisplayHandler)
	if ($ptr == null) then $ptr = dllcall($__Cefau3Dll__, 'ptr:cdecl', 'CefDisplayHandler_Create')[0]
	$self.__ptr = $ptr
	return $self
endfunc

func __CefDisplayHandler_OAC($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OAC', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_Set_OAC', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_OAC', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefDisplayHandler__OAC : null)
endfunc

func __CefDisplayHandler_OTC($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OTC', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_Set_OTC', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_OTC', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefDisplayHandler__OTC : null)
endfunc

func __CefDisplayHandler_OFUC($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OFUC', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_Set_OFUC', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_OFUC', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefDisplayHandler__OFUC : null)
endfunc

func __CefDisplayHandler_OFMC($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OFMC', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_Set_OFMC', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_OFMC', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefDisplayHandler__OFMC : null)
endfunc

func __CefDisplayHandler_OT($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OT', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_Set_OT', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_OT', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefDisplayHandler__OT : null)
endfunc

func __CefDisplayHandler_OSM($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OSM', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_Set_OSM', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_OSM', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefDisplayHandler__OSM : null)
endfunc

func __CefDisplayHandler_OCM($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OCM', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_Set_OCM', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefDisplayHandler_OCM', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefDisplayHandler__OCM : null)
endfunc

; ==================================================

func __CefDisplayHandler__OAC($self, $browser, $frame, $url)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OAC', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)
	$frame		= CefFrame_Create($frame)
	$url		= CefString_Create($url)

	call($self, $browser, $frame, $url)
endfunc

func __CefDisplayHandler__OTC($self, $browser, $title)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OTC', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)
	$title		= CefString_Create($title)

	call($self, $browser, $title)
endfunc

func __CefDisplayHandler__OFUC($self, $browser, $icon_urls)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OFUC', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)
	$icon_urls 	= CefStringList_Create($icon_urls)

	call($self, $browser, $icon_urls)
endfunc

func __CefDisplayHandler__OFMC($self, $browser, $fullscreen)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OFMC', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)

	call($self, $browser, $fullscreen)
endfunc

func __CefDisplayHandler__OT($self, $browser, $text)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OT', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)
	$text 		= CefString_Create($text)

	return call($self, $browser, $text)
endfunc

func __CefDisplayHandler__OSM($self, $browser, $value)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OSM', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)
	$value 		= CefString_Create($value)

	call($self, $browser, $value)
endfunc

func __CefDisplayHandler__OCM($self, $browser, $message, $source, $line)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefDisplayHandler_Get_OCM', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)
	$message 	= CefString_Create($message)
	$source 	= CefString_Create($source)

	return call($self, $browser, $message, $source, $line)
endfunc