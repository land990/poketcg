; TODO: Make card data structures more compact and rearrange the fields for
; convenience once the meaning of all fields is figured out.

CardPointers2::
	table_width 2, CardPointers
	dw NULL
	dw FuecocoCard
	dw CrocalorCard
	dw SkeledirgeCard
	dw NULL
	assert_table_length NUM_CARDS + 2

FuecocoCard:
	db TYPE_PKMN_FIRE ; type
	gfx FuecocoCardGfx; card gfx 1
    tx FuecocoName; name
	db CIRCLE ; rarity
	db LABORATORY | NONE ; sets
	db FUECOCO
	db 60 ; hp
	db BASIC ; stage
	db NONE ; pre-evo name

	; attack 1
	energy COLORLESS, 1 ; energies
	tx SpacingOutName ; name
	tx SpacingOutDescription ; description
	dw NONE ; description (cont)
	db 0 ; damage
	db RESIDUAL ; category
	dw SlowpokeSpacingOutEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_NONE ; animation
	
	; attack 2
	energy FIRE, 1, COLORLESS, 1 ; energies
	tx EmberName ; name
	tx EmberDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw CharmanderEmberEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_SMALL_FLAME ; animation

	db 2 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx DuckName ; category
	db 69 ; Pokedex number
	db 0
	db 12 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx ArbokDescription ; description 4	

CrocalorCard:
	db TYPE_PKMN_FIRE ; type
	gfx CrocalorCardGfx; card gfx 1
    tx CrocalorName; name
	db DIAMOND ; rarity
	db LABORATORY | NONE ; sets
	db DRAPION
	db 90 ; hp
	db BASIC ; stage
	db NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx FoulOdorName ; name
	tx FoulOdorDescription ; description
	dw NONE ; description (cont)
	db 30 ; damage
	db DAMAGE_NORMAL ; category
	dw GloomFoulOdorEffectCommands ; effect commands
	db INFLICT_CONFUSION ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_FOUL_ODOR ; animation
	
	; attack 2
	energy FIRE, 2, COLORLESS, 2 ; energies
	tx FlamethrowerName ; name
	tx CharmeleonsFlamethrowerDescription ; description
	dw NONE ; description (cont)
	db 50 ; damage
	db DAMAGE_NORMAL ; category
	dw CharmeleonFlamethrowerEffectCommands ; effect commands
	db NONE ; flags 1
	db DISCARD_ENERGY ; flags 2
	db NONE ; flags 3
	db 3
	db ATK_ANIM_BIG_FLAME ; animation


	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx DuckName ; category
	db 69 ; Pokedex number
	db 0
	db 28 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx ArbokDescription ; description 4	

SkeledirgeCard:
	db TYPE_PKMN_FIRE ; type
	gfx SkeledirgeCardGfx; card gfx 1
    tx SkeledirgeName; name
	db STAR ; rarity
	db LABORATORY | NONE ; sets
	db SKELEDIRGE
	db 120 ; hp
	db BASIC ; stage
	db NONE ; pre-evo name

	; attack 1
	energy FIRE, 1 ; energies
	tx VitalitySongName ; name
	tx PotionDescription ; description
	dw NONE ; description (cont)
	db 20 ; damage
	db RESIDUAL ; category
	dw PotionEffectCommands ; effect commands
	db NONE ; flags 1
	db HEAL_USER ; flags 2
	db NONE ; flags 3
	db 1
	db ATK_ANIM_RECOVER ; animation
	
	; attack 2
	energy FIRE, 2, COLORLESS, 2 ; energies
	tx KarateChopName ; name
	tx KarateChopDescription ; description
	dw NONE ; description (cont)
	db 120 ; damage
	db DAMAGE_MINUS ; category
	dw MachokeKarateChopEffectCommands ; effect commands
	db NONE ; flags 1
	db FLAG_2_BIT_7 ; flags 2
	db NONE ; flags 3
	db 0
	db ATK_ANIM_HIT ; animation

	db 3 ; retreat cost
	db WR_WATER ; weakness
	db WR_GRASS ; resistance
	tx DuckName ; category
	db 69 ; Pokedex number
	db 0
	db 67 ; level
	db 1, 8 ; length
	dw 12 * 10 ; weight
	tx ArbokDescription ; description 4	

	db 19			
