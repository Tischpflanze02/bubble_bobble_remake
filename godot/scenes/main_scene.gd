extends Node2D

var scene = preload("res://scenes/bubble.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_child(scene)
	print("added child")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_character_body_2d_create_bubble() -> void:
	 
	pass # Replace with function body.
