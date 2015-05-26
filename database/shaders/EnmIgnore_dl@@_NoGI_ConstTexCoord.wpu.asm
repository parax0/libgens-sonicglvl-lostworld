//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgChrEmissionParam;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   mrgChrEmissionParam                   c150     1
//   sampDif                               s0       1
//   sampEmi                               s4       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 0, 1, -2
    def c1, 500, 5, 1024, 4
    def c2, -2, 3, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6
    dcl_2d s0
    dcl_2d s4
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c0.y
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c0.y, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c0.y
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c0.y, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c0.z, r2.x
    lrp_pp r1.y, v5.z, c0.z, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, -c0.w, -c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c0.z, r1.y
    lrp_pp r3.y, r2.x, c0.z, r1.x
    mul_pp r1.x, r3.x, c77.w
    add r1.y, -c48.z, c48.w
    rcp r1.y, r1.y
    add r2.xyz, -c46, v1
    dp3 r1.z, r2, r2
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    add r1.w, r1.w, -c48.z
    mul_sat r1.y, r1.y, r1.w
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r3.xzw, -c38.xyyz, v1.xyyz
    dp3 r2.w, r3.xzww, r3.xzww
    rsq r2.w, r2.w
    rcp r4.x, r2.w
    add r4.x, r4.x, -c40.z
    mul_sat r1.w, r1.w, r4.x
    add_pp r1.yw, -r1, c0.z
    add r4.x, -c44.z, c44.w
    rcp r4.x, r4.x
    add r4.yzw, -c42.xxyz, v1.xxyz
    dp3 r5.x, r4.yzww, r4.yzww
    rsq r5.x, r5.x
    rcp r5.y, r5.x
    add r5.y, r5.y, -c44.z
    mul_sat r4.x, r4.x, r5.y
    add_pp r4.x, -r4.x, c0.z
    add_pp r5.yzw, c22.xxyz, -v1.xxyz
    dp3_pp r6.x, r5.yzww, r5.yzww
    rsq_pp r6.x, r6.x
    mul_pp r6.yzw, r5, r6.x
    mad_pp r4.yzw, r4, -r5.x, r6
    nrm_pp r7.xyz, r4.yzww
    nrm_pp r8.xyz, v2
    dp3_sat_pp r4.y, r7, r8
    mov_pp r7.xy, c1
    mul_pp r4.zw, r7.xyxy, c20.xyyz
    max_pp r5.x, r4.z, c0.z
    min r4.z, r5.x, c1.z
    pow r5.x, r4.y, r4.z
    mul_pp r7.xyz, r4.w, c43
    mul_pp r7.xyz, r5.x, r7
    mul_pp r7.xyz, r4.x, r7
    mad_pp r3.xzw, r3, -r2.w, r6.yyzw
    nrm_pp r9.xyz, r3.xzww
    dp3_sat_pp r2.w, r9, r8
    pow r3.x, r2.w, r4.z
    mul_pp r9.xyz, r4.w, c39
    mul_pp r3.xzw, r3.x, r9.xyyz
    mad_pp r3.xzw, r1.w, r3, r7.xyyz
    mad_pp r2.xyz, r2, -r1.z, r6.yzww
    nrm_pp r7.xyz, r2
    dp3_sat_pp r1.z, r7, r8
    pow r2.x, r1.z, r4.z
    mul_pp r2.yzw, r4.w, c47.xxyz
    mul_pp r2.xyz, r2.x, r2.yzww
    mad_pp r1.yzw, r1.y, r2.xxyz, r3.xxzw
    add r2.x, -c52.z, c52.w
    rcp r2.x, r2.x
    add r2.yzw, -c50.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.z, r3.x
    mad_pp r2.yzw, r2, -r3.x, r6
    nrm_pp r7.xyz, r2.yzww
    dp3_sat_pp r2.y, r7, r8
    pow r3.x, r2.y, r4.z
    add r2.y, r3.z, -c52.z
    mul_sat r2.x, r2.x, r2.y
    add_pp r2.x, -r2.x, c0.z
    mul_pp r2.yzw, r4.w, c51.xxyz
    mul_pp r2.yzw, r3.x, r2
    mad_pp r1.yzw, r2.x, r2, r1
    mul_pp r2.xyz, r4.w, c37
    mad_pp r3.xzw, r5.yyzw, r6.x, -c10.xyyz
    mad_pp r0.yzw, r5, r6.x, -r0
    nrm_pp r5.xyz, r0.yzww
    dp3_sat_pp r0.y, r5, r8
    pow r2.w, r0.y, r4.z
    nrm_pp r5.xyz, r3.xzww
    dp3_sat_pp r0.y, r5, r8
    pow r3.x, r0.y, r4.z
    mul_pp r0.yzw, r2.xxyz, r3.x
    mad_pp r0.yzw, r0, r1.x, r1
    mul_pp r1.xyz, c59.w, c59
    mul_pp r1.xyz, r4.w, r1
    mul_pp r1.xyz, r2.w, r1
    mad_pp r0.xyz, r0.x, r1, r0.yzww
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v2.w
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r2.xyz, r8, c0.x, c0.x
    mul_pp r3.xzw, r8.xyyz, r8.xyyz
    mad r1.xyz, r2.y, r1, c79
    mul r1.xyz, r1, r3.z
    mov r4.xyz, c77
    add r4.xyz, -r4, c78
    mad r2.xyw, r2.x, r4.xyzz, c77.xyzz
    mad_pp r1.xyz, r3.x, r2.xyww, r1
    mov r4.xyz, c81
    add r2.xyw, -r4.xyzz, c82.xyzz
    mad r2.xyz, r2.z, r2.xyww, c81
    mad_pp r1.xyz, r3.w, r2, r1
    mul r2.xyz, r1, c70.w
    mad r1.xyz, r1, -c70.w, r1
    mad_pp r1.xyz, r3.y, r1, r2
    add_pp r1.xyz, r1, c0.z
    mul_pp r1.xyz, r1, c16
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r1, r2, r0
    mul_pp r1.w, r2.w, c16.w
    texld r2, v0, s4
    add_pp r2.xyz, r2, c150
    mul_pp r2.xyz, r2, c17
    mad_pp r1.xyz, r2, c150.w, r0
    mul_pp r0, r1, v6
    mul_pp r0.w, r0.w, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 197 instruction slots used (4 texture, 193 arithmetic)