extends Camera2D
onready var Player = get_node('/root/World')

func _process (delta):
  position.x = Player.position.x
