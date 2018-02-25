extends Sprite

var tempElapsed = 0
var step = 0

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
  tempElapsed = tempElapsed + delta
   
  if(tempElapsed > 0.1):
      set_frame(step+get_parent().direction*self.hframes)
      step = (step + 1)%self.hframes
      tempElapsed = 0
      pass