local AutoOpenItems = CreateFrame('Frame')

AutoOpenItems:SetScript('OnEvent', function(self, event, ...) self[event](...) end)

local Whitelist = {

	-- Vanilla

	[10456]			= true,			-- A Bulging Coin Purse
	[15902]			= true,			-- A Crazy Grab Bag
	[11883]			= true,			-- A Dingy Fanny Pack
	[5335]			= true,			-- A Sack of Coins
	[6755]			= true,			-- A Small Container of Gems
	[11107]			= true,			-- A Small Pack
	[21510]			= true,			-- Ahn'Qiraj War Effort Supplies
	[21511]			= true,			-- Ahn'Qiraj War Effort Supplies
	[21509]			= true,			-- Ahn'Qiraj War Effort Supplies
	[21512]			= true,			-- Ahn'Qiraj War Effort Supplies
	[21513]			= true,			-- Ahn'Qiraj War Effort Supplies
	[20231]			= true,			-- Arathor Advanced Care Package
	[20233]			= true,			-- Arathor Basic Care Package
	[20236]			= true,			-- Arathor Standard Care Package
	[11955]			= true,			-- Bag of Empty Ooze Containers
	[20603]			= true,			-- Bag of Spoils
	[6356]			= true,			-- Battered Chest
	[7973]			= true,			-- Big-mouth Clam
	[6647]			= true,			-- Bloated Catfish
	[6645]			= true,			-- Bloated Mud Snapper
	[13881]			= true,			-- Bloated Redgill
	[21164]			= true,			-- Bloated Rockscale Cod
	[13891]			= true,			-- Bloated Salmon
	[6643]			= true,			-- Bloated Smallfish
	[8366]			= true,			-- Bloated Trout
	[17962]			= true,			-- Blue Sack of Gems
	[21812]			= true,			-- Box of Chocolates
	[10695]			= true,			-- Box of Empty Vials
	[9541]			= true,			-- Box of Goodies
	[9539]			= true,			-- Box of Rations
	[9540]			= true,			-- Box of Spells
	[6827]			= true,			-- Box of Supplies
	[22746]			= true,			-- Buccaneer's Uniform
	[21191]			= true,			-- Carefully Wrapped Present
	[11887]			= true,			-- Cenarion Circle Cache
	[20602]			= true,			-- Chest of Spoils
	[21741]			= true,			-- Cluster Rocket Recipes
	[21528]			= true,			-- Colossal Bag of Loot
	[20808]			= true,			-- Combat Assignment
	[15103]			= true,			-- Corrupt Tested Sample
	[5738]			= true,			-- Covert Ops Pack
	[9265]			= true,			-- Cuergo's Hidden Treasure
	[23022]			= true,			-- Curmudgeon's Payoff
	[19422]			= true,			-- Darkmoon Faire Fortune
	[20469]			= true,			-- Decoded True Believer Clippings
	[20228]			= true,			-- Defiler's Advanced Care Package
	[20229]			= true,			-- Defiler's Basic Care Package
	[20230]			= true,			-- Defiler's Standard Care Package
	[12849]			= true,			-- Demon Kissed Sack
	[6351]			= true,			-- Dented Crate
	[8647]			= true,			-- Egg Crate
	[10752]			= true,			-- Emerald Encrusted Chest
	[11617]			= true,			-- Eridan's Supplies
	[11024]			= true,			-- Evergreen Herb Casing
	[11937]			= true,			-- Fat Sack of Coins
	[10834]			= true,			-- Felhound Tracker Kit
	[21363]			= true,			-- Festive Gift
	[21131]			= true,			-- Followup Combat Assignment
	[21386]			= true,			-- Followup Logistics Assignment
	[20805]			= true,			-- Followup Logistics Assignment
	[21133]			= true,			-- Followup Tactical Assignment
	[8484]			= true,			-- Gadgetzan Water Co. Care Package
	[21310]			= true,			-- Gaily Wrapped Present
	[21270]			= true,			-- Gently Shaken Gift
	[21271]			= true,			-- Gently Shaken Gift
	[21980]			= true,			-- Gift of Adoration: Ironforge
	[21981]			= true,			-- Gift of Adoration: Stormwind
	[22171]			= true,			-- Gift of Friendship: Thunder Bluff
	[8049]			= true,			-- Gnarlpine Necklace
	[11423]			= true,			-- Gnome Engineer's Renewal Gift
	[11422]			= true,			-- Goblin Engineer's Renewal Gift
	[17964]			= true,			-- Gray Sack of Gems
	[19296]			= true,			-- Greater Darkmoon Prize
	[17963]			= true,			-- Green Sack of Gems
	[10773]			= true,			-- Hakkari Urn
	[13874]			= true,			-- Heavy Crate
	[22648]			= true,			-- Hive'Ashi Dossier
	[22649]			= true,			-- Hive'Regal Dossier
	[22650]			= true,			-- Hive'Zora Dossier
	[10569]			= true,			-- Hoard of the Black Dragonflight
	[21150]			= true,			-- Iron Bound Trunk
	[10479]			= true,			-- Kovic's Trading Satchel
	[12122]			= true,			-- Kum'isha's Junk
	[19035]			= true,			-- Lard's Special Picnic Basket
	[21743]			= true,			-- Large Cluster Rocket Recipes
	[21742]			= true,			-- Large Rocket Recipes
	[19297]			= true,			-- Lesser Darkmoon Prize
	[21132]			= true,			-- Logistics Assignment
	[21266]			= true,			-- Logistics Assignment
	[18804]			= true,			-- Lord Grayson's Satchel
	[21746]			= true,			-- Lucky Red Envelope
	[21640]			= true,			-- Lunar Festival Fireworks Pack
	[6307]			= true,			-- Message in a Bottle
	[19298]			= true,			-- Minor Darkmoon Prize
	[21228]			= true,			-- Mithril Bound Trunk
	[22320]			= true,			-- Mux's Quality Goods
	[19425]			= true,			-- Mysterious Lockbox
	[21042]			= true,			-- Narain's Special Kit
	[15876]			= true,			-- Nathanos' Chest
	[20768]			= true,			-- Oozing Bag
	[19153]			= true,			-- Outrider Advanced Care Package
	[19154]			= true,			-- Outrider Basic Care Package
	[19155]			= true,			-- Outrider Standard Care Package
	[11912]			= true,			-- Package of Empty Ooze Containers
	[22155]			= true,			-- Pledge of Adoration: Darnassus
	[22154]			= true,			-- Pledge of Adoration: Ironforge
	[21975]			= true,			-- Pledge of Adoration: Stormwind
	[22157]			= true,			-- Pledge of Adoration: Undercity
	[17969]			= true,			-- Red Sack of Gems
	[6715]			= true,			-- Ruined Jumper Cables
	[11938]			= true,			-- Sack of Gems
	[20601]			= true,			-- Sack of Spoils
	[21156]			= true,			-- Scarab Bag
	[7190]			= true,			-- Scorched Rocket Boots
	[20767]			= true,			-- Scum Covered Bag
	[22568]			= true,			-- Sealed Craftsman's Writ
	[6357]			= true,			-- Sealed Crate
	[19152]			= true,			-- Sentinel Advanced Care Package
	[19150]			= true,			-- Sentinel Basic Care Package
	[19151]			= true,			-- Sentinel Standard Care Package
	[20766]			= true,			-- Slimy Bag
	[5523]			= true,			-- Small Barnacled Clam
	[15699]			= true,			-- Small Brown-Wrapped Package
	[6353]			= true,			-- Small Chest
	[21740]			= true,			-- Small Rocket Recipes
	[11966]			= true,			-- Small Sack of Coins
	[21216]			= true,			-- Smokywood Pastures Extra-Special Gift
	[17727]			= true,			-- Smokywood Pastures Gift Pack
	[17685]			= true,			-- Smokywood Pastures Sampler
	[17726]			= true,			-- Smokywood Pastures Special Gift
	[21315]			= true,			-- Smokywood Satchel
	[15874]			= true,			-- Soft-shelled Clam
	[9363]			= true,			-- Sparklematic-Wrapped Box
	[20809]			= true,			-- Tactical Assignment
	[7870]			= true,			-- Thaumaturgy Vessel Lockbox
	[5524]			= true,			-- Thick-shelled Clam
	[21327]			= true,			-- Ticking Present
	[20708]			= true,			-- Tightly Sealed Trunk
	[11568]			= true,			-- Torwa's Pouch
	[15102]			= true,			-- Un'Goro Tested Sample
	[12339]			= true,			-- Vaelan's Gift
	[6352]			= true,			-- Waterlogged Crate
	[21113]			= true,			-- Watertight Trunk
	[17965]			= true,			-- Yellow Sack of Gems
	[22137]			= true,			-- Ysida's Satchel

	-- Vanilla; Quest Starting Items

	--[[

	[22970] 		= true,			-- A Bloodstained Envelope
	[22972] 		= true,			-- A Careworn Note
	[22973] 		= true,			-- A Crumpled Missive
	[22723] 		= true,			-- A Letter from the Keeper of the Rolls
	[2839] 			= true,			-- A Letter to Yvette
	[11116] 		= true,			-- A Mangled Journal
	[22974] 		= true,			-- A Ragged Page
	[22975] 		= true,			-- A Smudged Document
	[3317] 			= true,			-- A Talking Head
	[22977] 		= true,			-- A Torn Letter
	[4881] 			= true,			-- Aged Envelope
	[2794] 			= true,			-- An Old History Book
	[2874] 			= true,			-- An Unsent Letter
	[21230] 		= true,			-- Ancient Qiraji Artifact
	[18706] 		= true,			-- Arena Master
	[12564] 		= true,			-- Assassination Note
	[3668] 			= true,			-- Assassin's Contract
	[16408] 		= true,			-- Befouled Water Globe
	[18987] 		= true,			-- Blackhand's Command
	[13140] 		= true,			-- Blood Red Key
	[14650] 		= true,			-- Bloodhoof Village Gift Voucher
	[12558] 		= true,			-- Blue-feathered Necklace
	[5352] 			= true,			-- Book: The Powers Below
	[20461] 		= true,			-- Brann Bronzebeard's Lost Letter
	[20460] 		= true,			-- Brann Bronzebeard's Lost Letter
	[14651] 		= true,			-- Brill Gift Voucher
	[1357] 			= true,			-- Captain Sanders' Treasure Map
	[4098] 			= true,			-- Carefully Folded Note
	[18950] 		= true,			-- Chambermaid Pillaclencher's Pillow
	[4926] 			= true,			-- Chen's Empty Keg
	[4613] 			= true,			-- Corroded Black Box
	[4056] 			= true,			-- Cortello's Riddle
	[5877] 			= true,			-- Cracked Silithid Carapace
	[12842] 		= true,			-- Crudely-written Log
	[9254] 			= true,			-- Cuergo's Treasure Map
	[16790] 		= true,			-- Damp Note
	[20741] 		= true,			-- Deadwood Ritual Totem
	[4854] 			= true,			-- Demon Scarred Cloak
	[14648] 		= true,			-- Dolanaar Gift Voucher
	[17126] 		= true,			-- Elegant Letter
	[12771] 		= true,			-- Empty Firewater Flask
	[17409] 		= true,			-- Encrusted Crystal Fragment
	[3706] 			= true,			-- Ensorcelled Parchment
	[10454] 		= true,			-- Essence of Eranikus
	[4903] 			= true,			-- Eye of Burning Shadow
	[23184] 		= true,			-- Flame of Darnassus
	[23183] 		= true,			-- Flame of Ironforge
	[23179] 		= true,			-- Flame of Orgrimmar
	[23182] 		= true,			-- Flame of Stormwind
	[23181] 		= true,			-- Flame of the Undercity
	[23180] 		= true,			-- Flame of Thunder Bluff
	[20310] 		= true,			-- Flayed Demon Skin
	[11668] 		= true,			-- Flute of Xavaric
	[12780] 		= true,			-- General Drakkisath's Command
	[1962] 			= true,			-- Glowing Shadowhide Pendant
	[10441] 		= true,			-- Glowing Shard
	[1307] 			= true,			-- Gold Pickup Schedule
	[14646] 		= true,			-- Goldshire Gift Voucher
	[9370] 			= true,			-- Gordunni Scroll
	[9326] 			= true,			-- Grime-Encrusted Ring
	[11818] 		= true,			-- Grimesilt Outhouse Key
	[5138] 			= true,			-- Harvester's Head
	[13250] 		= true,			-- Head of Balnazzar
	[13920] 		= true,			-- Healthy Dragon Scale
	[5791] 			= true,			-- Henrig Lonebrow's Journal
	[5099] 			= true,			-- Hoof of Lakota'mani
	[14647] 		= true,			-- Kharanos Gift Voucher
	[6172] 			= true,			-- Lost Supplies
	[20949] 		= true,			-- Magical Ledger
	[10000] 		= true,			-- Margol's Horn
	[8524] 			= true,			-- Model 4711-FTZ Power Source
	[3985] 			= true,			-- Monogrammed Sash
	[5179] 			= true,			-- Moss-twined Heart
	[6196] 			= true,			-- Noboru's Cudgel
	[10589] 		= true,			-- Oathstone of Ysera's Dragonflight
	[22719] 		= true,			-- Omarion's Handbook
	[8704] 			= true,			-- OOX-09/HL Distress Beacon
	[8623] 			= true,			-- OOX-17/TN Distress Beacon
	[8705] 			= true,			-- OOX-22/FE Distress Beacon
	[5102] 			= true,			-- Owatanka's Tailspike
	[4614] 			= true,			-- Pendant of Myzrael
	[18972] 		= true,			-- Perfect Yeti Hide
	[10590] 		= true,			-- Pocked Black Box
	[18969] 		= true,			-- Pristine Yeti Hide
	[14649] 		= true,			-- Razor Hill Gift Voucher
	[10621] 		= true,			-- Runed Scroll
	[19423] 		= true,			-- Sayge's Fortune #23
	[19424] 		= true,			-- Sayge's Fortune #24
	[19443] 		= true,			-- Sayge's Fortune #25
	[19452] 		= true,			-- Sayge's Fortune #27
	[16304] 		= true,			-- Shadumbra's Head
	[16305] 		= true,			-- Sharptalon's Claw
	[7666] 			= true,			-- Shattered Necklace
	[9250] 			= true,			-- Ship Schedule
	[6497] 			= true,			-- Simple Parchment
	[17008] 		= true,			-- Small Scroll
	[17115] 		= true,			-- Squirrel Token
	[17116] 		= true,			-- Squirrel Token
	[16782] 		= true,			-- Strange Water Globe
	[6775] 			= true,			-- Tome of Divinity
	[6916] 			= true,			-- Tome of Divinity
	[6776] 			= true,			-- Tome of Valor
	[11463] 		= true,			-- Undelivered Parcel
	[16303] 		= true,			-- Ursangous's Paw
	[12563] 		= true,			-- Warlord Goretooth's Command
	[5103] 			= true,			-- Washte Pawne's Feather
	[4433] 			= true,			-- Waterlogged Envelope
	[1972] 			= true,			-- Westfall Deed
	[20742] 		= true,			-- Winterfall Ritual Totem

	]]

}

function AutoOpenItems:Register(event, func)
	self:RegisterEvent(event)
	self[event] = function(...)
		func(...)
	end
end

function CheckBag()
    if (not InCombatLockdown()) and (not (MerchantFrame and MerchantFrame:IsShown())) then
	    for bag = 0, 4 do
	        for slot = 0, GetContainerNumSlots(bag) do
	            local id = GetContainerItemID(bag, slot)
	            if id and Whitelist[id] then
	                UseContainerItem(bag, slot)
	                -- DEFAULT_CHAT_FRAME:AddMessage("|cff00FF80Auto Open Items : " .. GetContainerItemLink(bag, slot)) -- You can re-enable the chat message by un-commenting out this line
	                return
	            end
	        end
	    end
    end
end

AutoOpenItems:Register('BAG_UPDATE_DELAYED', CheckBag)

AutoOpenItems:Register('PLAYER_REGEN_ENABLED', CheckBag)

AutoOpenItems:Register('MERCHANT_CLOSED', CheckBag)
