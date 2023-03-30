extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	# Generate random size
	var collider = Polygon2D.new()
	collider.set_polygon(PackedVector2Array([Vector2(40, 40),
									Vector2(40, 80),
									Vector2(80, 50),
									Vector2(50, 40)
								]))
	add_child(collider)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
