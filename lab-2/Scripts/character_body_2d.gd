extends CharacterBody2D

@export var max_speed = 100 

func _physics_process(delta):
	var direction = Input.get_vector("move-left","move-right", "move-up","move-down")
	velocity = direction * max_speed
	move_and_slide()
	
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		var collider = collision.get_collider()
		if collider.name == "pencil":
			print("This pencil needs to be sharpened!" )
