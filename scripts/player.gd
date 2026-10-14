class_name Player
extends CharacterBody2D

@onready var animations = $AnimatedSprite2D

var speed = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$StateMachine.init(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		velocity.x += speed * delta
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
