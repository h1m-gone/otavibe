extends CharacterBody2D
var start=true
const dwm =100
const up =200
var y=1
var play=false
var snd=1
func _physics_process(delta: float) -> void:

	if snd ==1:
		$Button/Label.text ="MID"
	if snd==2:
		$Button/Label.text="HIGH"
	if snd==3:
		$Button/Label.text="LOW"
	var dtop= global_position.y-up
	var dbtm=global_position.y-dwm
	var mouse_y =get_global_mouse_position().y
	var clamped_y=clampf(mouse_y,dtop,dbtm)
	$arr.global_position.y=clamped_y
	$a.pitch_scale=remap(mouse_y,dtop,dbtm,.6,1.5)
	$b.pitch_scale=remap(mouse_y,dtop,dbtm,.6,1.5)
	$c.pitch_scale=remap(mouse_y,dtop,dbtm,.6,1.5)
	if Input.is_action_pressed("ui_accept")&&play==true:
		if snd==1:
			if not $a.is_playing():
				print("work")
				$a.play()
		elif snd==2:
			if not $b.is_playing():
				print("work")
				$b.play()
		elif snd==3:
			if not $c.is_playing():
				print("work")
				$c.play()
	if Input.is_action_just_released("ui_accept"):
		$b.stop()
		$a.stop()
		$c.stop()


func _on_timer_timeout() -> void:
	if y==1:
		$body.position.y+=25
		y=0
	elif y==0:
		$body.position.y-=25
		y=1
	$Timer.start()


func playareaentered() -> void:
	$arr.visible=true
	play=true


func mouseexit() -> void:
	$arr.visible=false
	play=false


func soundswitch() -> void:
	if snd !=3:
		snd+=1

	else:
		snd=1


func changeclr() -> void:
	$"body/1".color=Color(randf(),randf(),randf())
	$"body/2".color=$"body/1".color
	$"body/3".color=$"body/1".color
	$"body/4".color=$"body/1".color
	$"body/5".color=$"body/1".color
	$"body/6".color=$"body/1".color
	$"body/7".color=$"body/1".color
	$"body/8".color=$"body/1".color
	$"body/9".color=$"body/1".color
	$"body/10".color=$"body/1".color
	$"body/11".color=$"body/1".color
	$"body/12".color=$"body/1".color
	$"body/13".color=$"body/1".color
	$"body/14".color=$"body/1".color
	$"body/15".color=$"body/1".color
	$"body/16".color=$"body/1".color
	$"body/17".color=$"body/1".color
	$"body/18".color=$"body/1".color
	$"body/19".color=$"body/1".color
	$"body/20".color=$"body/1".color
	$"body/21".color=$"body/1".color
	$"body/22".color=$"body/1".color
	$"body/23".color=$"body/1".color
	$"body/24".color=$"body/1".color
	$"body/25".color=$"body/1".color
	$"body/26".color=$"body/1".color
	$"body/27".color=$"body/1".color
	$"body/28".color=$"body/1".color
	$"body/29".color=$"body/1".color
	$"body/30".color=$"body/1".color
	$"body/31".color=$"body/1".color
	$"body/32".color=$"body/1".color
	$"body/33".color=$"body/1".color
	$"body/34".color=$"body/1".color
	$"body/35".color=$"body/1".color
	$"body/36".color=$"body/1".color
	$"body/37".color=$"body/1".color
	$"body/38".color=$"body/1".color
	$"body/39".color=$"body/1".color
	$"body/40".color=$"body/1".color
	$"body/41".color=$"body/1".color
	$"body/42".color=$"body/1".color
	$"body/43".color=$"body/1".color
	$"body/44".color=$"body/1".color
	$"body/45".color=$"body/1".color
	$"body/46".color=$"body/1".color
	$"body/47".color=$"body/1".color
	$"body/48".color=$"body/1".color
	$"body/49".color=$"body/1".color
	$"body/50".color=$"body/1".color
	$"body/51".color=$"body/1".color
	$"body/52".color=$"body/1".color
	$"body/53".color=$"body/1".color
	$"body/54".color=$"body/1".color
	$"body/55".color=$"body/1".color
	$"body/56".color=$"body/1".color
	$"body/57".color=$"body/1".color
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
