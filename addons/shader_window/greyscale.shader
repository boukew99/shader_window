shader_type canvas_item;

uniform float base = 0.5;

void fragment() {
	vec3 c = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb;
	float n_c = (c.r + c.g + c.b) / 3.0;
	COLOR.rgb = vec3(n_c);
}
