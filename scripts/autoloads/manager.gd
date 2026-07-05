extends Node

enum VIEWS {HOME,CATALOG,LIST}
var paths = {
	VIEWS.HOME : "res://views/home/home.tscn",
	VIEWS.CATALOG : "res://views/catalog/catalog.tscn",
}

var view : CanvasLayer
var current_view : VIEWS = VIEWS.HOME
var last_view : VIEWS = VIEWS.HOME
var category_list : String = "y sueña"


func _ready() -> void:
	# Fuerza al motor a activar el modo de bajo consumo en el dispositivo móvil
	OS.low_processor_usage_mode = true
	# Define el tiempo de reposo entre cuadros (equivalente al ajuste de 6900)
	OS.low_processor_usage_mode_sleep_usec = 6900
	
	
func load_view_container(view_container:CanvasLayer):
	view = view_container
	load_view(VIEWS.HOME)
	
func load_view(view_name:VIEWS):
	clear_view()
	current_view = view_name
	# 1_ leo el path
	var path = paths[view_name]
	# 2_ cargo la escena con load(path)
	var scene = load(path)
	# 3_ instancio con .instantiate()
	var instance = scene.instantiate()
	# 4_ añado al arbol
	view.add_child.call_deferred(instance)
	
func clear_view():
	if is_instance_valid(view) and view.get_child_count() > 0:
		last_view = current_view
		for child in view.get_children():
			child.queue_free()

func set_category_list(id:String):
	category_list = id
