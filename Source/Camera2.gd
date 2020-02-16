extends Camera

func _ready():
	get_tree().call_group("RotatedSprites", "set_camera", self)
