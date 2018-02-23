#priority 10

/*Can't we all just get along?
Aluminum blocks:
[<thermalfoundation:storage:4>, <immersiveengineering:storage:1>]
Bronze block:
[<forestry:resource_storage:3>, <thermalfoundation:storage_alloy:3>, <mekanism:basicblock:1>]
Constantan block:
[<immersiveengineering:storage:6>, <thermalfoundation:storage_alloy:4>]
Copper blocks:
[<mekanism:basicblock:12>, <forestry:resource_storage:1>, <thermalfoundation:storage>, <immersiveengineering:storage>]
Electrum block:
[<immersiveengineering:storage:7>, <thermalfoundation:storage_alloy:1>]
Invar block:
[<thermalfoundation:storage_alloy:2>]
Lead block:
[<immersiveengineering:storage:2>, <thermalfoundation:storage:3>]
Nickel block:
[<thermalfoundation:storage:5>, <immersiveengineering:storage:4>]
Silver block:
[<thermalfoundation:storage:2>, <immersiveengineering:storage:3>]
Steel block:
[<thermalfoundation:storage_alloy>, <mekanism:basicblock:5>, <immersiveengineering:storage:8>, <bigreactors:blockmetals:5>]
Tin block:
[<thermalfoundation:storage:1>, <forestry:resource_storage:2>, <mekanism:basicblock:13>]
Osmium block:
[<mekanism:basicblock>]

Metal ores oredict array
val metalOres = [
        <ore:oreAluminum>,
        <ore:oreCopper>,
        <ore:oreLead>,
        <ore:oreNickel>,
        <ore:oreSilver>,
        <ore:oreTin>,
        <ore:oreOsmium>,
        <ore:oreIron>,
        <ore:oreGold>,
        <ore:oreDraconium>,
        <ore:oreDark>,
        <ore:oreYellorite>,
        <ore:oreApatite>,
        <ore:oreQuartzBlack>,
        <ore:oreAstralStarmetal>,
        <ore:oreFoolsGold>
    ] as IOreDictEntry[];

*/
//All metal dusts/ore types should smelt into the thermal ingot, reducing redundant ingot types
furnace.remove(<*>, <ore:dustAluminium>);
furnace.remove(<*>, <thermalfoundation:ore:4>);
furnace.remove(<*>, <magneticraft:rocky_chunks:7>);
furnace.remove(<*>, <magneticraft:chunks:7>);
furnace.remove(<*>, <magneticraft:dusts:7>);
furnace.addRecipe(<thermalfoundation:material:132>, <ore:dustAluminium>, 2);
furnace.addRecipe(<contenttweaker:alumslag>, <thermalfoundation:ore:4>, 2);
furnace.addRecipe(<contenttweaker:alumslag>, <immersiveengineering:ore:1>, 2);
furnace.addRecipe(<thermalfoundation:material:132>, <magneticraft:rocky_chunks:7>, 2);
furnace.addRecipe(<thermalfoundation:material:132>, <magneticraft:chunks:7>, 2);
furnace.addRecipe(<thermalfoundation:material:132>, <magneticraft:dusts:7>, 2);

furnace.remove(<*>, <ore:dustBronze>);
furnace.addRecipe(<thermalfoundation:material:163>, <ore:dustBronze>, 2);

furnace.remove(<*>, <ore:dustConstantan>);
furnace.addRecipe(<immersiveengineering:metal:6>, <ore:dustConstantan>, 2);

furnace.remove(<*>, <ore:dustCopper>);
furnace.remove(<*>, <mekanism:oreblock:1>);
furnace.remove(<*>, <forestry:resources:1>);
furnace.remove(<*>, <immersiveengineering:ore>);
furnace.remove(<*>, <magneticraft:ores>);
furnace.remove(<*>, <magneticraft:rocky_chunks:2>);
furnace.remove(<*>, <magneticraft:chunks:2>);
furnace.remove(<*>, <magneticraft:dusts:2>);
furnace.addRecipe(<thermalfoundation:material:128>, <ore:dustCopper>, 2);
furnace.addRecipe(<thermalfoundation:material:128>, <magneticraft:rocky_chunks:2>, 2);
furnace.addRecipe(<thermalfoundation:material:128>, <magneticraft:chunks:2>, 2);
furnace.addRecipe(<thermalfoundation:material:128>, <magneticraft:dusts:2>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <mekanism:oreblock:1>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <forestry:resources:1>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <immersiveengineering:ore>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <magneticraft:ores>, 2);
furnace.addRecipe(<contenttweaker:copperslag>, <thermalfoundation:ore>, 2);

furnace.remove(<*>, <ore:dustElectrum>);
furnace.addRecipe(<immersiveengineering:metal:7>, <ore:dustElectrum>, 2);

furnace.remove(<*>, <ore:dustInvar>);
furnace.addRecipe(<thermalfoundation:material:162>, <ore:dustInvar>, 2);

furnace.remove(<*>, <ore:dustLead>);
furnace.remove(<*>, <immersiveengineering:ore:2>);
furnace.remove(<*>, <magneticraft:ores:1>);
furnace.remove(<*>, <magneticraft:rocky_chunks:3>);
furnace.remove(<*>, <magneticraft:chunks:3>);
furnace.remove(<*>, <magneticraft:dusts:3>);
furnace.addRecipe(<thermalfoundation:material:131>, <ore:dustLead>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <immersiveengineering:ore:2>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <magneticraft:ores:1>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <magneticraft:rocky_chunks:3>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <magneticraft:chunks:3>, 2);
furnace.addRecipe(<thermalfoundation:material:131>, <magneticraft:dusts:3>, 2);

