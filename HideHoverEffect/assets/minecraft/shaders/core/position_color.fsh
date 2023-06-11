#version 150

in vec4 vertexColor;
in float vertexDistance;
in vec3 xyzPos;

uniform float GameTime;
uniform vec4 ColorModulator;
uniform vec2 u_resolution;
uniform vec2 ScreenSize;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }

    if (color.r == 255/255.0 && color.g == 255/255.0 && color.b == 255/255.0 && color.a == 128/255.0) {
        color = vec4(0, 0, 0, 0); /* < < Your colour goes here (#4e315e)*/
    }
    
    fragColor = color * ColorModulator;
}
