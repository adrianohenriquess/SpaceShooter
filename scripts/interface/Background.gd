extends ParallaxBackground

export(float) var desert_speed
export(float) var cloud_speed

onready var desert: ParallaxLayer = get_node("Desert")
onready var cloud: ParallaxLayer = get_node("Cloud")

func _physics_process(delta):
	desert.motion_offset.y += desert_speed * delta
	cloud.motion_offset.y  += cloud_speed  * delta
