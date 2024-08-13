extends Node2D

@onready var http_request: HTTPRequest = $HTTPRequest


func _on_http_request_request_completed(result: int, response_code: int, headers: PackedStringArray, body: PackedByteArray) -> void:
	print(response_code)


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("DABABYYY")
	var json = JSON.stringify({"productId": "price_1PDs91071FrYhqqtkUh2ZR30"})
	var headers = ["Content-Type: application/json"]
	http_request.request("http://localhost:3000/api/experiences/store", headers ,HTTPClient.METHOD_POST, json)
