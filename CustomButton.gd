extends Button
class_name CustomButton

func _ready() -> void:
	mouse_entered.connect(
		func():
		global.current_select_button = self
		)
		
	pressed.connect(
		func():
		print(name)
	)
