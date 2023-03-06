extends KinematicBody2D

export (int) var speed = 200
var velocity = Vector2()
var screen_size

func get_input():
	#rotation_dir = -1
	velocity = Vector2()

	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
		$AnimatedSprite.play("R")
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
		$AnimatedSprite.play("L")
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
		$AnimatedSprite.play("FW")
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
		$AnimatedSprite.play("B")
	velocity = velocity.normalized() * speed
	if Input.is_action_just_pressed('run'):
		speed = 400
	elif Input.is_action_just_released("run"):
		speed = 200
	if velocity.x == 0 and velocity.y == 0:
		$AnimatedSprite.stop()
		
	if Input.is_action_pressed('ui_up') and Input.is_action_pressed('ui_right'):
		$AnimatedSprite.play("B_R")
	if Input.is_action_pressed('ui_up') and Input.is_action_pressed('ui_left'):
		$AnimatedSprite.play("B_L")
	if Input.is_action_pressed('ui_down') and Input.is_action_pressed('ui_right'):
		$AnimatedSprite.play("FW_R")
	if Input.is_action_pressed('ui_down') and Input.is_action_pressed('ui_left'):
		$AnimatedSprite.play("FW_L")



func _physics_process(delta):
	get_input()
	move_and_slide(velocity)

func _ready():
	$AnimatedSprite.play("starting")
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

