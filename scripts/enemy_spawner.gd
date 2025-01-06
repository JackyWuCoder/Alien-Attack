extends Node2D

var enemy_scene = preload("res://scenes/enemy.tscn")

@onready var spawn_timer = $Timer;

func _ready():
	spawn_timer.connect("timeout", _on_timer_timeout)

func _on_timer_timeout():
	print("Timeout")

func spawn_enemy():
	var enemy_instance = enemy_scene.instantate()
	enemy_instance.global_position = Vector2(1350, 300)
	add_child(enemy_instance)
