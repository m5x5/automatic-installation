#include <AutoItConstants.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>

flashplayer()

Func flashplayer()
   FileCopy("Flashplayer\files\flashplayer28_xa_install.exe", "Flashplayer\files\flash_backup", $FC_OVERWRITE + $FC_CREATEPATH)
   Sleep( 1000 )
   Run("Flashplayer\files\flash_backup\flashplayer28_xa_install.exe", "", @SW_SHOWMAXIMIZED)
   WinWaitActive("[CLASS:#32770]")

   While WinActive("[CLASS:#32770]")
	  MouseClick($MOUSE_CLICK_LEFT, 861, 500, 1)
	  Sleep( 5000 )
   WEnd
   If Not WinActive("[CLASS:#32770]") Then
	  readerdc()
   EndIf
EndFunc

Func readerdc()
   FileCopy("Readerdc\files\readerdc_de_xa_cra_install.exe", "Readerdc\files\readerdc_backup", $FC_OVERWRITE + $FC_CREATEPATH)
   Sleep( 1000 )
   Run("Readerdc\files\readerdc_backup\readerdc_de_xa_cra_install.exe", "", @SW_SHOWMAXIMIZED)
   WinWaitActive("[CLASS:#32770]")
   While WinActive("[CLASS:#32770]")
	 Sleep( 5000 )
	 MouseClick($MOUSE_CLICK_LEFT, 861, 500, 1)
   WEnd
   If Not WinActive("[CLASS:#32770]") Then

   EndIf
EndFunc