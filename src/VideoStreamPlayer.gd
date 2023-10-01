extends VideoStreamPlayer


func _process(_delta):
	if Input.is_action_just_pressed("pause_video"):
		paused = !paused
		if paused:
			print("the video should be paused")
		else:
			print("The video should be resumed")

	if Input.is_action_just_pressed("restart_video"):
		play()
		print("The video should've been restarted")

	if Input.is_action_just_pressed("exit_application"):
		get_tree().quit()


	if Input.is_action_just_pressed("fullscreen"):
		if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
