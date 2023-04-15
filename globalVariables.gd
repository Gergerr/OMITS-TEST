extends Node

var coins = 0
var username = null
var jenjang = null
var skorLevel = 0

var current_scene = null

# Buat Level 2, Gate B
var level2_b_1 = false
var level2_b_2 = false

# Buat Level 4, Gate B
var level4_b_1 = false
var level4_b_2 = false

# answers
var jawaban1 = null
var jawaban2 = null
var jawaban3 = null
var jawaban4 = null
var jawaban5 = null
var jawaban6 = null
var jawaban7 = null
var jawaban8 = null
var jawaban9 = null
var jawaban10 = null



# Multiplier 2
var multT_1 = 1
var multT_2 = 1
var multT_3 = 1
var multT_4 = 1
var multT_5 = 1


# Checkpoint
var last_pos = null

func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)

	
func goto_scene(path):
	# This function will usually be called from a signal callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is running:

	call_deferred("_deferred_goto_scene", path)


func _deferred_goto_scene(path):
	# It is now safe to remove the current scene


	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instance()

	# Add it to the active scene, as child of root.
	get_tree().get_root().add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene() API.
	get_tree().set_current_scene(current_scene)

