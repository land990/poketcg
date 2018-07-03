SECTION "HRAM", HRAM

hBankROM:: ; ff80
	ds $1

hBankSRAM:: ; ff81
	ds $1

hBankVRAM:: ; ff82
	ds $1

hDMAFunction:: ; ff83
	ds $a

hDPadRepeat:: ; ff8d
	ds $1

hButtonsReleased:: ; ff8e
	ds $1

hButtonsPressed2:: ; ff8f
	ds $1

hButtonsHeld:: ; ff90
	ds $1

hButtonsPressed:: ; ff91
	ds $1

hSCX:: ; ff92
	ds $1

hSCY:: ; ff93
	ds $1

hWX:: ; ff94
	ds $1

hWY:: ; ff95
	ds $1

hff96:: ; ff96
	ds $1

; $c2 = player ; $c3 = opponent
hWhoseTurn:: ; ff97
	ds $1

; deck index of a card (0-59)
hTempCardIndex_ff98:: ; ff98
	ds $1

; used in SortCardsInListByID
hTempListPtr_ff99:: ; ff99
	ds $2

; used in SortCardsInListByID
; this function supports 16-bit card IDs
hTempCardID_ff9b:: ; ff9b
	ds $2

; a PLAY_AREA_ARENA constant (0: arena card, 1-5: bench card)
hTempPlayAreaLocationOffset_ff9d:: ; ff9d
	ds $1

hAIActionTableIndex:: ; ff9e
	ds $1

hTempCardIndex_ff9f:: ; ff9f
	ds $1

; multipurpose temp storage
hTemp_ffa0:: ; ffa0
	ds $1

hTempPlayAreaLocationOffset_ffa1:: ; ffa1
	ds $1

; FF-terminated list of cards $to be discarded upon retreat
hTempRetreatCostCards:: ; ffa2
	ds $6

; hffa8 through hffb0 appear to be related to text processing
hffa8:: ; ffa8
	ds $1

hffa9:: ; ffa9
	ds $1

; Address within v*BGMap0 where text is currently being written to
hTextBGMap0Address:: ; ffaa
	ds $2

; position within a line of text where text is currently being placed at
; ranges between 0 and [hTextLineLength]
hTextLineCurPos:: ; ffac
	ds $1

; used as an x coordinate offset when printing text, in order to align
; the text's starting position and/or adjust for the BG scroll registers
hTextHorizontalAlign:: ; ffad
	ds $1

; how many tiles can be fit per line in the current text area
; for example, 11 for a narrow text box and 19 for a wide text box
hTextLineLength:: ; ffae
	ds $1

hffaf:: ; ffaf
	ds $1

hffb0:: ; ffb0
	ds $1

hCurrentMenuItem:: ; ffb1
	ds $1

	ds $3

hffb5:: ; ffb5
	ds $1

; used in DivideBCbyDE
hffb6:: ; ffb6
	ds $1
