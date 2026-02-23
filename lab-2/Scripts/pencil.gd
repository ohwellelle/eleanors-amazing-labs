extends CharacterBody2D

var new_sprite = preload("res://Assets/pencilshavings.jpg")
func _physics_process(delta):
	print("thid")
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		var collider = collision.get_collider()
		if collider is CharacterBody2D:
			$Sprite2D.texture = new_sprite
		
