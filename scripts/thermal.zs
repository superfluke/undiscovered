var redstonClathrate = <thermalfoundation:material:893>;
var resonateClathrate = <thermalfoundation:material:895>;
var geode = <thermalfoundation:geode>;
var emeraldNug = <thermalfoundation:material:17>;
var receptionCoil = <thermalfoundation:material:513>;
var goldElectronTube = <forestry:thermionic_tubes:4>;
var basicFluxCapacitor = <thermalexpansion:capacitor>; //<thermalexpansion:capacitor>.withTag({Energy: 0})
var conductanceCoil = <thermalfoundation:material:515>;
var wirelessRF = <extrautils2:powertransmitter>;
var transmissionCoil = <thermalfoundation:material:514>;
var cableConnector = <immersiveengineering:connector:6>;
var hvCoilBlock = <immersiveengineering:metal_decoration0:2>;
var iridiumGear = <thermalfoundation:material:263>;
var blackIron = <extendedcrafting:material>;
var tinGear = <ore:gearTin>;
var refinedHardner = <stevescarts:modulecomponents:19>;
var hardenedGlass = <thermalfoundation:glass:3>;
var wolframiteOre = <magneticraft:ores:3>;
var iridiumOre = <thermalfoundation:ore:7>;
var platinumOre = <thermalfoundation:ore:6>;
var richSlag = <thermalfoundation:material:865>;
var cinnabar = <thermalfoundation:material:866>;
var vodkaBottle = <binniecore:glass:1>.withTag({Fluid: {FluidName: "binnie.vodka", Amount: 1000}});

recipes.remove(<thermalexpansion:machine>); //redstone furnace... hopefully
recipes.remove(<thermalfoundation:material:71>);
recipes.remove(<thermalfoundation:material:135>);
//recipes.remove(<thermalfoundation:material:1024>);

//mods.jei.JEI.addDescription(<thermalfoundation:sap>, "Produced by the arboreal extractor.");

mods.jei.JEI.addDescription(<immersiveengineering:fluidcreosote>, "Coke juice");
mods.jei.JEI.addDescription(<fluid:lava>, "Tree juice");
/*=========================
Recipe Changes - Thermal
=========================*/

recipes.addShaped("geode", geode, [
    [<botania:manaresource:18>, <botania:manaresource:18>, <botania:manaresource:18>],
    [redstonClathrate, <botania:manaresource:18>, resonateClathrate],
    [<botania:manaresource:18>, <botania:manaresource:18>, <botania:manaresource:18>]
    ]);

recipes.addShaped("te enchated frame", <contenttweaker:enchantedframe>, [
    [<minecraft:experience_bottle>, <extrautils2:ingredients:12>, <minecraft:experience_bottle>], 
    [<extrautils2:ingredients:12>, <thermalexpansion:frame>, <extrautils2:ingredients:12>], 
    [<minecraft:experience_bottle>, <extrautils2:ingredients:12>, <minecraft:experience_bottle>]
    ]);

recipes.remove(<thermalexpansion:frame>);
recipes.addShaped("te frame", <thermalexpansion:frame>, [
    [blackIron, null, blackIron], 
    [<ore:ingotMithril>, iridiumGear, <ore:ingotMithril>], 
    [blackIron, null, blackIron]
    ]);

recipes.remove(receptionCoil);
recipes.addShaped("reception coil", receptionCoil, [
    [null, null, goldElectronTube], 
    [null, <thermaldynamics:duct_0:1>, null], 
    [goldElectronTube, null, null]
    ]);

recipes.remove(conductanceCoil);
recipes.addShaped("conductance coil", conductanceCoil, [
    [null, null, <ore:plateElectrum>], 
    [null, wirelessRF, null], 
    [<ore:plateElectrum>, null, null]
    ]);

recipes.remove(transmissionCoil);
recipes.addShaped("transmission coil", transmissionCoil, [
    [null, null, cableConnector], 
    [null, hvCoilBlock, null], 
    [cableConnector, null, null]
    ]);

