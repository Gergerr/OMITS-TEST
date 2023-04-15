extends RigidBody2D
class_name MoveableBlock

func _integrate_forces(state: Physics2DDirectBodyState) -> void:
	angular_velocity = 0
	rotation_degrees = 0
	
func test_force():
	add_central_force(Vector2(-100,0))
