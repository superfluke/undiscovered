var scrapBag = <scrap:scrap>.withTag({TABLE: "scrap:scrap", PLATE: "d1a77f", GEAR: "d0c2ba", NAME: "scrap"});

mods.jei.JEI.addDescription(<contenttweaker:entitykiller>, "It kills stuff");
mods.jei.JEI.addDescription(<contenttweaker:bqmupdate>, "Run once to sync new quests after updating pack versions");
mods.jei.JEI.addDescription(scrapBag, "Contains random junk and broken parts. Right click to open.");
mods.jei.JEI.addDescription(<scrap:broken.plate:*>, "Found in piles of scrap");
mods.jei.JEI.addDescription(<contenttweaker:lostcityportal>, "The portal to the lost city dimension can be opened by placing a bed on top of two blocks of empowered restonia crystals. The bed must also be surround by 6 skulls. When properly made, right clicking the pillow will teleport you to the lost city dimension.");
mods.jei.JEI.addDescription(<appliedenergistics2:material:45>, "Needs a steel hammer to be crafted on the crushing table.");

<ore:brokenPlate>.add(<scrap:broken.plate:*>);
<ore:plankWood>.add(<contenttweaker:holyplank>);
//<ore:framechests>.add(<bibliocraft:framedchest:*>);
<cookingforblockheads:sink>.addTooltip("Needs water pumped in");

/*=========================
Recipe Changes - Other
=========================*/

recipes.remove(<ironchest:iron_chest:4>);
recipes.remove(<ironchest:iron_chest:1>);
recipes.remove(<ironchest:iron_chest:2>);
recipes.remove(<ironchest:iron_chest:5>);
recipes.remove(<ironchest:iron_chest:6>);

recipes.remove(<ironchest:iron_gold_chest_upgrade>);
recipes.addShaped("iron to gold chest", <ironchest:iron_gold_chest_upgrade>, [
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
    [<ore:plateGold>, <minecraft:iron_block>, <ore:plateGold>], 
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]
    ]);

recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
recipes.addShaped("gold to diamond chest", <ironchest:gold_diamond_chest_upgrade> * 2, [
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 
    [<ore:plateDiamond>, <minecraft:gold_block>, <ore:plateDiamond>], 
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]
    ]);

recipes.remove(<ironchest:copper_silver_chest_upgrade>);
recipes.addShaped("copper to silver chest", <ironchest:copper_silver_chest_upgrade>, [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
    [<ore:plateSilver>, <ore:blockCopper>, <ore:plateSilver>], 
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]
    ]);

recipes.remove(<ironchest:silver_gold_chest_upgrade>);
recipes.addShaped("silver to gold chest", <ironchest:silver_gold_chest_upgrade>, [
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], 
    [<ore:plateGold>, <ore:blockSilver>, <ore:plateGold>], 
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]
    ]);

recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.addShaped("copper to iron chest", <ironchest:copper_iron_chest_upgrade>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:blockCopper>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
    ]);

recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped("drawer upgrade", <storagedrawers:upgrade_template>*2, [
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
    [<ore:stickIron>, <ore:drawerBasic>, <ore:stickIron>], 
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]
    ]);

recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped("iron drawer", <storagedrawers:upgrade_storage:1>, [
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
    [<ore:plateIron>, <storagedrawers:upgrade_template>, <ore:plateIron>], 
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]
    ]);

recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped("gold drawer", <storagedrawers:upgrade_storage:2>, [
    [<ore:rodGold>, <ore:rodGold>, <ore:rodGold>], 
    [<ore:plateGold>, <storagedrawers:upgrade_template>, <ore:plateGold>], 
    [<ore:rodGold>, <ore:rodGold>, <ore:rodGold>]
    ]);

recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped("diamond drawer", <storagedrawers:upgrade_storage:3>, [
    [<ore:rodDiamond>, <ore:rodDiamond>, <ore:rodDiamond>], 
    [<ore:plateDiamond>, <storagedrawers:upgrade_template>, <ore:plateDiamond>], 
    [<ore:rodDiamond>, <ore:rodDiamond>, <ore:rodDiamond>]
    ]);

recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped("emerald drawer", <storagedrawers:upgrade_storage:4>, [
    [<ore:rodEmerald>, <ore:rodEmerald>, <ore:rodEmerald>], 
    [<ore:plateEmerald>, <storagedrawers:upgrade_template>, <ore:plateEmerald>], 
    [<ore:rodEmerald>, <ore:rodEmerald>, <ore:rodEmerald>]
    ]);

