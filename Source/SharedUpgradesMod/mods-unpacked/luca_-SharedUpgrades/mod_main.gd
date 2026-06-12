extends Node

const MOD_DIR = "luca_-SharedUpgrades"

func _init() -> void:
	ModLoaderLog.info("Initializing Shared Upgrades in Coop...", MOD_DIR)
	ModLoaderMod.install_script_extension("res://mods-unpacked/" + MOD_DIR + "/extensions/game/GameWorld.gd")
