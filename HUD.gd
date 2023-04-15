extends CanvasLayer

func _ready():
	$Coins.text = str(GlobalVariables.coins)

func _on_Coin_coins_collected():
	GlobalVariables.coins = GlobalVariables.coins + 1
	_ready()



func _on_Coin2_coins_collected():
	GlobalVariables.coins = GlobalVariables.coins + 1
	_ready()