recipes.addShaped("drawer void", <storagedrawers:upgrade_void>, [
    [null, <ore:dyeBlack>], 
    [<storagedrawers:upgrade_template>, null]
    ]);

recipes.remove(<storagedrawers:upgrade_conversion>);
recipes.addShaped("drawer oredict", <storagedrawers:upgrade_conversion>, [
    [<forestry:thermionic_tubes:11>, <calculator:circuitboard:8>, <forestry:thermionic_tubes:11>], 
    [<calculator:circuitboard:8>, <storagedrawers:upgrade_template>, <calculator:circuitboard:8>], 
    [<forestry:thermionic_tubes:11>, <calculator:circuitboard:8>, <forestry:thermionic_tubes:11>]
    ]);

recipes.addShaped("drawer oredict2", <storagedrawers:upgrade_conversion>, [
    [<forestry:thermionic_tubes:11>, <calculator:circuitboard:5>, <forestry:thermionic_tubes:11>], 
    [<calculator:circuitboard:5>, <storagedrawers:upgrade_template>, <calculator:circuitboard:5>], 
    [<forestry:thermionic_tubes:11>, <calculator:circuitboard:5>, <forestry:thermionic_tubes:11>]
    ]);

recipes.remove(<grapplemod:repeller>);
recipes.addShaped("magnetic flight", <grapplemod:repeller>, [
    [null, <actuallyadditions:item_crystal:2>, null], 
    [<actuallyadditions:item_crystal:5>, <ore:ingotTungsten>, <actuallyadditions:item_crystal:5>], 
    [null, <actuallyadditions:item_crystal:2>, null]
    ]);

recipes.addShapeless(<contenttweaker:heartcast>, [
    <contenttweaker:resinplate>, <contenttweaker:solidheart>.transformReplace(<contenttweaker:solidheart>)
    ]);

recipes.addShapeless(<contenttweaker:heartcast>, [
    <forestry:wax_cast>, <contenttweaker:solidheart>.transformReplace(<contenttweaker:solidheart>)
    ]);

recipes.addShapeless(<redstonepaste:redstonepaste>, [
    <evilcraft:dull_dust>, <ore:dyeRed>, <ore:slimeball>
    ]);

recipes.addShapeless(<contenttweaker:holyplank> * 4, [
    <contenttweaker:holylog>
    ]);

