shader_type canvas_item;
// Main color
uniform vec4 base_color = vec4(0.1, 0.2, 0.6, 1.0);

void fragment(){
	COLOR = base_color * 2.0;

}