@tool # lets the plugin run in the editor
extends EditorPlugin

var toolbar

# Called on enabling the plugin.
func _enter_tree():
	# Initialize the plugin scene.
	toolbar = preload("res://addons/first_plugin/first_plugin.tscn").instantiate()
	
	# Add the plugin button to the Editor's container toolbar 
	add_control_to_container(EditorPlugin.CONTAINER_TOOLBAR, toolbar)
	# I could add this to the bottom panel, the dock, etc. instead
# Called on exit of the plugin.
# Make sure to do all cleanup here!
func _exit_tree():
	# Clean-up of the plugin goes here.
	# Remove the plugin button from the Editor's container toolbar 
	remove_control_from_container(EditorPlugin.CONTAINER_TOOLBAR, toolbar)
	# Remove the toolbar
	toolbar.free()
