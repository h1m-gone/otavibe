extends Node2D
var total=0
var s =1
const a=preload("res://omabase.tscn")
func _physics_process(delta: float) -> void:
	pass

func addaoma() -> void:
	if total == 0:
		var new=a.instantiate()
		new.position.x = $omabase.position.x+200
		new.position.y=$omabase.position.y-100
		add_child(new)
		total=total +1
	elif total==1:
		var new=a.instantiate()
		new.position.x = $omabase.position.x+400
		new.position.y=$omabase.position.y
		add_child(new)
		total=total +1
	elif total ==2:
		var new=a.instantiate()
		new.position.x = $omabase.position.x+600
		new.position.y=$omabase.position.y-100
		add_child(new)
		total=total +1
	elif total ==3:
		var new=a.instantiate()
		new.position.x = $omabase.position.x+800
		new.position.y=$omabase.position.y
		add_child(new)
		total=total +1


func _on_button_2_pressed() -> void:
	s+=1
	$Label.visible=false
	$omabase.visible=true
	if s==0:
		$"1".visible=false
	elif s==1:
		$"1".visible=false
		$"2".visible=true
	elif s==2:
		$"2".visible=false
		$"3".visible=true
	elif s==3:
		$"3".visible=false
		$"4".visible=true
		$Label.visible=true
	elif s==4:
		$"4".visible=false
		$"1".visible=true
		$Label.visible=false
		s=0


func slider(value: float) -> void:
	$"4".color.r=value/255


func _on_button_3_pressed() -> void:
	$"Button3/1".play()
	print("wpr")
