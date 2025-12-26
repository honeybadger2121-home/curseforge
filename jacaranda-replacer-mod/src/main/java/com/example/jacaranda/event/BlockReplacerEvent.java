package com.example.jacaranda.event;

import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.Block;
import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.event.entity.player.PlayerInteractEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.common.Mod.EventBusSubscriber;
import com.example.jacaranda.JacarandaReplacer;

import java.util.HashMap;
import java.util.Map;

@EventBusSubscriber(modid = JacarandaReplacer.MODID)
public class BlockReplacerEvent {
    
    private static final Map<String, String> BLOCK_REPLACEMENTS = new HashMap<>();
    
    static {
        // Initialize block replacement mappings
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_log", "minecraft:cherry_log");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_wood", "minecraft:cherry_wood");
        BLOCK_REPLACEMENTS.put("biomesoplenty:stripped_jacaranda_log", "minecraft:stripped_cherry_log");
        BLOCK_REPLACEMENTS.put("biomesoplenty:stripped_jacaranda_wood", "minecraft:stripped_cherry_wood");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_planks", "minecraft:cherry_planks");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_leaves", "minecraft:cherry_leaves");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_stairs", "minecraft:cherry_stairs");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_slab", "minecraft:cherry_slab");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_fence", "minecraft:cherry_fence");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_fence_gate", "minecraft:cherry_fence_gate");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_door", "minecraft:cherry_door");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_trapdoor", "minecraft:cherry_trapdoor");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_button", "minecraft:cherry_button");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_pressure_plate", "minecraft:cherry_pressure_plate");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_sign", "minecraft:cherry_sign");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_wall_sign", "minecraft:cherry_wall_sign");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_hanging_sign", "minecraft:cherry_hanging_sign");
        BLOCK_REPLACEMENTS.put("biomesoplenty:jacaranda_wall_hanging_sign", "minecraft:cherry_wall_hanging_sign");
    }
    
    @SubscribeEvent
    public static void onRightClick(PlayerInteractEvent.RightClickBlock event) {
        if (event.getLevel().isClientSide) return;
        if (event.getPlayer() == null || !event.getPlayer().isShiftKeyDown()) return;
        
        // 20x20x20 cube around player
        int radius = 10;
        int centerX = event.getPos().getX();
        int centerY = event.getPos().getY();
        int centerZ = event.getPos().getZ();
        
        int replaced = 0;
        for (int x = centerX - radius; x <= centerX + radius; x++) {
            for (int y = centerY - radius; y <= centerY + radius; y++) {
                for (int z = centerZ - radius; z <= centerZ + radius; z++) {
                    var pos = new net.minecraft.core.BlockPos(x, y, z);
                    var block = event.getLevel().getBlockState(pos);
                    String blockName = block.getBlock().builtInRegistryHolder().key().location().toString();
                    
                    if (BLOCK_REPLACEMENTS.containsKey(blockName)) {
                        var replacementBlock = net.minecraft.core.registries.BuiltInRegistries.BLOCK.get(
                            net.minecraft.resources.ResourceLocation.parse(BLOCK_REPLACEMENTS.get(blockName))
                        );
                        if (replacementBlock != null) {
                            event.getLevel().setBlock(pos, replacementBlock.defaultBlockState(), 3);
                            replaced++;
                        }
                    }
                }
            }
        }
        
        if (replaced > 0 && event.getPlayer() != null) {
            event.getPlayer().displayClientMessage(
                net.minecraft.network.chat.Component.literal("✓ Replaced " + replaced + " jacaranda blocks with cherry!"),
                false
            );
        }
    }
}
