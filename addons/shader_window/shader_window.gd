extends WindowDialog

onready var shaders = $ResourcePreloader.get_resource_list() as Array

func _ready():
	shaders.sort()
	var menu = $MenuButton.get_popup()
	
	for shader in shaders:
		menu.add_item(shader)
	
	menu.connect("index_pressed", self, "_on_MenuButton_item_selected")

func _on_MenuButton_item_selected(index):
	window_title = shaders[index]
	$ColorRect.material = $ResourcePreloader.get_resource(shaders[index])
	
