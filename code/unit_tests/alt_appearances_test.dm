/datum/unit_test/alt_appearance_cardborg_shall_have_base_backpack_variant
	name = "ALT APPEARANCE: Cardborg shall have base backpack variant"

/datum/unit_test/alt_appearance_cardborg_shall_have_base_backpack_variant/start_test()
	for(var/ca_type in subtypesof(/singleton/cardborg_appearance))
		var/singleton/cardborg_appearance/ca = ca_type
		var/obj/item/storage/backpack/backpack_type = initial(ca.backpack_type)
		if(backpack_type == /obj/item/storage/backpack)
			pass("Found a cardborg appearance using the base /obj/item/storage/backpack backpack.")
			return 1

	fail("Did not find a cardborg appearance using the base /obj/item/storage/backpack backpack.")
	return 1

/datum/unit_test/alt_appearance_cardborg_all_icon_states_shall_exist
	name = "ALT APPEARANCE: Cardborg shall have base backpack variant"

/datum/unit_test/alt_appearance_cardborg_all_icon_states_shall_exist/start_test()
	var/failed = FALSE
	for(var/ca_type in subtypesof(/singleton/cardborg_appearance))
		var/singleton/cardborg_appearance/ca = ca_type
		var/icon_state = initial(ca.icon_state)
		if(!ICON_HAS_STATE('icons/mob/robots.dmi', icon_state))
			log_unit_test("Icon state [icon_state] is missing.")
			failed = TRUE

	if(failed)
		fail("One or more icon states are missing.")
	else
		pass("All references to icon states exists.")
	return 1

/datum/unit_test/alt_appearance_cardborg_shall_have_unique_backpack_types
	name = "ALT APPEARANCE: Cardborg shall have unique backpack types"

/datum/unit_test/alt_appearance_cardborg_shall_have_unique_backpack_types/start_test()
	var/list/backpack_types = list()
	for(var/ca_type in subtypesof(/singleton/cardborg_appearance))
		var/singleton/cardborg_appearance/ca = ca_type
		group_by(backpack_types, initial(ca.backpack_type), ca)

	var/number_of_issues = number_of_issues(backpack_types, "Backpack Types")
	if(number_of_issues)
		fail("[number_of_issues] duplicate backpack type\s exist.")
	else
		pass("All backpack types are unique.")
	return 1
