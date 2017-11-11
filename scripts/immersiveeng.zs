var cokeBrick = <immersiveengineering:stone_decoration:0>;
var blastBrick = <immersiveengineering:stone_decoration:1>;
var dCream = <darkutils:material:2>;
var steelComponent = <immersiveengineering:material:9>;
var kilnBrick = <immersiveengineering:stone_decoration:10>;
var ironComponent = <immersiveengineering:material:8>;
var copperGrit = <immersiveengineering:metal:9>;
var lightEng = <immersiveengineering:metal_decoration0:4>;
var vodkaBottle = <binniecore:glass:1>.withTag({Fluid: {FluidName: "binnie.vodka", Amount: 1000}});
var ironPlate = <immersiveengineering:metal:39>;
var bucketResin = <forge:bucketfilled>.withTag({FluidName: "resin", Amount: 1000});
var manaIngot = <thermalfoundation:material:136>;
var mithrilCan = <forestry:can:1>.withTag({Fluid: {FluidName: "mithril", Amount: 1000}});
var unpackingMold = <immersiveengineering:mold:7>;
var silverBlock = <thermalfoundation:storage:2>;
var tungstenIngot = <magneticraft:ingots:5>;
var tungstenNug = <magneticraft:nuggets:5>;
var tungstenChunks = <magneticraft:chunks:5>;
var silverPlate = <immersiveengineering:metal:33>;
var steelNug = <immersiveengineering:metal:28>;
var coalDust = <thermalfoundation:material:768>;
var ieHammer = <immersiveengineering:tool>;
var ironGrit = <immersiveengineering:metal:18>;
var alumGrit = <immersiveengineering:metal:10>;
var goldGrit = <immersiveengineering:metal:19>;

recipes.remove(steelComponent);
recipes.remove(ironComponent);

//Removes ingot + hammer = plate recipes
val iePlates = <immersiveengineering:metal>.definition;
for toometa in 30 to 41{
    recipes.removeShapeless(iePlates.makeStack(toometa), [<*>, ieHammer]);
} 

//Removes ore + hammer = grit recipes
/*
val ieGrits = <immersiveengineering:metal>.definition;
for toometa in 9 to 20{
    recipes.removeShapeless(ieGrits.makeStack(toometa), [<*>, ieHammer]);
} */

/*=========================
Recipe Changes - IE
=========================*/

recipes.addShapeless("iron plate", ironPlate, [
    <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, ieHammer
    ]);

recipes.remove(cokeBrick);
recipes.addShaped("coke brick", cokeBrick * 9, [
    [<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>],
    [<minecraft:brick>,dCream,<minecraft:brick>],
    [<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>]
    ]);

recipes.remove(blastBrick);
recipes.addShaped("blast brick", blastBrick * 9, [
    [<forestry:peat>,<rustic:tallow>,<forestry:peat>],
    [<rustic:tallow>,<minecraft:fire_charge>,<rustic:tallow>],
    [<forestry:peat>,<rustic:tallow>,<forestry:peat>]
    ]);

recipes.remove(kilnBrick);
recipes.addShaped("kiln brick", kilnBrick, [
    [<silentgems:gembrickcoated:*>, <immersiveengineering:material:6>], 
    [<minecraft:brick>, <silentgems:gembrickcoated:*>]
    ]);

//recipes.removeShapeless(copperGrit);
recipes.addShapeless(copperGrit * 2, [
    <ore:oreCopper>, vodkaBottle
    ]);

recipes.addShapeless(ironGrit * 2, [
    <minecraft:iron_ore>, vodkaBottle
    ]);
recipes.addShapeless(alumGrit * 2, [
    <immersiveengineering:ore:1>, vodkaBottle
    ]);
recipes.addShapeless(goldGrit * 2, [
    <minecraft:gold_ore>, vodkaBottle
    ]);

recipes.removeShaped(lightEng);
recipes.addShaped("light eng block", lightEng * 3, [
    [<ore:ingotAluminium>, ironComponent, <ore:ingotAluminium>], 
    [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>], 
    [<ore:ingotAluminium>, ironComponent, <ore:ingotAluminium>]
    ]);
    
recipes.removeShaped(ieHammer);
recipes.addShaped("eng hammer", ieHammer, [
    [null, <ore:nuggetIron>, <ore:string>],
    [null, <ore:stickWood>, <ore:nuggetIron>],
    [<ore:stickWood>, null, null]
    ]);

