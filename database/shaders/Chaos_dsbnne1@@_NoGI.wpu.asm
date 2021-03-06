//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_ChaosWaveParamEx;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   sampler2D g_FramebufferSampler;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_SonicSkinFalloffParam;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampBlend;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
//   sampler2D sampSpec;
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
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   g_SonicSkinFalloffParam               c150     1
//   g_ChaosWaveParamEx                    c151     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampNrm2                              s3       1
//   sampEnv                               s5       1
//   sampBlend                             s6       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -0.0500000007
    def c1, 1.05263162, -2, 3, 1024
    def c2, 500, 5, 0.5, -0.5
    def c3, 4, 0, 0, 0
    def c4, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9.w
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s11
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
    mad_pp r1.y, r0.x, c1.y, c1.z
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c4
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c4.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c4.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c44.z, c44.w
    rcp r1.x, r1.x
    add r1.yzw, -c42.xxyz, v2.xxyz
    dp3 r2.z, r1.yzww, r1.yzww
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r1.yzw, r1, r2.z
    add r2.z, r2.w, -c44.z
    mul_sat r1.x, r1.x, r2.z
    add_pp r1.x, -r1.x, c4.y
    frc r2.zw, c27.xyxw
    cmp r3.xy, -r2.zwzw, c4.x, c4.y
    add r2.zw, -r2, c27.xyxw
    cmp r3.xy, c27.xwzw, r2.x, r3
    add r2.zw, r2, r3.xyxy
    add r3, r2.z, -c4
    add r4, r2.w, -c4
    cmp r2.zw, -r3_abs.x, v0.xyxy, c4.x
    cmp r2.zw, -r3_abs.y, v0, r2
    cmp r2.zw, -r3_abs.z, v1.xyxy, r2
    cmp r2.zw, -r3_abs.w, v1, r2
    texld_pp r3, r2.zwzw, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r2.zw, r3.xyxy, c0.x, c0.y
    dp2add_pp r3.x, r2.zwzw, -r2.zwzw, c4.y
    rsq_pp r3.x, r3.x
    rcp_pp r3.x, r3.x
    nrm_pp r5.xyz, v8
    mul_pp r3.yzw, r2.w, r5.xxyz
    nrm_pp r6.xyz, v7
    mad_pp r3.yzw, r2.z, r6.xxyz, r3
    nrm_pp r7.xyz, v3
    mad_pp r3.xyz, r3.x, r7, r3.yzww
    frc r8.xyz, c26.xzww
    cmp r9.xyz, -r8, c4.x, c4.y
    add r8.xyz, -r8, c26.xzww
    cmp r2.xzw, c26, r2.x, r9.xyyz
    add r2.xzw, r2, r8.xyyz
    add r8, r2.w, -c4
    cmp r9.xy, -r8_abs.x, v0, c4.x
    cmp r8.xy, -r8_abs.y, v0.zwzw, r9
    cmp r8.xy, -r8_abs.z, v1, r8
    cmp r8.xy, -r8_abs.w, v1.zwzw, r8
    texld_pp r8, r8, s2
    mul_pp r8.x, r8.w, r8.x
    mad_pp r8.xy, r8, c0.x, c0.y
    mul_pp r5.xyz, r5, r8.y
    mad_pp r5.xyz, r8.x, r6, r5
    dp2add_pp r2.w, r8, -r8, c4.y
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    mad_pp r5.xyz, r2.w, r7, r5
    add_pp r3.xyz, r3, r5
    nrm_pp r5.xyz, r3
    dp3_pp r2.w, r5, -r1.yzww
    add_pp r2.w, r2.w, c0.w
    mul_sat_pp r2.w, r2.w, c1.x
    mul_pp r3.xyz, r2.w, c43
    mul_pp r3.xyz, r1.x, r3
    add r2.w, -c40.z, c40.w
    rcp r2.w, r2.w
    add r6.xyz, -c38, v2
    dp3 r3.w, r6, r6
    rsq r3.w, r3.w
    rcp r5.w, r3.w
    mul_pp r6.xyz, r3.w, r6
    add r3.w, r5.w, -c40.z
    mul_sat r2.w, r2.w, r3.w
    add_pp r2.w, -r2.w, c4.y
    dp3_pp r3.w, r5, -r6
    add_pp r3.w, r3.w, c0.w
    mul_sat_pp r3.w, r3.w, c1.x
    mul_pp r7.xyz, r3.w, c39
    mad_pp r3.xyz, r2.w, r7, r3
    add r3.w, -c48.z, c48.w
    rcp r3.w, r3.w
    add r7.xyz, -c46, v2
    dp3 r5.w, r7, r7
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    mul_pp r7.xyz, r5.w, r7
    add r5.w, r6.w, -c48.z
    mul_sat r3.w, r3.w, r5.w
    add_pp r3.w, -r3.w, c4.y
    dp3_pp r5.w, r5, -r7
    add_pp r5.w, r5.w, c0.w
    mul_sat_pp r5.w, r5.w, c1.x
    mul_pp r8.xyz, r5.w, c47
    mad_pp r3.xyz, r3.w, r8, r3
    add r5.w, -c52.z, c52.w
    rcp r5.w, r5.w
    add r8.xyz, -c50, v2
    dp3 r6.w, r8, r8
    rsq r6.w, r6.w
    rcp r7.w, r6.w
    mul_pp r8.xyz, r6.w, r8
    add r6.w, r7.w, -c52.z
    mul_sat r5.w, r5.w, r6.w
    add_pp r5.w, -r5.w, c4.y
    dp3_pp r6.w, r5, -r8
    add_pp r6.w, r6.w, c0.w
    mul_sat_pp r6.w, r6.w, c1.x
    mul_pp r9.xyz, r6.w, c51
    mad_pp r3.xyz, r5.w, r9, r3
    max r6.w, v4.z, c4.x
    add r7.w, r6.w, -v4.w
    cmp r9.z, r7.w, c4.x, r6.w
    mov r9.xyw, v4
    texldp_pp r9, r9, s13
    max r6.w, v5.z, c4.x
    add r7.w, r6.w, -v5.w
    cmp r10.z, r7.w, c4.x, r6.w
    mov r10.xyw, v5
    texldp_pp r10, r10, s7
    min_pp r6.w, r10.x, r9.x
    lrp_pp r7.w, v6.z, c4.y, r10.x
    lrp_pp r8.w, v6.z, c4.y, r6.w
    rcp r6.w, v4.w
    mul r9.xy, r6.w, v4
    mad r9.xy, r9, c0.x, c0.y
    abs_sat r9.xy, r9
    add_sat r9.xy, r9, -c65.x
    mul r9.xy, r9, c65.y
    max r6.w, r9.x, r9.y
    lrp_pp r9.x, r6.w, c4.y, r8.w
    lrp_pp r8.w, r6.w, c4.y, r7.w
    mul r6.w, r9.x, c77.w
    dp3_pp r7.w, r5, -c10
    add_pp r7.w, r7.w, c0.w
    mul_sat_pp r7.w, r7.w, c1.x
    mul_pp r9.xyz, r7.w, c36
    mad_pp r3.xyz, r9, r6.w, r3
    dp3_pp r7.w, r5, -r0.yzww
    add_pp r7.w, r7.w, c0.w
    mul_sat_pp r7.w, r7.w, c1.x
    mul r9.xyz, c58.w, c58
    mul_pp r9.xyz, r7.w, r9
    mad_pp r3.xyz, r0.x, r9, r3
    mul_pp r9.xyz, r5, r5
    mad_pp r10.xyz, r5, c0.z, c0.z
    mov r11.xyz, c79
    add r11.xyz, -r11, c80
    mad r12.xyz, r10.y, r11, c79
    mul r12.xyz, r9.y, r12
    mov r13.xyz, c77
    add r13.xyz, -r13, c78
    mad r10.xyw, r10.x, r13.xyzz, c77.xyzz
    mad_pp r9.xyw, r9.x, r10, r12.xyzz
    mov r12.xyz, c81
    add r10.xyw, -r12.xyzz, c82.xyzz
    mad r12.xyz, r10.z, r10.xyww, c81
    mad_pp r9.xyz, r9.z, r12, r9.xyww
    mul_pp r12.xyz, r9, c17
    mul r12.xyz, r12, c70.w
    mad r9.xyz, r9, c17, -r12
    mad_pp r9.xyz, r8.w, r9, r12
    add_pp r3.xyz, r3, r9
    mul_pp r3.xyz, r3, c16
    add r9, r2.x, -c4
    add r12, r2.z, -c4
    cmp r2.xz, -r9_abs.x, v0.xyyw, c4.x
    cmp r2.xz, -r9_abs.y, v0.zyww, r2
    cmp r2.xz, -r9_abs.z, v1.xyyw, r2
    cmp r2.xz, -r9_abs.w, v1.zyww, r2
    texld_pp r9, r2.xzzw, s0
    mul r14, r5.y, c91
    mad r14, r5.x, c90, r14
    mad r14, r5.z, c92, r14
    mul r2.x, c24.w, vPos.y
    mad_pp r15.y, r2.x, -c0.x, -c0.y
    dp2add_pp r15.x, vPos.x, c24.z, -r2.y
    mad_pp r2.xy, r14, c151.y, r15
    mad r2.xy, r2, c2.zwzw, c2.z
    texld_pp r15, r2, s11
    mad_pp r2.xyz, r3, r9, -r15
    mul_pp r3.x, r9.w, c16.w
    mul_pp r3.x, r3.x, v9.w
    mul_pp r9.w, r3.x, c21.x
    cmp r3.xy, -r4_abs.x, v0, c4.x
    cmp r3.xy, -r4_abs.y, v0.zwzw, r3
    cmp r3.xy, -r4_abs.z, v1, r3
    cmp r3.xy, -r4_abs.w, v1.zwzw, r3
    texld_pp r4, r3, s6
    mad_pp r2.xyz, r4.x, r2, r15
    cmp r3.xy, -r12_abs.x, v0, c4.x
    cmp r3.xy, -r12_abs.y, v0.zwzw, r3
    cmp r3.xy, -r12_abs.z, v1, r3
    cmp r3.xy, -r12_abs.w, v1.zwzw, r3
    texld_pp r4, r3, s1
    add_pp r3.xyz, c22, -v2
    dp3_pp r7.w, r3, r3
    rsq_pp r7.w, r7.w
    mad_pp r1.yzw, r3.xxyz, r7.w, -r1
    nrm_pp r12.xyz, r1.yzww
    dp3_sat_pp r1.y, r12, r5
    mov_pp r12.xy, c2
    mul_pp r1.zw, r12.xyxy, c20.xyyz
    max_pp r8.w, r1.z, c4.y
    min r1.z, r8.w, c1.w
    pow r8.w, r1.y, r1.z
    mul_pp r12.xyz, r1.w, c43
    mul_pp r12.xyz, r8.w, r12
    mul_pp r12.xyz, r1.x, r12
    mad_pp r6.xyz, r3, r7.w, -r6
    nrm_pp r15.xyz, r6
    dp3_sat_pp r1.x, r15, r5
    pow r6.x, r1.x, r1.z
    mul_pp r15.xyz, r1.w, c39
    mul_pp r6.xyz, r6.x, r15
    mad_pp r6.xyz, r2.w, r6, r12
    mad_pp r7.xyz, r3, r7.w, -r7
    nrm_pp r12.xyz, r7
    dp3_sat_pp r1.x, r12, r5
    pow r2.w, r1.x, r1.z
    mul_pp r7.xyz, r1.w, c47
    mul_pp r7.xyz, r2.w, r7
    mad_pp r6.xyz, r3.w, r7, r6
    mad_pp r7.xyz, r3, r7.w, -r8
    nrm_pp r8.xyz, r7
    dp3_sat_pp r1.x, r8, r5
    pow r2.w, r1.x, r1.z
    mul_pp r7.xyz, r1.w, c51
    mul_pp r7.xyz, r2.w, r7
    mad_pp r6.xyz, r5.w, r7, r6
    mad_pp r7.xyz, r3, r7.w, -c10
    nrm_pp r8.xyz, r7
    dp3_sat_pp r1.x, r8, r5
    pow r2.w, r1.x, r1.z
    mul_pp r7.xyz, r1.w, c37
    mul_pp r7.xyz, r2.w, r7
    mad_pp r6.xyz, r7, r6.w, r6
    mul_pp r7.xyz, c59.w, c59
    mul_pp r1.xyw, r1.w, r7.xyzz
    mad_pp r0.yzw, r3.xxyz, r7.w, -r0
    mul_pp r3.xyz, r3, r7.w
    nrm_pp r7.xyz, r0.yzww
    dp3_sat_pp r0.y, r7, r5
    pow r2.w, r0.y, r1.z
    mul_pp r0.yzw, r1.xxyw, r2.w
    mad_pp r0.xyz, r0.x, r0.yzww, r6
    mul_pp r0.xyz, r0, c18
    dp4 r0.w, r14, r14
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r14
    mad_pp r1.xy, r1, c2.zwzw, c2.z
    texld_pp r1, r1, s5
    mul r6.xyz, r1, c63.x
    mad_pp r1.xyz, r6, r1.w, r1
    mul_pp r1.xyz, r4.w, r1
    mul r0.w, c64.z, c64.x
    mov r6.xz, c64
    mad r1.w, r6.x, -r6.z, r6.z
    mad_pp r0.w, r6.w, r1.w, r0.w
    mad r1.w, r6.w, c0.z, c0.z
    mul_pp r1.xyz, r0.w, r1
    mul_pp r1.xyz, r1, c17
    mad_pp r0.xyz, r0, r4, r1
    mad_pp r0.xyz, r0, v3.w, r2
    dp3_pp r0.w, r3, r5
    add_sat_pp r1.x, -r0.w, c4.y
    add_pp r0.w, r0.w, r0.w
    mad_pp r2.xyz, r0.w, r5, -r3
    pow_pp r0.w, r1.x, c150.z
    mul r0.w, r0.w, c150.y
    mad_pp r0.w, r0.w, r1.w, c150.x
    mad_pp r1.xyz, r2, c0.z, c0.z
    mul_pp r2.xyz, r2, r2
    mad r3.xyz, r1.y, r11, c79
    mul r3.xyz, r2.y, r3
    mad r1.xyw, r1.x, r13.xyzz, c77.xyzz
    mad r4.xyz, r1.z, r10.xyww, c81
    mad_pp r1.xyz, r2.x, r1.xyww, r3
    mad_pp r1.xyz, r2.z, r4, r1
    mad_pp r9.xyz, r1, r0.w, r0
    mul_pp r0, r9, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 342 instruction slots used (9 texture, 333 arithmetic)
