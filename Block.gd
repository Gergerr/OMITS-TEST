extends RigidBody2D
var picked = false
const SPEED = 900

func _physics_process(delta):
	if picked == true:
		print(self.position)
		self.position = get_node("../Player1/Position2D").global_position
		sleeping = true
	else:
		sleeping = false

func _input(event):
	if Input.is_action_just_pressed("pickup"):
		var bodies = $detector.get_overlapping_bodies()
		for b in bodies:
			if b.name == "Player1" and picked == false:
				picked = true
	
	if Input.is_action_just_pressed("drop") and picked == true:
		picked = false
	
	if Input.is_action_just_pressed("throw") and picked == true:
		picked = false
		if get_node("../Player1/Sprite").flip_h == false:
			apply_impulse(Vector2(), Vector2(SPEED+200, -50))
		else:
			apply_impulse(Vector2(), Vector2(-SPEED-200, -50))
		