furnace.remove(<*>, <ore:dustNickel>);
furnace.remove(<*>, <immersiveengineering:ore:4>);
furnace.remove(<*>, <magneticraft:rocky_chunks:10>);
furnace.remove(<*>, <magneticraft:chunks:10>);
furnace.remove(<*>, <magneticraft:dusts:10>);
furnace.addRecipe(<thermalfoundation:material:133>, <ore:dustNickel>, 2);
furnace.addRecipe(<thermalfoundation:material:133>, <immersiveengineering:ore:4>, 2);
furnace.addRecipe(<thermalfoundation:material:133>, <magneticraft:rocky_chunks:10>, 2);
furnace.addRecipe(<thermalfoundation:material:133>, <magneticraft:chunks:10>, 2);
furnace.addRecipe(<thermalfoundation:material:133>, <magneticraft:dusts:10>, 2);

furnace.remove(<*>, <ore:dustSilver>);
furnace.remove(<*>, <immersiveengineering:ore:3>);
furnace.remove(<*>, <magneticraft:rocky_chunks:12>);
furnace.remove(<*>, <magneticraft:chunks:12>);
furnace.remove(<*>, <magneticraft:dusts:12>);
furnace.addRecipe(<thermalfoundation:material:130>, <ore:dustSilver>, 2);
furnace.addRecipe(<thermalfoundation:material:130>, <immersiveengineering:ore:3>, 2);
furnace.addRecipe(<thermalfoundation:material:130>, <magneticraft:rocky_chunks:12>, 2);
furnace.addRecipe(<thermalfoundation:material:130>, <magneticraft:chunks:12>, 2);
furnace.addRecipe(<thermalfoundation:material:130>, <magneticraft:dusts:12>, 2);

furnace.remove(<*>, <ore:dustSteel>);
furnace.remove(<*>, <magneticraft:dusts:6>);
furnace.addRecipe(<immersiveengineering:metal:8>, <ore:dustSteel>, 2);
furnace.addRecipe(<immersiveengineering:metal:8>, <magneticraft:dusts:6>, 2);

furnace.remove(<*>, <ore:dustTin>);
furnace.remove(<*>, <forestry:resources:2>);
furnace.remove(<*>, <thermalfoundation:ore:1>);
furnace.remove(<*>, <mekanism:oreblock:2>);
furnace.remove(<*>, <magneticraft:rocky_chunks:13>);
furnace.remove(<*>, <magneticraft:chunks:13>);
furnace.remove(<*>, <magneticraft:dusts:13>);
furnace.addRecipe(<thermalfoundation:material:129>, <ore:dustTin>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <forestry:resources:2>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <thermalfoundation:ore:1>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <mekanism:oreblock:2>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <magneticraft:rocky_chunks:13>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <magneticraft:chunks:13>, 2);
furnace.addRecipe(<thermalfoundation:material:129>, <magneticraft:dusts:13>, 2);

furnace.remove(<*>, <magneticraft:rocky_chunks:11>);
furnace.remove(<*>, <magneticraft:chunks:11>);
furnace.remove(<*>, <magneticraft:dusts:11>);
furnace.addRecipe(<mekanism:ingot:1>, <magneticraft:rocky_chunks:11>, 2);
furnace.addRecipe(<mekanism:ingot:1>, <magneticraft:chunks:11>, 2);
furnace.addRecipe(<mekanism:ingot:1>, <magneticraft:dusts:11>, 2);


//will hopefully remove various unused ores from auto ore methods
<ore:oreCopper>.remove(<mekanism:oreblock:1>);
<ore:oreCopper>.remove(<immersiveengineering:ore>);
<ore:oreCopper>.remove(<magneticraft:ores>);
<ore:oreCopper>.remove(<forestry:resources:1>);
<ore:oreSilver>.remove(<immersiveengineering:ore:3>);
<ore:oreUranium>.remove(<immersiveengineering:ore:5>);
<ore:oreTin>.remove(<thermalfoundation:ore:1>);
<ore:oreTin>.remove(<forestry:resources:2>);
<ore:oreGalena>.remove(<magneticraft:ores:1>);
<ore:oreLead>.remove(<immersiveengineering:ore:2>);
<ore:oreAluminium>.remove(<thermalfoundation:ore:4>);
<ore:oreAluminum>.remove(<thermalfoundation:ore:4>);
<ore:oreNickel>.remove(<immersiveengineering:ore:4>);
<ore:oreFoolsGold>.add(<magneticraft:ores:4>);


<ore:gemBrick>.add(<silentgems:gembrickcoated:*>);
<ore:gemBrick>.add(<silentgems:gembrickcoateddark:*>);
<ore:gemBrick>.add(<silentgems:gembrickcoatedlight:*>);
<ore:damagedCircuit>.add(<calculator:circuitdamaged:*>);
<ore:stickIron>.add(<silentgems:craftingmaterial:7>);
<ore:ingotSteel>.add(<contenttweaker:osmaticsteel>);
<ore:dustWood>.add(<extratrees:misc:1>);
<ore:dustWood>.add(<forestry:wood_pulp>);
<ore:silentGem>.add(<silentgems:gem:*>);
<ore:spinnyBoi>.add(<extendedcrafting:singularity:*>);