recipes.addShaped("hardened glass", hardenedGlass, [
    [refinedHardner, <calculator:reinforcedironingot>, refinedHardner], 
    [<calculator:reinforcedironingot>, <minecraft:glass>, <calculator:reinforcedironingot>], 
    [refinedHardner, <calculator:reinforcedironingot>, refinedHardner]
    ]);

recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped("fractioning still", <thermalexpansion:machine:7>, [
    [null, <ore:gearNickel>, null], 
    [<ore:plateInvar>, <contenttweaker:cheapframe>, <ore:plateInvar>], 
    [<extrautils2:flattransfernode:1>, <thermalfoundation:material:513>, <extrautils2:flattransfernode:1>]
    ]);

recipes.remove(<thermalexpansion:machine:10>);
recipes.addShaped("thermal centrifuge", <thermalexpansion:machine:10>, [
    [null, <advgenerators:turbine_rotor_steel>, null], 
    [<ore:ingotConstantan>, <contenttweaker:cheapframe>, <ore:ingotConstantan>], 
    [<ore:gearBronze>, <thermalfoundation:material:513>, <ore:gearBronze>]
    ]);

recipes.remove(<thermalexpansion:machine:1>);
recipes.addShaped("te pulverizer", <thermalexpansion:machine:1>, [
    [null, <ore:heavyPlateGold>, null], 
    [<ore:ingotTungsten>, <contenttweaker:enchantedframe>, <ore:ingotTungsten>], 
    [<ore:gearElectrum>, <thermalfoundation:material:513>, <ore:gearElectrum>]
    ]);

recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped("te magma melter", <thermalexpansion:machine:6>, [
    [null, <thermalfoundation:material:515>, null], 
    [<evilcraft:burning_gem_stone>, <contenttweaker:enchantedframe>, <evilcraft:burning_gem_stone>], 
    [<ore:gearInvar>, <thermalfoundation:material:513>, <ore:gearInvar>]
    ]);

recipes.remove(<thermalexpansion:machine:5>);
recipes.addShaped("te compactor", <thermalexpansion:machine:5>, [
    [null, <forestry:thermionic_tubes:6>, null], 
    [<minecraft:piston>, <contenttweaker:enchantedframe>, <minecraft:piston>], 
    [<ore:plateSteel>, <thermalfoundation:material:513>, <ore:plateSteel>]
    ]);

recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped("te induction smelter", <thermalexpansion:machine:3>, [
    [null, <actuallyadditions:block_heat_collector>, null], 
    [<magneticraft:copper_tank>, <contenttweaker:enchantedframe>, <magneticraft:copper_tank>], 
    [<ore:gearSteel>, <thermalfoundation:material:513>, <ore:gearSteel>]
    ]);

recipes.addShaped("destablized redstone ore", <thermalfoundation:ore_fluid:2>, [
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], 
    [<thermalfoundation:material:893>, <thermalfoundation:material:1026>, <thermalfoundation:material:893>], 
    [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
    ]);

recipes.addShaped("te cheap frame", <contenttweaker:cheapframe>, [
    [<ore:ingotSteel>, <chisel:factory:*>, <ore:ingotSteel>], 
    [<chisel:factory:*>, <jaopca:item_geardark>, <chisel:factory:*>], 
    [<ore:ingotSteel>, <chisel:factory:*>, <ore:ingotSteel>]
    ]);

recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped("te sawmill", <thermalexpansion:machine:2>, [
    [null, <stevescarts:modulecomponents:84>, null], 
    [<actuallyadditions:block_misc:4>, <contenttweaker:cheapframe>, <actuallyadditions:block_misc:4>], 
    [<ore:gearTin>, <thermalfoundation:material:513>, <ore:gearTin>]
    ]);

recipes.addShapeless(<contenttweaker:platslurry>, [
    <thermalfoundation:ore:6>, vodkaBottle
    ]);

recipes.addShapeless("iridium block to ingot", <thermalfoundation:material:135> * 9, [
    <ore:blockIridium>
    ]);

