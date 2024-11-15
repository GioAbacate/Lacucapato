extends Area2D

var chao = Vector2(249, 0.28)
var velocidade = Vector2(-500, 0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_position( chao)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	set_position(get_position + velocidade * delta)
	pass
