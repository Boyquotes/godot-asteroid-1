extends Area2D

signal hit

@export var speed = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	
	position += velocity * delta


func respawn(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false

func _on_body_entered(body):
	hide()
	hit.emit()
	
	$CollisionShape2D.set_deferred("disabled", true)
