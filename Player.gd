extends KinematicBody2D

export (int) var speed = 200
var velocity = Vector2()

const UP = Vector2(0,-1)
const GRAVITY = 20
const MAXFALLSPEED = 200
const MAXSPEED = 80
const JUMPFORCE = 300
const ACCEL = 10

var motion = Vector2()


func _physics_process(delta):
	if Input.is_action_pressed('ui_right'):
		motion.x = MAXSPEED
		
	#rotation += rotation_dir * rotation_speed * delta
	move_and_slide(velocity)
