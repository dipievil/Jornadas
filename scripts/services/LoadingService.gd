extends Node2D

var api_url = "http://demo8395397.mockable.io/"
var next_screen = ""
var resource_name = ""	
onready var game_data = get_node("/root/GameData")

var Context = load("res://scripts/globals/Context.gd")

func SetNextScreen(screen):
	next_screen = screen

func GotoNextScreen():
	get_parent().add_child(next_screen.instance())
	queue_free()

func ValidateConnection(code):
	if(code == 200):
		return true
	else:
		print("Error connecting to server :" + str(code))
		return false

func SaveLocalGame(jsonData):
	var context = Context.new()
	context.clear_data(resource_name)	
	context.save_data(jsonData, resource_name)
	if resource_name == "player":
		game_data.dataToProp(jsonData)
