extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 5

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	
	var dir = Vector2()
	
	if (Input.is_action_pressed("move_left")):
    	dir += Vector2(-1, 0) * delta * speed
		
	if (Input.is_action_pressed("move_right")):
    	dir += Vector2(1, 0) * delta * speed
		
	if (Input.is_action_pressed("move_up")):
    	dir += Vector2(0, -1) * delta * speed
		
	if (Input.is_action_pressed("move_down")):
    	dir += Vector2(0, 1) * delta * speed
	
	if(dir != Vector2()):
		dir = dir.normalized()
	
	get_node("ReedCat").position += dir
	
	pass