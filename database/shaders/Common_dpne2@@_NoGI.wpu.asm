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
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
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
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampPow;
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
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      2
//   mrgGlobalLight_Diffuse                c36      1
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
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9
    dcl vPos.y
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_cube s5
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, -c0.y, -c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c2
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c2.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v4.z, c2.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c2.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c2.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c2.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.y, r3.x, r1.x
    lrp_pp r1.x, v6.z, c2.y, r3.x
    lrp_pp r1.y, v6.z, c2.y, r2.y
    rcp r1.z, v4.w
    mul r1.zw, r1.z, v4.xyxy
    mad r1.zw, r1, c0.y, c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.y, r1.z, r1.w
    lrp_pp r3.x, r2.y, c2.y, r1.y
    lrp_pp r3.y, r2.y, c2.y, r1.x
    mul r1.x, r3.x, c77.w
    add r1.y, -c48.z, c48.w
    rcp r1.y, r1.y
    add r2.yzw, -c46.xxyz, v2.xxyz
    dp3 r1.z, r2.yzww, r2.yzww
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r2.yzw, r1.z, r2
    add r1.z, r1.w, -c48.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c40.z, c40.w
    rcp r1.z, r1.z
    add r3.xzw, -c38.xyyz, v2.xyyz
    dp3 r1.w, r3.xzww, r3.xzww
    rsq r1.w, r1.w
    rcp r4.x, r1.w
    mul_pp r3.xzw, r1.w, r3
    add r1.w, r4.x, -c40.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c44.z, c44.w
    rcp r1.w, r1.w
    add r4.xyz, -c42, v2
    dp3 r4.w, r4, r4
    rsq r4.w, r4.w
    rcp r5.x, r4.w
    mul_pp r4.xyz, r4.w, r4
    add r4.w, r5.x, -c44.z
    mul_sat r1.w, r1.w, r4.w
    add_pp r1.yzw, -r1, c2.y
    frc r5.xy, c26.xwzw
    cmp r5.zw, -r5.xyxy, c2.x, c2.y
    add r5.xy, -r5, c26.xwzw
    cmp r5.zw, c26.xyxw, r2.x, r5
    add r5.xy, r5.zwzw, r5
    add r6, r5.y, -c2
    add r5, r5.x, -c2
    cmp r7.xy, -r6_abs.x, v0, c2.x
    cmp r6.xy, -r6_abs.y, v0.zwzw, r7
    cmp r6.xy, -r6_abs.z, v1, r6
    cmp r6.xy, -r6_abs.w, v1.zwzw, r6
    texld_pp r6, r6, s2
    mul_pp r6.yz, r6.x, c20
    mul_pp r6.yz, r6, c1.xxyw
    mul_pp r7.xyz, r6.z, c43
    max_pp r4.w, r6.y, c2.y
    min r6.y, r4.w, c1.z
    frc r4.w, c27.x
    cmp r6.w, -r4.w, c2.x, c2.y
    add r4.w, -r4.w, c27.x
    cmp r2.x, c27.x, r2.x, r6.w
    add r2.x, r2.x, r4.w
    add r8, r2.x, -c2
    cmp r9.xy, -r8_abs.x, v0, c2.x
    cmp r8.xy, -r8_abs.y, v0.zwzw, r9
    cmp r8.xy, -r8_abs.z, v1, r8
    cmp r8.xy, -r8_abs.w, v1.zwzw, r8
    texld_pp r8, r8, s3
    mul_pp r8.x, r8.w, r8.x
    mad_pp r8.xy, r8, c0.y, c0.z
    nrm_pp r9.xyz, v8
    mul_pp r9.xyz, r8.y, r9
    nrm_pp r10.xyz, v7
    mad_pp r9.xyz, r8.x, r10, r9
    dp2add_pp r2.x, r8, -r8, c2.y
    rsq_pp r2.x, r2.x
    rcp_pp r2.x, r2.x
    nrm_pp r8.xyz, v3
    mad r8.xyz, r2.x, r8, r9
    add_pp r9.xyz, c22, -v2
    dp3_pp r2.x, r9, r9
    rsq_pp r2.x, r2.x
    mad_pp r10.xyz, r9, r2.x, -r4
    dp3_pp r4.x, r8, -r4
    nrm_pp r11.xyz, r10
    dp3_sat_pp r4.y, r11, r8
    pow r7.w, r4.y, r6.y
    mul_pp r4.yzw, r7.w, r7.xxyz
    mul_pp r4.yzw, r1.w, r4
    mul_pp r7.xyz, r6.z, c39
    mad_pp r10.xyz, r9, r2.x, -r3.xzww
    dp3_pp r3.x, r8, -r3.xzww
    nrm_pp r11.xyz, r10
    dp3_sat_pp r3.z, r11, r8
    pow r7.w, r3.z, r6.y
    mul_pp r7.xyz, r7.w, r7
    mad_pp r4.yzw, r1.z, r7.xxyz, r4
    mul_pp r7.xyz, r6.z, c47
    mad_pp r10.xyz, r9, r2.x, -r2.yzww
    dp3_pp r2.y, r8, -r2.yzww
    nrm_pp r11.xyz, r10
    dp3_sat_pp r2.z, r11, r8
    pow r3.z, r2.z, r6.y
    mul_pp r7.xyz, r3.z, r7
    mad_pp r4.yzw, r1.y, r7.xxyz, r4
    add r2.z, -c52.z, c52.w
    rcp r2.z, r2.z
    add r7.xyz, -c50, v2
    dp3 r2.w, r7, r7
    rsq r2.w, r2.w
    rcp r3.z, r2.w
    mul_pp r7.xyz, r2.w, r7
    add r2.w, r3.z, -c52.z
    mul_sat r2.z, r2.z, r2.w
    add_pp r2.z, -r2.z, c2.y
    mul_pp r10.xyz, r6.z, c51
    mad_pp r11.xyz, r9, r2.x, -r7
    dp3_pp r2.w, r8, -r7
    nrm_pp r7.xyz, r11
    dp3_sat_pp r3.z, r7, r8
    pow r7.x, r3.z, r6.y
    mul_pp r7.xyz, r7.x, r10
    mad_pp r4.yzw, r2.z, r7.xxyz, r4
    mul_pp r7.xyz, r6.z, c37
    mad_pp r10.xyz, r9, r2.x, -c10
    nrm_pp r11.xyz, r10
    dp3_sat_pp r3.z, r11, r8
    pow r7.w, r3.z, r6.y
    mul_pp r7.xyz, r7.w, r7
    mad_pp r4.yzw, r7.xxyz, r1.x, r4
    mul_pp r7.xyz, c59.w, c59
    mul_pp r7.xyz, r6.z, r7
    mad_pp r10.xyz, r9, r2.x, -r0.yzww
    dp3_pp r0.y, r8, -r0.yzww
    mul r9.xyz, r2.x, r9
    nrm_pp r11.xyz, r10
    dp3_sat_pp r0.z, r11, r8
    pow r2.x, r0.z, r6.y
    mul_pp r6.yzw, r2.x, r7.xxyz
    mad_pp r4.yzw, r0.x, r6, r4
    dp3 r0.z, -r9, r8
    add r0.z, r0.z, r0.z
    mad_pp r6.yzw, r8.xxyz, -r0.z, -r9.xxyz
    texld_pp r7, r6.yzww, s5
    mul r6.yzw, r7.xxyz, c63.x
    mad_pp r6.yzw, r6, r7.w, r7.xxyz
    mul_pp r6.xyz, r6.x, r6.yzww
    mul r0.z, c64.z, c64.x
    mov r7.xz, c64
    mad r0.w, r7.x, -r7.z, r7.z
    mad_pp r0.z, r1.x, r0.w, r0.z
    mul_pp r6.xyz, r0.z, r6
    mad_pp r4.yzw, r4, c18.xxyz, r6.xxyz
    mul_pp r4.yzw, r4, v3.w
    mul_pp r6.xyz, r4.x, c43
    cmp_pp r6.xyz, r4.x, r6, c2.x
    mul_pp r6.xyz, r1.w, r6
    mul_pp r7.xyz, r3.x, c39
    cmp_pp r3.xzw, r3.x, r7.xyyz, c2.x
    mad_pp r3.xzw, r1.z, r3, r6.xyyz
    mul_pp r6.xyz, r2.y, c47
    cmp_pp r6.xyz, r2.y, r6, c2.x
    mad_pp r1.yzw, r1.y, r6.xxyz, r3.xxzw
    mul_pp r3.xzw, r2.w, c51.xyyz
    cmp_pp r2.xyw, r2.w, r3.xzzw, c2.x
    mad_pp r1.yzw, r2.z, r2.xxyw, r1
    dp3_pp r0.z, r8, -c10
    mul r2.xyz, r0.z, c36
    mul_pp r2.xyz, r1.x, r2
    cmp_pp r2.xyz, r0.z, r2, c2.x
    add_pp r1.xyz, r1.yzww, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c2.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mad_pp r1.xyz, r8, c0.x, c0.x
    mul_pp r2.xyz, r8, r8
    mov r6.xyz, c79
    add r3.xzw, -r6.xyyz, c80.xyyz
    mad r3.xzw, r1.y, r3, c79.xyyz
    mul r3.xzw, r2.y, r3
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r1.xyw, r1.x, r6.xyzz, c77.xyzz
    mad_pp r1.xyw, r2.x, r1, r3.xzzw
    mov r6.xyz, c81
    add r2.xyw, -r6.xyzz, c82.xyzz
    mad r2.xyw, r1.z, r2, c81.xyzz
    mad_pp r1.xyz, r2.z, r2.xyww, r1.xyww
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r3.y, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r5_abs.x, v0, c2.x
    cmp r1.xy, -r5_abs.y, v0.zwzw, r1
    cmp r1.xy, -r5_abs.z, v1, r1
    cmp r1.xy, -r5_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v9.w
    mul_pp r2.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r3.x, c86.x
    mad r0.w, r0.w, c24.w, -r3.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r3.xyz, r0.w, r1, c2.y
    mad_pp r0.xyz, r0, r3, r4.yzww
    mul_pp r2.xyz, r0, v9
    mul_pp r0, r2, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 283 instruction slots used (6 texture, 277 arithmetic)