/*=========================
Crucible
=========================*/    
//mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:135>);
mods.thermalexpansion.Crucible.addRecipe(<liquid:platinum> * 4000, <thermalfoundation:ore:6>, 500);

/*=========================
Insolator
=========================*/
//mods.thermalexpansion.Insolator.removeRecipe(<thermalfoundation:material:71>, null);

/*=========================
Induction Smelter
=========================*/   
mods.thermalexpansion.InductionSmelter.removeRecipe(iridiumOre, <minecraft:sand:*>);
mods.thermalexpansion.InductionSmelter.removeRecipe(iridiumOre, richSlag);
mods.thermalexpansion.InductionSmelter.removeRecipe(iridiumOre, cinnabar);
mods.thermalexpansion.InductionSmelter.removeRecipe(wolframiteOre, <minecraft:sand:*>);
mods.thermalexpansion.InductionSmelter.removeRecipe(wolframiteOre, richSlag);
mods.thermalexpansion.InductionSmelter.removeRecipe(wolframiteOre, cinnabar);
mods.thermalexpansion.InductionSmelter.removeRecipe(<draconicevolution:draconium_ore>, <minecraft:sand:*>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<draconicevolution:draconium_ore>, richSlag);
mods.thermalexpansion.InductionSmelter.removeRecipe(<draconicevolution:draconium_ore>, cinnabar);
mods.thermalexpansion.InductionSmelter.removeRecipe(platinumOre, cinnabar);

/*=========================
Pulverizer 
=========================*/   
mods.thermalexpansion.Pulverizer.removeRecipe(iridiumOre);
mods.thermalexpansion.Pulverizer.removeRecipe(<draconicevolution:draconium_ore>);
mods.thermalexpansion.Pulverizer.removeRecipe(platinumOre);
mods.thermalexpansion.Pulverizer.removeRecipe(wolframiteOre);

/*=========================
Fluid Transposer
=========================*/ 
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:sand>, <liquid:redstone>);
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:snowball>, <liquid:redstone>);
mods.thermalexpansion.Transposer.addFillRecipe(<extrautils2:ingredients:12>, <extendedcrafting:material>, <liquid:xpjuice> * 1000, 1000);
mods.thermalexpansion.Transposer.addFillRecipe(<draconicevolution:dragon_heart>, <contenttweaker:heartcast>, <liquid:dblood> * 1000, 5000);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:2049>, <minecraft:packed_ice>, <liquid:gasoline> * 250, 500);

/*=========================
Refinery
=========================*/    
mods.thermalexpansion.Refinery.addRecipe(<liquid:binnie.spirit.neutral> * 250, <thermalfoundation:material:1026>, <liquid:aerotheum> * 500, 2000);
mods.thermalexpansion.Refinery.addRecipe(<liquid:sludge> * 250, null, <liquid:sewage> * 1000, 1000);

/*=========================
Sawmill
=========================*/    
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal>*8, <thermalfoundation:storage>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:1>*8, <immersiveengineering:storage:1>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:9>*8, <minecraft:iron_block>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:8>*8, <immersiveengineering:storage:8>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:4>*8, <thermalfoundation:storage:5>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:3>*8, <thermalfoundation:storage:2>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:10>*8, <minecraft:gold_block>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:2>*8, <thermalfoundation:storage:3>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:5>*8, <immersiveengineering:storage:5>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:6>*8, <immersiveengineering:storage:6>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:sheetmetal:7>*8, <immersiveengineering:storage:7>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:material:8>*8, <minecraft:iron_block>, 1200);
mods.thermalexpansion.Sawmill.addRecipe(<immersiveengineering:material:9>*8, <mekanism:basicblock:5>, 1200);

/*=========================
Centrifuge
=========================*/  
mods.thermalexpansion.Centrifuge.addRecipe([<minecraft:gravel> % 50, (<thermalfoundation:material:198> * 2) % 70, <jaopca:item_rockychunkplatinum> % 20], <contenttweaker:platslurry>, <liquid:platinum> * 1000, 1000);