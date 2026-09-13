shader_type canvas_item;

uniform float outline_size = 2.0;

void fragment() {
	vec4 tex = texture(TEXTURE, UV);

	float outline = 0.0;

	for (float x = -outline_size; x <= outline_size; x += 1.0) {
		for (float y = -outline_size; y <= outline_size; y += 1.0) {
			vec2 offset = vec2(x, y) * TEXTURE_PIXEL_SIZE;
			outline = max(outline, texture(TEXTURE, UV + offset).a);
		}
	}

	if (tex.a < 0.001 && outline > 0.001) {
		COLOR = COLOR;
	} else {
		COLOR = tex * COLOR;
	}
}