# Defines the stats and speical bounce properties of the coin shot type

extends RigidBody2D

@export var initial_velocity = 800.0
var despawn_timer = Timer.new()

func _ready():
	# Play the coin sound effect
	play_coin_sound()
	
	# Setup the despawn timer
	add_child(despawn_timer)
	despawn_timer.wait_time = 5 
	despawn_timer.one_shot = true  
	despawn_timer.timeout.connect(_on_despawn_timer_timeout)
	despawn_timer.start()
	
	# Disable gravity
	gravity_scale = 0

func set_initial_direction(direction: Vector2):
	# Set the initial velocity based on the direction given
	linear_velocity = direction * initial_velocity

func _on_despawn_timer_timeout():
	queue_free()  # Despawns the coin scene

func play_coin_sound():
		var audio_player = AudioStreamPlayer.new()
		add_child(audio_player)
		
		audio_player.stream = load("res://Finished_Assets/CoinSFX.mp3")
		audio_player.play()
