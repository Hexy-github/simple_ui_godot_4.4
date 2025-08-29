extends Control

@onready var control: Control = $Control
@onready var control_2: Control = $Control2



var one_is_open:bool = false
var two_is_open:bool = false
func _on_button_pressed() -> void:
	if one_is_open:
		one_is_open = false
		create_tween().tween_property(control,"anchor_right",-.03,.2)
	else:
		one_is_open = true
		create_tween().tween_property(control,"anchor_right",.25,.2)
func _on_button_2_pressed() -> void:
	if two_is_open:
		two_is_open = false
		create_tween().tween_property(control_2,"anchor_top",1,.2)
	else:
		two_is_open = true
		create_tween().tween_property(control_2,"anchor_top",.8,.2)
