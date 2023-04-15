extends RigidBody2D
class_name Block1

var picked_1 = false
var picked_2 = false
const SPEED = 900
onready var b1 = get_node("../Block1")
onready var posb1 = b1.position
onready var dropped_1 = null


func _integrate_forces(state):
	if dropped_1:
		state.transform.origin = posb1
		dropped_1 = false

func _physics_process(delta):
	if picked_1 == true:
		self.position = get_node("../Player1/Position2D").global_position
		sleeping = true
	else:
		sleeping = false
	if picked_2 == true:
		self.position = get_node("../Player2/Position2D").global_position
		sleeping = true
	else:
		sleeping = false
	
func _input(event):
	# Player 1
	if Input.is_action_just_pressed("pickup_1"):
		var bodies = $detector.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Player1" and picked_1 == false:
				picked_1 = true
	
	if Input.is_action_just_pressed("drop_1") and picked_1 == true:
		picked_1 = false
	
	if Input.is_action_just_pressed("throw_1") and picked_1 == true:
		picked_1 = false
		if get_node("../Player1/Sprite").flip_h == false:
			apply_impulse(Vector2(), Vector2(SPEED+200, -50))
		else:
			apply_impulse(Vector2(), Vector2(-SPEED-200, -50))
	
	# Player 2
	if Input.is_action_just_pressed("pickup_2"):
		var bodies = $detector.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Player2" and picked_2 == false:
				picked_2 = true
	
	if Input.is_action_just_pressed("drop_2") and picked_2 == true:
		picked_2 = false
	
	if Input.is_action_just_pressed("throw_2") and picked_2 == true:
		picked_2 = false
		if get_node("../Player2/Sprite").flip_h == false:
			apply_impulse(Vector2(), Vector2(SPEED+200, -50))
		else:
			apply_impulse(Vector2(), Vector2(-SPEED-200, -50))
		
func _on_Platform3_active():
	pass # Replace with function body.

func _on_NextLevel_body_entered(body: KinematicBody2D):
	pass # Replace with function body.

func _on_fallzone_body_entered(body):
	if body.name == 'Block1':
		dropped_1=true



func _on_Area2D_body_entered(body):
	pass # Replace with function body.
