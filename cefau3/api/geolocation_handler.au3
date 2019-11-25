#cs
	file: api/geolocation_handler.au3
	author: wuuyi123
#ce

#include-once

; CefGeolocationHandler
; ==================================================

global $__CefGeolocationHandler__ORGP = Cef_CallbackRegister(__CefGeolocationHandler__ORGP, 'int', 	'ptr;ptr;ptr;int;ptr')
global $__CefGeolocationHandler__OCGP = Cef_CallbackRegister(__CefGeolocationHandler__OCGP, 'none', 'ptr;ptr;int')

; ==================================================

func CefGeolocationHandler_Create($ptr = null)
	local $self = CefObject_Create('CefGeolocationHandler', $ptr)

	CefObject_AddMethod($self, 'OnRequestGeolocationPermission', 	'__CefGeolocationHandler_ORGP')
	CefObject_AddMethod($self, 'OnCancelGeolocationPermission', 	'__CefGeolocationHandler_OCGP')

	return $self
endfunc

func __CefGeolocationHandler_ORGP($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefGeolocationHandler_Get_ORGP', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefGeolocationHandler_Set_ORGP', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefGeolocationHandler_ORGP', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefGeolocationHandler__ORGP : null)
endfunc

func __CefGeolocationHandler_OCGP($self, $func = null)
	if @numparams == 1 then return dllcall($__Cefau3Dll__, 'str:cdecl', 'CefGeolocationHandler_Get_OCGP', 'ptr', $self.__ptr)[0]

	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefGeolocationHandler_Set_OCGP', 'ptr', $self.__ptr, 'str', funcname($func))
	dllcall($__Cefau3Dll__, 'none:cdecl', 'CefGeolocationHandler_OCGP', 'ptr', $self.__ptr, 'ptr', funcname($func) ? $__CefGeolocationHandler__OCGP : null)
endfunc

; ==================================================

func __CefGeolocationHandler__ORGP($self, $browser, $requesting_url, $request_id, $callback)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefGeolocationHandler_Get_ORGP', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)
	;$request_id

	;$callback

	return call($self.__ORGP, $self, $browser, $requesting_url, $request_id, $callback)
endfunc

func __CefGeolocationHandler__OCGP($self, $browser, $request_id)
	$self 		= dllcall($__Cefau3Dll__, 'str:cdecl', 'CefGeolocationHandler_Get_OCGP', 'ptr', $self)[0]
	$browser 	= CefBrowser_Create($browser)

	call($self.__OCGP, $self, $browser, $request_id)
endfunc