extends Area2D
## Coletável da fase

func _on_body_entered(body: Node2D) -> void:
	if not body.is_in_group("player"):
		return

	GameManager.add_point()

	if body.has_method("brilhar"):
		body.brilhar()

	monitoring = false
	queue_free()
