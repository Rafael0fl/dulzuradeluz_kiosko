extends Node2D

@onready var view_container : CanvasLayer = $current_view

func _ready() -> void:
	Manager.load_view_container(view_container)
