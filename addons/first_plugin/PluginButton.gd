@tool 
extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pressed.connect(test)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func test() -> void:
	print("foo")
