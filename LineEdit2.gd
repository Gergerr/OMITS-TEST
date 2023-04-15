extends LineEdit
var http = HTTPClient.new()

func _ready():
	grab_focus()
	set_cursor_position(len(text))

func _on_LineEdit_text_entered(new_text):
	cl3.goto_scene("res://Node_3.tscn")
	GlobalVariables.jawaban2 = new_text

