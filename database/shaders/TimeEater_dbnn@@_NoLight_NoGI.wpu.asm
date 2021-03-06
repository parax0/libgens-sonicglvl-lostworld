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
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampBlend;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
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
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   g_SonicSkinFalloffParam               c150     1
//   g_ChaosWaveParamEx                    c151     1
//   sampDif                               s0       1
//   sampNrm                               s2       1
//   sampNrm2                              s3       1
//   sampBlend                             s6       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 500, 5, -2, 3
    def c1, 2, -1, 0.5, 1024
    def c2, 0.5, -0.5, 4, 0
    def c3, 0, 1, 2, 3
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
    dcl_2d s2
    dcl_2d s3
    dcl_2d s6
    dcl_2d s7
    dcl_2d s11
    dcl_2d s13
    frc r0.xy, c26.xwzw
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c26.xwzw
    mov r1.xy, c3
    cmp r0.zw, c26.xyxw, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.y, -c3
    add r0, r0.x, -c3
    cmp r1.zw, -r2_abs.x, v0.xyxy, c3.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    texld_pp r2, r1.zwzw, s2
    mul_pp r2.x, r2.w, r2.x
    mad_pp r1.zw, r2.xyxy, c1.x, c1.y
    dp2add_pp r2.x, r1.zwzw, -r1.zwzw, c3.y
    rsq_pp r2.x, r2.x
    rcp_pp r2.x, r2.x
    nrm_pp r3.xyz, v8
    mul_pp r2.yzw, r1.w, r3.xxyz
    nrm_pp r4.xyz, v7
    mad_pp r2.yzw, r1.z, r4.xxyz, r2
    nrm_pp r5.xyz, v3
    mad_pp r2.xyz, r2.x, r5, r2.yzww
    frc r1.zw, c27.xyxw
    cmp r6.xy, -r1.zwzw, c3.x, c3.y
    add r1.zw, -r1, c27.xyxw
    cmp r6.xy, c27.xwzw, r1.x, r6
    add r1.xz, r1.zyww, r6.xyyw
    add r6, r1.x, -c3
    add r7, r1.z, -c3
    cmp r1.xz, -r6_abs.x, v0.xyyw, c3.x
    cmp r1.xz, -r6_abs.y, v0.zyww, r1
    cmp r1.xz, -r6_abs.z, v1.xyyw, r1
    cmp r1.xz, -r6_abs.w, v1.zyww, r1
    texld_pp r6, r1.xzzw, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r1.xz, r6.xyyw, c1.x, c1.y
    mul_pp r3.xyz, r3, r1.z
    mad_pp r3.xyz, r1.x, r4, r3
    dp2add_pp r1.x, r1.xzzw, -r1.xzzw, c3.y
    rsq_pp r1.x, r1.x
    rcp_pp r1.x, r1.x
    mad_pp r1.xzw, r1.x, r5.xyyz, r3.xyyz
    add_pp r1.xzw, r1, r2.xyyz
    nrm_pp r2.xyz, r1.xzww
    mul_pp r1.xz, r2.y, c91.xyyw
    mad_pp r1.xz, r2.x, c90.xyyw, r1
    mad_pp r1.xz, r2.z, c92.xyyw, r1
    mul r1.w, c24.w, vPos.y
    mad_pp r3.y, r1.w, -c1.x, -c1.y
    dp2add_pp r3.x, vPos.x, c24.z, -r1.y
    mad_pp r1.xz, r1, c151.y, r3.xyyw
    mad r1.xz, r1, c2.xyyw, c2.x
    texld_pp r3, r1.xzzw, s11
    mul_pp r1.xzw, r2.xyyz, r2.xyyz
    mad_pp r4.xyz, r2, c1.z, c1.z
    mov r5.xyz, c79
    add r5.xyz, -r5, c80
    mad r6.xyz, r4.y, r5, c79
    mul r6.xyz, r1.z, r6
    mov r8.xyz, c77
    add r8.xyz, -r8, c78
    mad r4.xyw, r4.x, r8.xyzz, c77.xyzz
    mad_pp r4.xyw, r1.x, r4, r6.xyzz
    mov r6.xyz, c81
    add r6.xyz, -r6, c82
    mad r9.xyz, r4.z, r6, c81
    mad_pp r1.xzw, r1.w, r9.xyyz, r4.xyyw
    mul_pp r4.xyz, r1.xzww, c17
    mul r4.xyz, r4, c70.w
    mad r1.xzw, r1, c17.xyyz, -r4.xyyz
    rcp r2.w, v4.w
    mul r9.xy, r2.w, v4
    mad r9.xy, r9, c1.x, c1.y
    abs_sat r9.xy, r9
    add_sat r9.xy, r9, -c65.x
    mul r9.xy, r9, c65.y
    max r2.w, r9.x, r9.y
    max r3.w, v5.z, c3.x
    add r4.w, r3.w, -v5.w
    cmp r9.z, r4.w, c3.x, r3.w
    mov r9.xyw, v5
    texldp_pp r9, r9, s7
    lrp_pp r3.w, v6.z, c3.y, r9.x
    lrp_pp r4.w, r2.w, c3.y, r3.w
    mad_pp r1.xzw, r4.w, r1, r4.xyyz
    add_pp r1.xzw, r1, c3.y
    mul_pp r1.xzw, r1, c16.xyyz
    cmp r4.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r4
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s0
    mad_pp r0.xyz, r1.xzww, r0, -r3
    mul_pp r0.w, r0.w, c16.w
    mul_pp r0.w, r0.w, v9.w
    mul_pp r4.w, r0.w, c21.x
    cmp r1.xz, -r7_abs.x, v0.xyyw, c3.x
    cmp r1.xz, -r7_abs.y, v0.zyww, r1
    cmp r1.xz, -r7_abs.z, v1.xyyw, r1
    cmp r1.xz, -r7_abs.w, v1.zyww, r1
    texld_pp r7, r1.xzzw, s6
    mad_pp r0.xyz, r7.x, r0, r3
    max r0.w, v4.z, c3.x
    add r1.x, r0.w, -v4.w
    cmp r3.z, r1.x, c3.x, r0.w
    mov r3.xyw, v4
    texldp_pp r3, r3, s13
    min_pp r0.w, r9.x, r3.x
    lrp_pp r1.x, v6.z, c3.y, r0.w
    lrp_pp r0.w, r2.w, c3.y, r1.x
    mul_pp r0.w, r0.w, c77.w
    add_pp r1.x, -c61.z, c61.y
    rcp_pp r1.x, r1.x
    add r3.xyz, -c22, v2
    dp3 r1.z, r3, r3
    rsq r1.z, r1.z
    mul_pp r3.xyz, r1.z, r3
    rcp r1.z, r1.z
    add r1.z, r1.z, -c60.z
    dp3_pp r1.w, r3, c23
    add_pp r1.w, r1.w, -c61.z
    mul_sat_pp r1.x, r1.x, r1.w
    mad_pp r1.w, r1.x, c0.z, c0.w
    mul_pp r1.x, r1.x, r1.x
    mul_pp r1.x, r1.x, r1.w
    pow_sat_pp r2.w, r1.x, c61.w
    add r1.x, r1.y, -c61.x
    cmp_pp r1.x, r1.x, c3.y, r2.w
    add r1.w, -c60.z, c60.w
    rcp r1.w, r1.w
    mul_sat r1.z, r1.w, r1.z
    add_pp r1.z, -r1.z, c3.y
    cmp_pp r1.y, -c61.x, r1.y, r1.z
    mul_pp r1.x, r1.x, r1.y
    add_pp r1.yzw, c22.xxyz, -v2.xxyz
    dp3_pp r2.w, r1.yzww, r1.yzww
    rsq_pp r2.w, r2.w
    mad_pp r3.xyz, r1.yzww, r2.w, -r3
    nrm_pp r7.xyz, r3
    dp3_sat_pp r3.x, r7, r2
    mov_pp r7.xy, c0
    mul_pp r3.yz, r7.xxyw, c20
    max_pp r5.w, r3.y, c3.y
    min r3.y, r5.w, c1.w
    pow r5.w, r3.x, r3.y
    mul_pp r7.xyz, c59.w, c59
    mul_pp r7.xyz, r3.z, r7
    mul_pp r3.xzw, r3.z, c37.xyyz
    mul_pp r7.xyz, r5.w, r7
    mul_pp r7.xyz, r1.x, r7
    mad_pp r9.xyz, r1.yzww, r2.w, -c10
    mul_pp r1.xyz, r1.yzww, r2.w
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.w, r10, r2
    pow r2.w, r1.w, r3.y
    mul_pp r3.xyz, r2.w, r3.xzww
    mad_pp r3.xyz, r3, r0.w, r7
    mad r0.w, r0.w, c1.z, c1.z
    mul_pp r3.xyz, r3, c18
    mad_pp r0.xyz, r3, v3.w, r0
    dp3_pp r1.w, r1, r2
    add_sat_pp r2.w, -r1.w, c3.y
    add_pp r1.w, r1.w, r1.w
    mad_pp r1.xyz, r1.w, r2, -r1
    pow_pp r1.w, r2.w, c150.z
    mul r1.w, r1.w, c150.y
    mad_pp r0.w, r1.w, r0.w, c150.x
    mad_pp r2.xyz, r1, c1.z, c1.z
    mul_pp r1.xyz, r1, r1
    mad r3.xyz, r2.y, r5, c79
    mul r3.xyz, r1.y, r3
    mad r2.xyw, r2.x, r8.xyzz, c77.xyzz
    mad r5.xyz, r2.z, r6, c81
    mad_pp r1.xyw, r1.x, r2, r3.xyzz
    mad_pp r1.xyz, r1.z, r5, r1.xyww
    mad_pp r4.xyz, r1, r0.w, r0
    mul_pp r0, r4, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 206 instruction slots used (7 texture, 199 arithmetic)
