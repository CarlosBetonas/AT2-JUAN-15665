extends Area2D

var cerejas_na_fase: int = 5

@onready var texto: Label = $Mensagem


func _on_body_entered(body: Node2D) -> void:
	if not body.is_in_group("player"):
		return

	texto.text = "Fase concluida, ao todo eram 5 cerejas " + str(cerejas_na_fase) + " cerejas."
