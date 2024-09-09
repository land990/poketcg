AIActionTable_RockCrusher:
	dw .do_turn ; unused
	dw .do_turn
	dw .start_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	call AIMainTurnLogic
	ret

.start_duel
	call InitAIDuelVars
	call .store_list_pointers
	call SetUpBossStartingHandAndDeck
	call TrySetUpBossStartingPlayArea
	ret nc
	call AIPlayInitialBasicCards
	ret

.forced_switch
	call AIDecideBenchPokemonToSwitchTo
	ret

.ko_switch
	call AIDecideBenchPokemonToSwitchTo
	ret

.take_prize
	call AIPickPrizeCards
	ret

.list_arena
	db ROCKRUFF
	db CUBONE
	db SANDSHREW
	db DIGLETT
	db $00

.list_bench
	db ROCKRUFF
	db CUBONE
	db SANDSHREW
	db ONIX
	db $00

.list_retreat
	ai_retreat DIGLETT, -1
	db $00

.list_energy
	ai_energy ROCKRUFF,  1, +0
	ai_energy LYCANROC,  3, +1
	ai_energy SANDSHREW,  2, +0
	ai_energy CUBONE, 2, +0
	ai_energy MAROWAK_LV32,    3, +1
	ai_energy MAROWAK_LV26,     4, +2
	ai_energy SANDSLASH,  3, +1
	db $00

.list_prize
	db ENERGY_REMOVAL
	db RHYHORN
	db $00

.store_list_pointers
	store_list_pointer wAICardListAvoidPrize, .list_prize
	store_list_pointer wAICardListArenaPriority, .list_arena
	store_list_pointer wAICardListBenchPriority, .list_bench
	store_list_pointer wAICardListPlayFromHandPriority, .list_bench
	; missing store_list_pointer wAICardListRetreatBonus, .list_retreat
	store_list_pointer wAICardListEnergyBonus, .list_energy
	ret
