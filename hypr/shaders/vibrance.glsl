#version 300 es
precision highp float;

in vec2 v_texcoord;
uniform sampler2D tex;
out vec4 fragColor;

void main() {
    vec4 pixColor = texture(tex, v_texcoord);
    vec3 color = pixColor.rgb;

    // --- CONFIGURATION ---
    float saturation = 1.25;
    float contrast   = 1.075;
    // ---------------------

    // Saturation Logic
    float luminance = dot(color, vec3(0.2126, 0.7152, 0.0722));
    vec3 grey = vec3(luminance);
    color = mix(grey, color, saturation);

    // Contrast Logic
    color = (color - 0.5) * contrast + 0.5;

    fragColor = vec4(color, pixColor.a);
}
