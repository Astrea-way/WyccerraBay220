#define SETUP_NAME "name"
#define SETUP_OBJ_SHEET "icon"
#define SETUP_ONMOB_SHEET "item_icons"
#define SETUP_ICON_STATE "icon_state"
#define SETUP_ITEM_STATE "item_state"
#define SETUP_ITEM_STATE_SLOTS "item_state_slots"
#define SETUP_SPECIES_OBJ "sprite_sheets_obj"
#define SETUP_SPECIES_ONMOB "sprite_sheets"



//Shoes

/obj/item/clothing/shoes/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_feet_resomi.dmi')
	LAZYSET(sprite_sheets_obj, SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_feet_resomi.dmi')

//Gloves
/obj/item/clothing/gloves/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_hands_resomi.dmi')


//suit
/obj/item/clothing/suit/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')
	LAZYSET(sprite_sheets_obj, SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_suit_resomi.dmi')

/singleton/item_modifier/space_suit/sol/sierra/Initialize()
	. = ..()
	var/helmet_setup = type_setups[/obj/item/clothing/head/helmet/space]
	LAZYSET((helmet_setup[SETUP_SPECIES_OBJ]),  SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_head_resomi.dmi')
	LAZYSET((helmet_setup[SETUP_SPECIES_ONMOB]),  SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_head_resomi.dmi')

	var/suit_setup = type_setups[/obj/item/clothing/suit/space/void]
	LAZYSET((suit_setup[SETUP_SPECIES_OBJ]),  SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_suit_resomi.dmi')
	LAZYSET((suit_setup[SETUP_SPECIES_ONMOB]),  SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')

/singleton/item_modifier/space_suit/sierra/Initialize()
	. = ..()
	var/helmet_setup = type_setups[/obj/item/clothing/head/helmet/space]
	LAZYSET((helmet_setup[SETUP_SPECIES_OBJ]),  SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_head_resomi.dmi')
	LAZYSET((helmet_setup[SETUP_SPECIES_ONMOB]),  SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_head_resomi.dmi')

	var/suit_setup = type_setups[/obj/item/clothing/suit/space/void]
	LAZYSET((suit_setup[SETUP_SPECIES_OBJ]),  SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_suit_resomi.dmi')
	LAZYSET((suit_setup[SETUP_SPECIES_ONMOB]),  SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')


/singleton/item_modifier/space_suit/Initialize()
	. = ..()
	var/helmet_setup = type_setups[/obj/item/clothing/head/helmet/space]
	LAZYSET((helmet_setup[SETUP_SPECIES_OBJ]),  SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_head_resomi.dmi')
	LAZYSET((helmet_setup[SETUP_SPECIES_ONMOB]),  SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_head_resomi.dmi')

	var/suit_setup = type_setups[/obj/item/clothing/suit/space/void]
	LAZYSET((suit_setup[SETUP_SPECIES_OBJ]),  SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_suit_resomi.dmi')
	LAZYSET((suit_setup[SETUP_SPECIES_ONMOB]),  SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')

/obj/item/clothing/suit/space/void/Initialize()
	. = ..()
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')
	LAZYSET(sprite_sheets_obj, SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_suit_resomi.dmi')

/obj/item/clothing/head/helmet/space/void/Initialize()
	. = ..()
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_head_resomi.dmi')
	LAZYSET(sprite_sheets_obj, SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_head_resomi.dmi')


//
// EVA RIG
//
/obj/item/rig/eva/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/clothing/head/helmet/space/rig/eva/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_head_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)


/obj/item/clothing/suit/space/rig/eva/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)

/obj/item/clothing/shoes/magboots/rig/eva/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_feet_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)

/obj/item/clothing/gloves/rig/eva/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_hands_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)


/obj/item/rig/light/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')


//
// MEDICAL RIG
//

/obj/item/rig/medical/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/clothing/head/helmet/space/rig/medical/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_head_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)

/obj/item/clothing/suit/space/rig/medical/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)

/obj/item/clothing/shoes/magboots/rig/medical/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_feet_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)

/obj/item/clothing/gloves/rig/medical/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_hands_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)

/*
/obj/item/rig/hazard/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/rig/combat/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/rig/merc/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')
*/

//
// NULL RIG
//
/obj/item/rig/zero/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/clothing/head/helmet/space/rig/zero/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_head_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)

/obj/item/clothing/suit/space/rig/zero/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')
	LAZYDISTINCTADD(species_restricted, SPECIES_RESOMI)

/*
/obj/item/rig/ce/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/rig/industrial/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/rig/hazmat/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/rig/ert/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')

/obj/item/rig/command/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_rig_back_resomi.dmi')
*/

/obj/item/storage/belt/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_belt_resomi.dmi')

/obj/item/clothing/accessory/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_accessories_resomi.dmi')
	LAZYSET(sprite_sheets_obj, SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_accessories_resomi.dmi')
// back
/obj/item/storage/backpack/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_back_resomi.dmi')

// under
/obj/item/clothing/under/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_under_resomi.dmi')
	LAZYSET(sprite_sheets_obj, SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_under_resomi.dmi')
//ears
/obj/item/clothing/ears/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_ears_resomi.dmi')

//mask
/obj/item/clothing/mask/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_mask_resomi.dmi')

//head
/obj/item/clothing/head/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_head_resomi.dmi')
	LAZYSET(sprite_sheets_obj, SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_head_resomi.dmi')
//glasses
/obj/item/clothing/glasses/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_eyes_resomi.dmi')
	LAZYSET(sprite_sheets_obj, SPECIES_RESOMI, 'packs/infinity/icons/obj/clothing/species/resomi/obj_eyes_resomi.dmi')

//devices and machines
/obj/machinery/suit_cycler/Initialize()
	. = ..()
	species += SPECIES_RESOMI

/obj/item/auto_cpr/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi')

/obj/item/device/radio/headset/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_ears_resomi.dmi')

/obj/item/clothing/mask/plunger/equipped(M, slot)
	..()
	sprite_sheets[SPECIES_RESOMI] = (slot == slot_head ? 'mods/resomi/icons/clothing/onmob_head_resomi.dmi' : 'mods/resomi/icons/clothing/onmob_mask_resomi.dmi')

/obj/item/card/id/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_id_resomi.dmi')

/obj/item/handcuffs/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/misc.dmi')

/obj/item/storage/belt/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_belt_resomi.dmi')

/obj/item/tank/Initialize()
	. = ..()
	LAZYSET(sprite_sheets, SPECIES_RESOMI, 'mods/resomi/icons/clothing/onmob_back_resomi.dmi')

/obj/item/towel/equipped(M, slot)
	..()
	sprite_sheets = list(SPECIES_RESOMI = (slot == slot_head ? 'mods/resomi/icons/clothing/onmob_head_resomi.dmi' : 'mods/resomi/icons/clothing/onmob_suit_resomi.dmi'))
