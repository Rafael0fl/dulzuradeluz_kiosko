extends Control


func _on_back_button_pressed() -> void:
	pass # Replace with function body.


func _on_home_button_pressed() -> void:
	Manager.load_view(Manager.VIEWS.HOME)
