class_name Player extends CharacterBody2D


const MOVE_SPEED: float = 100.0


func _process(delta: float) -> void:
	var direction: Vector2 = Vector2.ZERO
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	velocity = direction * MOVE_SPEED
	
	pass

func _physics_process(_delta: float) -> void:
	move_and_slide()
