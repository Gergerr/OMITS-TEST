extends Node

onready var viewport1 = $Viewports/ViewportContainer1/Viewport1
onready var viewport2 = $Viewports/ViewportContainer2/Viewport2
onready var camera1 = $Viewports/ViewportContainer1/Viewport1/Camera2D
onready var camera2 = $Viewports/ViewportContainer2/Viewport2/Camera2D
onready var world = $Viewports/ViewportContainer1/Viewport1/BUATDEMO
onready var minimap1 = $Minimap/Viewport/Camera2D
onready var minimap2 = $Minimap/Viewport2/Camera2D

func _ready():
	viewport2.world_2d = viewport1.world_2d
	$Minimap/Viewport.world_2d = viewport1.world_2d
	camera1.target = world.get_node("Player1")
	camera2.target = world.get_node("Player2")
	minimap1.target = world.get_node("Player1")
	minimap2.target = world.get_node("Player2")
	

