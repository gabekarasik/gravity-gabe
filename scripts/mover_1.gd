extends Area2D

@onready var chunk2 = $"../../Chunk2"

func _on_body_entered(body: Node2D) -> void:
	print("mover1")
	chunk2.position.x += 1152.0
