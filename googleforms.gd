extends HTTPRequest

var urlform = "https://docs.google.com/forms/u/0/d/e/1FAIpQLSfnZHN16N_EXul5uTjPY16_l91kDTTobHgiqmbIf55kjAun6Q/formResponse"
var headers = ["Content-Type: application/x-www-form-urlencoded"]

var http = HTTPClient.new()
func _ready():
	pass


func _on_ButtonFinish_pressed():
	var data = {"entry.1213177475": GlobalVariables.username,
	 "entry.594920438": GlobalVariables.jenjang,
	 "entry.140631471": GlobalVariables.jawaban1,
	 "entry.23935695": GlobalVariables.jawaban2,
	 "entry.653065495": GlobalVariables.jawaban3,
	"entry.579986932": GlobalVariables.jawaban4,
	"entry.2003452434": GlobalVariables.jawaban5,
	"entry.230842942": GlobalVariables.jawaban6,
	"entry.353971285": GlobalVariables.jawaban7,
	"entry.1322573483": GlobalVariables.jawaban8,
	"entry.530429089": GlobalVariables.jawaban9,
	"entry.515679665": GlobalVariables.jawaban10,
	"entry.1293710070": GlobalVariables.skorLevel,
	"entry.98147118": GlobalVariables.multT_1,
	"entry.1829551172": GlobalVariables.multT_2,
	"entry.725624683": GlobalVariables.multT_3,
	"entry.1960538801": GlobalVariables.multT_4,
	"entry.897313490": GlobalVariables.multT_5,
	"entry.266135655": GlobalVariables.coins}
	
	var pool_headers = PoolStringArray(headers)
	data = http.query_string_from_dict(data)
	
	var result = self.request(urlform, pool_headers, false, HTTPClient.METHOD_POST, data)

