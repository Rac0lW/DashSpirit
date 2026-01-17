extends Control

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var panel: ColorRect = $Panel
@onready var grid_container: GridContainer = $Panel/GridContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	panel.visible = false
	#for i in 9:
		#var b = CustomButton.new()
		#b.name = str(i)
		#grid_container.add_child(b)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ShowPanel"):
		animation_player.play("start")
		panel.global_position = get_global_mouse_position() - Vector2(panel.size.x / 2.0, panel.size.y / 2.0)
		panel.visible = true
		Engine.time_scale = 0.03
	
	
	if event.is_action_released("ShowPanel"):
		animation_player.play_backwards("start")
		panel.visible = false
		
		if global.current_select_button == null:
			return
		global.current_select_button.pressed.emit()
		Engine.time_scale = 1.0
