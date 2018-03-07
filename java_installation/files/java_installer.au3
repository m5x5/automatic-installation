#RequireAdmin

Run("JavaSetup8u161.exe")
WinWait( "[CLASS:SunAwtDialog]" )
Send( "#m" )
WinActivate( "[CLASS:SunAwtDialog]" )
WinWaitActive( "[CLASS:SunAwtDialog]" )
Send( "{ENTER}" )
WinWait( "Java-Setup - Abgeschlossen" )
WinActivate( "Java-Setup - Abgeschlossen" )
Send( "{ENTER}" )