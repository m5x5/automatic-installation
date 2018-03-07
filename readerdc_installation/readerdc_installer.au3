#include <AutoItConstants.au3>
#include <FileConstants.au3>

FileCopy("files\readerdc_de_xa_cra_install.exe", "files\readerdc_backup", $FC_OVERWRITE + $FC_CREATEPATH)
Sleep( 1000 )
Run("files\readerdc_backup\readerdc_de_xa_cra_install.exe", "", @SW_SHOWMAXIMIZED)
WinWaitActive("[CLASS:#32770]")
While WinActive("[CLASS:#32770]")
  Sleep( 5000 )
  MouseClick($MOUSE_CLICK_LEFT, 861, 500, 1)
WEnd