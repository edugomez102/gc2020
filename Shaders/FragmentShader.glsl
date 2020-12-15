
precision mediump float;	// Precisión media

uniform sampler2D u_TextureUnit;

varying vec4 v_Color;		// in: color del vertex shader
varying vec2 v_Uv;

void main()
{
	vec4 t_Color = texture2D(u_TextureUnit, v_Uv);
	gl_FragColor = v_Color * t_Color;
}
