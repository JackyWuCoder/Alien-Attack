extends Node2D

@onready var spawn_timer = $Timer;

func _ready():
	spawn_timer.connect("timeout", _on_timer_timeout)

func _on_timer_timeout():
	print("Timeout")
