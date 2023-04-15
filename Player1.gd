extends KinematicBody2D
class_name Player1

var velocity = Vector2(0,0)
const SPEED = 230
const GRAVITY = 35
const JUMPFORCE = -750
const PUSH_SPEED = 90
onready var block = get_node("../Block1")
onready var p1 = get_node("../Player1")
onready var pos1 = p1.position




func _physics_process(delta):
	if block.picked_1 == true:
		if Input.is_action_pressed("right_1"):
			velocity.x = SPEED - 25
			$Sprite.play("walk")
			$Sprite.flip_h = false
		elif Input.is_action_pressed("left_1"):
			velocity.x = -SPEED + 25
			$Sprite.play("walk")
			$Sprite.flip_h = true
		else:
			$Sprite.play("idle")
	else:
		if Input.is_action_pressed("right_1"):
			velocity.x = SPEED
			$Sprite.play("walk")
			$Sprite.flip_h = false
		elif Input.is_action_pressed("left_1"):
			velocity.x = -SPEED
			$Sprite.play("walk")
			$Sprite.flip_h = true
		else:
			$Sprite.play("idle")
		
		if not is_on_floor():
			$Sprite.play("jump")
		
	
	velocity.y = velocity.y + GRAVITY
	if Input.is_action_just_pressed("jump_1") and is_on_floor():
		velocity.y = JUMPFORCE
		$Sprite.play("jump")
	velocity = move_and_slide(velocity, Vector2.UP, false, 4, 0.785398, false)
	velocity.x = lerp(velocity.x, 0, 0.15)

	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider is MoveableBlock:
			collision.collider.apply_central_impulse(-collision.normal * 5)
		elif collision.collider is MoveablePlatform:
			collision.collider.slide(-collision.normal * (SPEED/4))
		elif collision.collider is MoveablePlatformBirch:
			collision.collider.slide(-collision.normal * (SPEED/2.5))
		elif collision.collider is MoveablePlatformObsidian:
			collision.collider.slide(-collision.normal * (SPEED/5.5))
func _on_fallzone_body_entered(body):
	if body.name == 'Player1':
		p1.position = pos1
	
func _on_NextLevel_body_entered(body):
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	pass # Replace with function body.


func _on_Platform_active():
	pass # Replace with function body.


func _on_Platform_body_entered(body):
	pass # Replace with function body.


func _on_checkpoint_body_entered(body):
	if body.name == 'Player1':
		pos1 = p1.position
	

func _on_checkpoint2_body_entered(body):
	if body.name == 'Player1':
		pos1 = p1.position


func _on_Platform_body_exited(body):
	pass # Replace with function body.
