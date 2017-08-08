; Declarer ses variables convenablement
AutoItSetOption("MustDeclareVars", 1)
; Activation du mode evenementiel
Opt("GUIOnEventMode", 1)

; Constantes des GUI
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>


; Creation de la fenetre principale
Dim $FenetrePrincipale = GUICreate("Titre fenetre principale", 200, 200, 300, 200)
; Fermer le programme en cas de fermeture d'une fenetre.
GUISetOnEvent($GUI_EVENT_CLOSE, "EndProg")

; Creation des elements de la fenetre principale
Dim $FenetrePrincipale_Bouton1 = GUICtrlCreateButton("Texte Bouton", 60,130,75,25)
; Association du bouton1 a la fonction bouton1
GUICtrlSetOnEvent($FenetrePrincipale_Bouton1, FenetrePrincipale_Bouton1)

; Affichage de la fenetre principale
GUISetState(@SW_SHOW, $FenetrePrincipale)

; boucle infinie d'affichage du programme
while 1
; Economie du CPU
Sleep(5000)

WEnd



; Definition des fonctions event

Func EndProg()
	Exit
EndFunc

Func FenetrePrincipale_Bouton1()
	MsgBox(0, "Hihi", "T'as cliqué sur le bouton 1")
EndFunc
