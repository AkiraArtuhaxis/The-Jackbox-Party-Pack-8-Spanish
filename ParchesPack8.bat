@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Copiar y pegar "ArchivosEGS"
CD ..
CD ..
xcopy "ArchivosEGS" "Main" /s /y
:: Hacer versión EGS en JPP8-ES-EGS.zip
CD "Main"
DEL "jbg.config.jet"
RENAME "LocalizationManager.json" "localization_settings.json"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP8-ES-EGS.zip" "."
:: Copiar y pegar "ArchivosSwitch"
CD ..
xcopy "ArchivosSwitch" "Main" /s /y
:: Hacer versión Switch en JPP8-ES-SWITCH.zip
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP8-ES-SWITCH.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
DEL ".\DrawfulAnimate\TalkshowExport\project\data\F_26747.swf" /s
DEL ".\SurveyBomb\TalkshowExport\project\data\F_26532.swf" /s
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
CD "Main"
DEL "config.jet"
RENAME "localization_settings.json" "LocalizationManager.json"
:: Hacer versión Steam en JPP8-ES.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP8-ES.zip" "."