recipes.addShaped("repaired iron plate", <thermalfoundation:material:32>, [
    [<contenttweaker:screws>, <ore:brokenPlateIRON>, <contenttweaker:screws>], 
    [<ore:brokenPlateIRON>, null, <ore:brokenPlateIRON>], 
    [<contenttweaker:screws>, <ore:brokenPlateIRON>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired invar plate", <thermalfoundation:material:354>, [
    [<contenttweaker:screws>, <ore:brokenPlateINVAR>, <contenttweaker:screws>], 
    [<ore:brokenPlateINVAR>, null, <ore:brokenPlateINVAR>], 
    [<contenttweaker:screws>, <ore:brokenPlateINVAR>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired silver plate", <thermalfoundation:material:322>, [
    [<contenttweaker:screws>, <ore:brokenPlateSILVER>, <contenttweaker:screws>], 
    [<ore:brokenPlateSILVER>, null, <ore:brokenPlateSILVER>], 
    [<contenttweaker:screws>, <ore:brokenPlateSILVER>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired iron gear", <thermalfoundation:material:24>, [
    [<contenttweaker:screws>, <ore:brokenGearIRON>, <contenttweaker:screws>], 
    [<ore:brokenGearIRON>, null, <ore:brokenGearIRON>], 
    [<contenttweaker:screws>, <ore:brokenGearIRON>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired copper gear", <thermalfoundation:material:256>, [
    [<contenttweaker:screws>, <ore:brokenGearCOPPER>, <contenttweaker:screws>], 
    [<ore:brokenGearCOPPER>, null, <ore:brokenGearCOPPER>], 
    [<contenttweaker:screws>, <ore:brokenGearCOPPER>, <contenttweaker:screws>]
    ]);

recipes.addShaped("repaired iron rod", <silentgems:craftingmaterial:7> * 2, [
    [null, null, <contenttweaker:brokenrod>], 
    [null, <contenttweaker:brokenrod>, null], 
    [<contenttweaker:brokenrod>, null, null]
    ]);

recipes.addShapeless(<harvestcraft:grapejellyitem>, [
    <harvestcraft:saucepanitem>, <harvestcraft:jellyfishrawitem>, <ore:listAllsugar>
    ]);

recipes.addShapeless(scrapBag * 2, [
    <contenttweaker:bagofjunk>
    ]);

recipes.addShaped("quest updater", <contenttweaker:bqmupdate>, [
    [null, <minecraft:stick>, null], 
    [<minecraft:stick>, <minecraft:dirt>, <minecraft:stick>], 
    [null, null, null]
    ]);

recipes.remove(<xtones:lamp_flat>);
recipes.addShaped(<xtones:lamp_flat> * 2, [
    [null, null, null],
    [<advgenerators:iron_frame>, <ore:glowstone>, <advgenerators:iron_frame>], 
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
    ]);

recipes.addShaped(<chisel:factory> * 16, [
    [<minecraft:stone>, <bigreactors:ingotmetals:2>, <minecraft:stone>],
    [<bigreactors:ingotmetals:2>, null, <bigreactors:ingotmetals:2>], 
    [<minecraft:stone>, <bigreactors:ingotmetals:2>, <minecraft:stone>]
    ]);

recipes.remove(<danknull:dank_null_panel:5>);
recipes.addShaped(<danknull:dank_null_panel:5>, [
    [<actuallyadditions:block_crystal:4>, <minecraft:coal_block>, <actuallyadditions:block_crystal:4>],
    [<minecraft:coal_block>, <minecraft:stained_glass_pane:5>, <minecraft:coal_block>], 
    [<actuallyadditions:block_crystal:4>, <minecraft:coal_block>, <actuallyadditions:block_crystal:4>]
    ]);

recipes.remove(<danknull:dank_null_panel:4>);
recipes.addShaped(<danknull:dank_null_panel:4>, [
    [<minecraft:stained_glass_pane:9>, <minecraft:coal_block>, <minecraft:stained_glass_pane:9>],
    [<minecraft:coal_block>, <botania:storage:3>, <minecraft:coal_block>], 
    [<minecraft:stained_glass_pane:9>, <minecraft:coal_block>, <minecraft:stained_glass_pane:9>]
    ]);

recipes.remove(<danknull:dank_null_panel:3>);
recipes.addShaped(<danknull:dank_null_panel:3>, [
    [<minecraft:stained_glass_pane:4>, <minecraft:coal_block>, <minecraft:stained_glass_pane:4>],
    [<minecraft:coal_block>, <calculator:material:2>, <minecraft:coal_block>], 
    [<minecraft:stained_glass_pane:4>, <minecraft:coal_block>, <minecraft:stained_glass_pane:4>]
    ]);

recipes.remove(<danknull:dank_null_panel:2>);
recipes.addShaped(<danknull:dank_null_panel:2>, [
    [<minecraft:stained_glass_pane>, <minecraft:coal_block>, <minecraft:stained_glass_pane>],
    [<minecraft:coal_block>, <calculator:material:3>, <minecraft:coal_block>], 
    [<minecraft:stained_glass_pane>, <minecraft:coal_block>, <minecraft:stained_glass_pane>]
    ]);

recipes.remove(<danknull:dank_null_panel:1>);
recipes.addShaped(<danknull:dank_null_panel:1>, [
    [<minecraft:stained_glass_pane:3>, <minecraft:coal_block>, <minecraft:stained_glass_pane:3>],
    [<minecraft:coal_block>, <minecraft:lapis_block>, <minecraft:coal_block>], 
    [<minecraft:stained_glass_pane:3>, <minecraft:coal_block>, <minecraft:stained_glass_pane:3>]
    ]);

recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [
    [<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>],
    [<thermalfoundation:glass:3>, <appliedenergistics2:material:11>, <thermalfoundation:glass:3>], 
    [<minecraft:blaze_rod>, <darkutils:material:1>, <minecraft:blaze_rod>]
    ]);

recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>, [
    [<minecraft:blaze_rod>, <minecraft:wool>, <minecraft:blaze_rod>],
    [<actuallyadditions:block_crystal:3>, <minecraft:ender_chest>, <actuallyadditions:block_crystal:3>], 
    [<minecraft:blaze_rod>, <darkutils:material:1>, <minecraft:blaze_rod>]
    ]);

recipes.remove(<enderstorage:ender_pouch>);
recipes.addShaped(<enderstorage:ender_pouch>, [
    [<botania:manaresource:16>, <harvestcraft:hardenedleatheritem>, <botania:manaresource:16>],
    [<harvestcraft:hardenedleatheritem>, <darkutils:material:1>, <harvestcraft:hardenedleatheritem>], 
    [<botania:manaresource:16>, <thermalfoundation:rockwool:14>, <botania:manaresource:16>]
    ]);

