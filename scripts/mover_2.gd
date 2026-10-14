extends Area2D

@onready var chunk1 = $"../../Chunk1"

func _on_body_entered(body: Node2D) -> void:
	print("Mover2")
	chunk1.position.x += 1152.0
