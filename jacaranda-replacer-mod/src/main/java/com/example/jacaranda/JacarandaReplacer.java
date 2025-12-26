package com.example.jacaranda;

import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import net.minecraftforge.common.MinecraftForge;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Mod(JacarandaReplacer.MODID)
public class JacarandaReplacer {
    public static final String MODID = "jacaranda_replacer";
    public static final Logger LOGGER = LoggerFactory.getLogger(MODID);

    public JacarandaReplacer() {
        IEventBus modEventBus = FMLJavaModLoadingContext.get().getModEventBus();
        // Register Forge-side event listeners
        MinecraftForge.EVENT_BUS.register(com.example.jacaranda.event.BlockReplacerEvent.class);
        LOGGER.info("Jacaranda Replacer mod loaded!");
    }
}
