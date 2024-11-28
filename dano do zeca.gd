extends StaticBody2D



func _on_area_2d_body_entered(body: urubu) -> void:
	if body.is_in_group("player"):
		body.damege()
	pass # Replace with function body.