recipes.addShaped("light eng block alt", <immersiveengineering:metal_decoration0:4>, [
    [<ore:ingotSilver>, <immersiveengineering:material:8>, <ore:ingotSilver>], 
    [<immersiveengineering:metal:9>, <immersiveengineering:metal:9>, <immersiveengineering:metal:9>], 
    [<ore:ingotSilver>, <immersiveengineering:material:8>, <ore:ingotSilver>]
    ]);

recipes.addShapeless("steel grit", <immersiveengineering:metal:17>, [
    <immersiveengineering:metal:18>, <immersiveengineering:metal:18>, <immersiveengineering:metal:18>, <thermalfoundation:material:768>
    ]);



/*=========================
Bottling Machine
=========================*/
mods.immersiveengineering.BottlingMachine.addRecipe(vodkaBottle, <minecraft:glass_bottle>, <liquid:binnie.vodka> * 1000);
mods.immersiveengineering.BottlingMachine.addRecipe(<thermalfoundation:material:135>, <forestry:wax_cast>, <liquid:iridium> * 1000);

/*=========================
Coke Oven
=========================*/
mods.immersiveengineering.CokeOven.addRecipe(<minecraft:iron_nugget>, 10, <rustic:dust_tiny_iron>, 100);

/*=========================
Alloy Smelter
=========================*/
mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:ironslag>, <rustic:dust_tiny_iron>, <rustic:dust_tiny_iron>, 60);
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:iron_ingot>, <minecraft:iron_ore>, coalDust, 60);
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:gold_ingot>, <minecraft:gold_ore>, coalDust, 60);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:128>, <thermalfoundation:ore>, coalDust, 60);
mods.immersiveengineering.AlloySmelter.addRecipe(<immersiveengineering:metal:1>, <immersiveengineering:ore:1>, coalDust, 60);

/*=========================
Squeezer
=========================*/
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:evilcraftblood> * 50, <ore:listAllmeatraw>, 60);
mods.immersiveengineering.Squeezer.addRecipe(<jaopca:item_platequartzblack> * 4, null, <jaopca:block_blockquartzblack>, 100);
mods.immersiveengineering.Squeezer.addRecipe(silverPlate, null, silverBlock, 100);
mods.immersiveengineering.Squeezer.addRecipe(tungstenIngot, null, tungstenNug * 9, 1500);

/*=========================
Refinery
=========================*/
mods.immersiveengineering.Refinery.addRecipe(<liquid:mithril> * 32, <liquid:platinum> * 16, <liquid:mutagen> * 16, 0);

/*=========================
Metal Press
=========================*/
mods.immersiveengineering.MetalPress.addRecipe(manaIngot, mithrilCan, unpackingMold, 0);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:metal:37>, <ore:ingotElectrum>, <immersiveengineering:mold>, 300);

/*=========================
Arc Furnace
(output, input, slag, time, energy per tick)
=========================*/
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:135>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<magneticraft:ingots:5>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:167>);
mods.immersiveengineering.ArcFurnace.addRecipe(tungstenIngot, tungstenChunks, steelNug * 3, 300, 1000);
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:iron_ingot> * 2, <minecraft:iron_ore>, null, 120, 100);
//mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:gold_ingot> * 2, <minecraft:gold_ore>, null, 120, 100);
//mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:128> * 2, <thermalfoundation:ore>, null, 120, 100);
//mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:1> * 2, <immersiveengineering:ore:1>, null, 120, 100);

/*=========================
Crusher
=========================*/
mods.immersiveengineering.Crusher.removeRecipe(<jaopca:item_dusttungsten>);
mods.immersiveengineering.Crusher.removeRecipe(<thermalfoundation:material:71>);
mods.immersiveengineering.Crusher.removeRecipe(<draconicevolution:draconium_dust>);
mods.immersiveengineering.Crusher.addRecipe(<extrautils2:endershard>*8 * 8, <minecraft:ender_pearl>, 0);

/*=========================
Mixer
=========================*/
mods.immersiveengineering.Mixer.addRecipe(<liquid:aerotheum> * 500, <liquid:binnie.spirit.neutral> *500, [<contenttweaker:crystalsludge>, <magneticraft:crafting>, <extratrees:misc:5>], 50);
