#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

; mode evenementiel
Opt("GUIOnEventMode", 1)
; Declarer ses variables convenablement (en specifiant systematiquement leur portée)
AutoItSetOption("MustDeclareVars", 1)

; ########################### création de la GUI1 ###############
; creation de la fenetre
Dim $GUI1 = GUICreate("GUI1", 500, 250, 30, 30)
GUISetOnEvent($GUI_EVENT_CLOSE, "GUIn_Close")
; creation du bouton1
Dim $Bouton1_GUI1 = GUICtrlCreateButton("Ouvrir GUI2", 30, 30, 150, 150)
GUICtrlSetOnEvent($Bouton1_GUI1, "Bouton1_GUI1")
; creation du bouton2
Dim $Bouton2_GUI1 = GUICtrlCreateButton("Autre fonction", 200, 30, 150, 150)
GUICtrlSetOnEvent($Bouton2_GUI1, "Bouton2_GUI1")
;creation du texte
Dim $Label1_GUI1 = GUICtrlCreateLabel("Bienvenue dans mon programme", 0, 0, 500)
GUICtrlSetFont($Label1_GUI1, 12, 500, 0, "MS Sans Serif")
; creation de la checkbox
Dim $CheckBox_GUI1 = GUICtrlCreateCheckbox("Checkbox1", 20, 200, 100, 20)
GUICtrlSetOnEvent($CheckBox_GUI1, "CheckBox_GUI1")
; ########################### Fin création de la GUI1 ###############


; ################## Creation de la GUI2 ###########################
Dim $GUI2 = GUICreate("GUI2", 250, 150, -1, -1)
GUISetOnEvent($GUI_EVENT_CLOSE, "GUIn_Close")
;creation du texte
Dim $Label1_GUI2 = GUICtrlCreateLabel("Sous-menu", 0, 0, 250)
GUICtrlSetFont($Label1_GUI2, 12, 500, 0, "MS Sans Serif")
; creation du bouton_radio_1
Dim $BRadio1_GUI2 = GUICtrlCreateRadio("Radio1", 100, 60, 100, 20)
GUICtrlSetOnEvent($BRadio1_GUI2, "BRadio1_GUI2")
; creation du bouton1
Dim $Bouton1_GUI2 = GUICtrlCreateButton("Revenir à GUI1", 35, 110, 180, 25)
GUICtrlSetOnEvent($Bouton1_GUI2, "Bouton1_GUI2")
; affichage du tout
; ################## Fin de Creation de la GUI2 ###########################

; Affichage de GUI1
GUISetState(@SW_SHOW, $GUI1)




; ############### Gestion des evenements #######################
While 1



WEnd

; ################## fonctions de GUI1 #########################
Func GUIn_Close()
	; verification de l'origine GUI(n)
	If(@GUI_WINHANDLE == $GUI1) Then
		Exit
	ElseIf(@GUI_WINHANDLE == $GUI2) Then
		GUISetState(@SW_HIDE, $GUI2) ; on masque GUI2
		GUISetState(@SW_SHOW, $GUI1) ; on show GUI1
	EndIf
EndFunc

Func Bouton1_GUI1()
	GUISetState(@SW_HIDE, $GUI1) ; on masque GUI1
	GUISetState(@SW_SHOW, $GUI2) ; on show GUI1
EndFunc

Func Bouton2_GUI1()
	MsgBox(64, 'Information', 'Action effectuée')
EndFunc

Func CheckBox_GUI1()
	MsgBox(64, 'Information', 'Choix enregistré')
EndFunc


; ################## fonctions de GUI2 #########################

Func GUI2_Close()
	GUISetState(@SW_HIDE, $GUI2) ; on masque GUI2
	GUISetState(@SW_SHOW, $GUI1) ; on show GUI1
EndFunc


Func BRadio1_GUI2()
	MsgBox(64, 'Information', 'Sélection enregistrée')
EndFunc

Func Bouton1_GUI2()
	MsgBox(64, 'Information', 'Action prise en compte')
EndFunc
