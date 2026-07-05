extends Control


func _on_list_button_pressed() -> void:
	Manager.load_view(Manager.VIEWS.CATALOG)


func _on_config_button_pressed() -> void:
	print("boton de configuracion presionado")
