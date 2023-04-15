extends LineEdit
var testbentar = 20
var urlform = "https://docs.google.com/forms/d/e/1FAIpQLSdgWBMxqq9ywPCtFvXK2mn4r0onR7vPfriJcoJOMthRli4IxA/viewform?usp=sf_link"
var headers = ["Content-Type: application/x-www-form-urlencoded"]

var http = HTTPClient.new()

func _ready():
	grab_focus()
	set_cursor_position(len(text))

func _on_username_text_entered(new_text):
	GlobalVariables.username = new_text
	cl1.goto_scene("Node.tscn")
	


func _on_Button_Username_pressed():
	pass # Replace with function body.


func _on_username_text_changed(new_text):
	GlobalVariables.username = new_text
	print(GlobalVariables.username)

func _on_jenjang_text_changed(new_text):
	GlobalVariables.jenjang = new_text
	print(GlobalVariables.jenjang)


func _on_LineEdit_text_changed(new_text):
	GlobalVariables.jawaban1 = new_text
	print(GlobalVariables.jawaban1)


func _on_LineEdit2_text_changed(new_text):
	GlobalVariables.jawaban2 = new_text


func _on_LineEdit5_text_changed(new_text):
	GlobalVariables.jawaban5 = new_text


func _on_LineEdit3_text_changed(new_text):
	GlobalVariables.jawaban3 = new_text


func _on_LineEdit4_text_changed(new_text):
	GlobalVariables.jawaban4 = new_text


func _on_LineEdit6_text_changed(new_text):
	GlobalVariables.jawaban6 = new_text


func _on_LineEdit7_text_changed(new_text):
	GlobalVariables.jawaban7 = new_text


func _on_LineEdit8_text_changed(new_text):
	GlobalVariables.jawaban8 = new_text


func _on_LineEdit9_text_changed(new_text):
	GlobalVariables.jawaban9 = new_text


func _on_LineEdit10_text_changed(new_text):
	GlobalVariables.jawaban10 = new_text
