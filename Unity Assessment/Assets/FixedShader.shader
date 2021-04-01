Shader "MyShader/Diffuse With LightProbes Fixed" {
    Properties { 
        // we have removed support for texture tiling/offset,
        // so make them not be displayed in material inspector
        [NoScaleOffset] _MainTex ("Texture", 2D) = "white" {} 
    }
    SubShader {
    Pass {
        Tags {
            "LightMode"="ForwardBase"
        }
        CGPROGRAM
            // use "v" function as the vertex shader
            #pragma vertex v
            // use "f" function as the pixel (fragment) shader
            #pragma fragment f
            #include "UnityCG.cginc"
            #include "UnityLightingCommon.cginc"


            // texture we will sample
            sampler2D _MainTex;

            // vertex shader inputs
            

            // vertex shader outputs ("vertex to fragment")
            struct v2f {
                float2 uv : TEXCOORD0; // texture coordinate
                fixed4 diff : COLOR0;
                float4 vertex : SV_POSITION; // clip space position
            };

            // vertex shader
            v2f v (appdata_base vertex_data) {
                v2f o;
                o.vertex = UnityObjectToClipPos(vertex_data.vertex);
                o.uv = vertex_data.texcoord;
                half3 worldNormal = UnityObjectToWorldNormal(vertex_data.normal);
                half nl = max(0, dot(worldNormal, _WorldSpaceLightPos0.xyz));
                o.diff = nl * _LightColor0;
                o.diff.rgb += ShadeSH9(half4(worldNormal,1));
                return o;
            }

            // pixel shader; returns low precision ("fixed4" type)
            // color ("SV_Target" semantic)
            fixed4 f (v2f input_fragment) : SV_Target {
                fixed4 col = tex2D(_MainTex, input_fragment.uv);
                return col;
            }
        ENDCG
        }
    }
}