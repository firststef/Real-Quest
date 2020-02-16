extends Spatial

const MOUSE_SENS = 0.5

func _input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.y -= MOUSE_SENS * event.relative.x
		rotation_degrees.x -= MOUSE_SENS * event.relative.y

func _process(delta):
	if Input.is_action_pressed("camera_left"):
		set_rotation(get_rotation() + Vector3(0,0.1,0))
