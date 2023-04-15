extends Label
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	get_node("../Label2").text = "BERHASIL"
