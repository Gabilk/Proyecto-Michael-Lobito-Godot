extends Node2D

# Sistema avanzado de animación con transiciones suaves
class_name AnimationManager

var current_animation = ""
var animation_queue = []
var is_transitioning = false
var transition_speed = 0.3

func _ready():
	pass

func play_animation(anim_name: String, force: bool = false):
	"""Reproduce una animación con suavidad"""
	if current_animation == anim_name and not force:
		return
	
	current_animation = anim_name
	if has_node("AnimatedSprite2D"):
		$AnimatedSprite2D.play(anim_name)

func queue_animation(anim_name: String):
	"""Agrega una animación a la cola"""
	animation_queue.append(anim_name)

func play_queued():
	"""Reproduce la siguiente animación en la cola"""
	if animation_queue.size() > 0:
		var next_anim = animation_queue.pop_front()
		play_animation(next_anim)

func get_animation_duration(anim_name: String) -> float:
	"""Obtiene la duración de una animación en segundos"""
	if has_node("AnimatedSprite2D"):
		var sprite = $AnimatedSprite2D
		if sprite.sprite_frames.has_animation(anim_name):
			var frame_count = sprite.sprite_frames.get_frame_count(anim_name)
			var speed = sprite.sprite_frames.get_animation_speed(anim_name)
			return float(frame_count) / speed
	return 0.0

func is_playing_animation(anim_name: String) -> bool:
	"""Verifica si se está reproduciendo una animación específica"""
	if has_node("AnimatedSprite2D"):
		return $AnimatedSprite2D.is_playing() and current_animation == anim_name
	return false
