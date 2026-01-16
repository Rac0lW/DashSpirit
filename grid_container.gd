extends GridContainer


#func _ready() -> void:
	#visibility_changed.connect(_reset_items_size)
	#
#func _reset_items_size() -> void:
	#for i:CustomButton in get_children():
		#i.size.x = self.size.x / 3.0
		#i.size.y = self.size.y / 3.0
		
		
