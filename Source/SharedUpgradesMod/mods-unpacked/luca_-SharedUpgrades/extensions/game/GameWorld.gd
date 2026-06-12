extends "res://game/GameWorld.gd"

var _is_sharing_upgrade: bool = false

func serverAddUpgrade(id: String, teamId: String) -> void:
	# 1. Apply the upgrade to the original player
	super(id, teamId)
	
	# 2. Prevent infinite recursion if we are already sharing this purchase
	if _is_sharing_upgrade:
		return
	
	# 3. Check if the upgrade is player-specific (e.g. player1.jetpackSpeed1)
	if id.begins_with("player") and id.contains("."):
		var split = id.split(".")
		var buying_player = split[0]
		var base_id = split[1]
		
		# 4. Skip initial keeper selection character assignments
		if base_id in ["keeper1", "keeper2", "keeper3", "keeper4", "keeper5"]:
			return
			
		# 5. Share with all other players on the team
		_is_sharing_upgrade = true
		for lk in Level.loadout.keepers:
			if lk.teamId == teamId and lk.playerId != buying_player:
				var share_id = lk.playerId + "." + base_id
				
				# If the other player doesn't have it, purchase it for them (for free)
				if not boughtUpgrades.has(share_id):
					super(share_id, teamId)
		_is_sharing_upgrade = false
