; Configuration settings that can be checked with "checkRandoConfig"
.define RANDO_CONFIG_KEYSANITY,         $00
.define RANDO_CONFIG_TREEWARP,          $01
.define RANDO_CONFIG_DUNGEON_ENTRANCES, $02 ; Dungeon entrances randomized

; Size of an item slot (data/rando/itemSlots.s)
.define ITEM_SLOT_SIZE, 7

; Dev ring is a fake ring that enables debug features. This is $80 instead of $40 like in the
; original randomizer, because bit 6 is used to temporarily disable rings while remembering what
; ring you should have equipped (while fighting blaino).
.define DEV_RING $80

; Location of starting tree. Will always be able to warp here with gale seeds even without having
; visited that location.
.ifdef ROM_AGES
	.define STARTING_TREE_MAP_INDEX $78
.else
	.define STARTING_TREE_MAP_INDEX $f8
.endif

; Values for "collect mode" (override for the 1st byte in the treasure object data)
.define COLLECT_MODE_PICKUP_NOANIM,        $08
.define COLLECT_MODE_PICKUP_1HAND,         $09
.define COLLECT_MODE_PICKUP_1HAND_NOFLAG,  $01
.define COLLECT_MODE_PICKUP_2HAND,         $0a
.define COLLECT_MODE_PICKUP_2HAND_NOFLAG,  $02
.define COLLECT_MODE_POOF,                 $1a
.define COLLECT_MODE_FALL_KEY,             $28
.define COLLECT_MODE_FALL,                 $29
.define COLLECT_MODE_CHEST_NOFLAG,         $30
.define COLLECT_MODE_CHEST,                $38
.define COLLECT_MODE_DIVE,                 $49
.define COLLECT_MODE_CHEST_MAP_OR_COMPASS, $68
.define COLLECT_MODE_DIG,                  $5a


; Certain randomized slots (ie. maku tree screen) borrow unused treasure flags for remembering if
; they have been obtained.
.ifdef ROM_SEASONS
	.define RANDO_MAKU_TREE_FLAG,            TREASURE_SWITCH_HOOK_HELPER
	.define RANDO_SHOP_FLUTE_FLAG,           TREASURE_SWITCH_HOOK_CHAIN
	.define RANDO_SUBROSIA_MARKET_5_FLAG,    TREASURE_10
	.define RANDO_MASTER_DIVERS_REWARD_FLAG, TREASURE_12
.endif