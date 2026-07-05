extends Control


func category_button(id:String):
	print("la categoria es: ",id)
	Manager.set_category_list(id)
