
uniform sampler2D data;
uniform sampler2D webcam;
uniform vec2 resolution;
varying vec2 vUv;
void main(){

    vec4 src = texture2D(data, vUv);
    vec4 webcamTex = texture2D(webcam, fract(vec2(resolution.x-vUv.x, vUv.y)));
    gl_FragColor = vec4( src.ggg * (1.0 - webcamTex.rgb), 1. );

    // gl_FragColor = webcamTex.bbbb;
}
