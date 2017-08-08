; Declarer ses variables convenablement
AutoItSetOption("MustDeclareVars", 1)

; Constantes des GUI
#include <GUIConstantsEx.au3>

; Creation de la fenetre principale
Dim $FenetrePrincipale = GUICreate("Titre fenetre principale", 200, 200, 300, 200)

; Creation des elements de la fenetre principale
Dim $FenetrePrincipale_Bouton1 = GUICtrlCreateButton("Texte Bouton", 60,130,75,25)

; Affichage de la fenetre principale
GUISetState(@SW_SHOW, $FenetrePrincipale)

; boucle infinie d'affichage du programme
while 1
	; Récupération de l'action de l'utilisateur EN MODE AVANCE
	Dim $ActionUser = GUIGetMsg(1)

	; On regarde quel evenement a été fait par le user et on fait l'action en conséquence
	Switch($ActionUser[0])

		;si fermeture de la fenetre principale
		Case $GUI_EVENT_CLOSE
			ExitLoop

		; Si appui bouton 1
		Case $FenetrePrincipale_Bouton1
			FenetrePrincipale_Bouton1()

	EndSwitch

; Economie du CPU
Sleep(50)

WEnd



; Definition des fonctions event

Func FenetrePrincipale_Bouton1()
	MsgBox(0, "Hihi", "T'as cliqué sur le bouton 1")
EndFunc
