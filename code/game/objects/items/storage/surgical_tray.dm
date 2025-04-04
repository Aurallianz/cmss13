/obj/item/storage/surgical_tray
	name = "surgical tray"
	desc = "A small metallic tray covered in sterile tarp. Intended to store surgical tools in a neat and clean fashion."
	icon = 'icons/obj/items/storage/medical.dmi'
	icon_state = "surgical_tray"
	item_icons = list(
		WEAR_L_HAND = 'icons/mob/humans/onmob/inhands/equipment/medical_lefthand.dmi',
		WEAR_R_HAND = 'icons/mob/humans/onmob/inhands/equipment/medical_righthand.dmi',
	)
	item_state = "surgical_tray"
	flags_atom = FPRINT|CONDUCT|NO_GAMEMODE_SKIN
	w_class = SIZE_LARGE //Should not fit in backpacks
	storage_slots = 14
	max_storage_space = 24
	use_sound = "toolbox"
	matter = list("plastic" = 3000)
	can_hold = list(
		/obj/item/tool/surgery,
		/obj/item/stack/medical/advanced/bruise_pack,
		/obj/item/stack/nanopaste,
	)

/obj/item/storage/surgical_tray/empty/fill_preset_inventory()
	return

/obj/item/storage/surgical_tray/fill_preset_inventory()
	new /obj/item/tool/surgery/scalpel/pict_system(src)
	new /obj/item/tool/surgery/scalpel(src)
	new /obj/item/tool/surgery/hemostat(src)
	new /obj/item/tool/surgery/retractor(src)
	new /obj/item/stack/medical/advanced/bruise_pack(src)
	new /obj/item/tool/surgery/cautery(src)
	new /obj/item/tool/surgery/circular_saw(src)
	new /obj/item/tool/surgery/surgicaldrill(src)
	new /obj/item/tool/surgery/bonegel(src)
	new /obj/item/tool/surgery/bonesetter(src)
	new /obj/item/tool/surgery/FixOVein(src)
	new /obj/item/stack/nanopaste(src)
	new /obj/item/tool/surgery/surgical_line(src)
	new /obj/item/tool/surgery/synthgraft(src)

/obj/item/storage/surgical_tray/update_icon()
	if(!length(contents))
		icon_state = "surgical_tray_e"
		item_state = "surgical_tray_e"
	else
		icon_state = "surgical_tray"
		item_state = "surgical_tray"
