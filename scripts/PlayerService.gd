

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func load_player_theme():
	var Context = load("res://scripts/globals/Context.gd")	
	var context = Context.new()
	var infoData = context.load_data("player")
	return infoData["player_style"]

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
