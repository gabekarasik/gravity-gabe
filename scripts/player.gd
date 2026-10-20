class_name Player
extends CharacterBody2D

@onready var animations = $AnimatedSprite2D
@onready var collision_shape = $CollisionShape2D
@export var gravity_direction = 1

var speed = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$StateMachine.init(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity.x = speed

	move_and_slide()
