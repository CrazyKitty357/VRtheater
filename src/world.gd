extends Node3D

var interface : XRInterface

func _ready() -> void:
	print("the game has started")
	interface = XRServer.find_interface("OpenXR")
	if interface and interface.is_initialized():
		print("VR is has been found, very pog")
		get_viewport().use_xr = true
