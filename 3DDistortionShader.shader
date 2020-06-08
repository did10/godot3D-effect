shader_type canvas_item;
const float pi = 3.1415;
const float curve = 0.35;

void fragment(){
	vec2 pos = vec2(UV);
	
	float top_or_bottom = (0.5 - UV.y);
	float left_or_right = (-sin(UV.x * pi ) * curve);
	pos.y += top_or_bottom * left_or_right;
	
	COLOR = texture(TEXTURE, pos);
}