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
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   sampler2D sampDif;
//   sampler2D sampFO;
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
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   sampFO                                s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, -2, 3, 500, 5
    def c3, 0.5, -0.5, 4, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v3.w
    mul r0.xy, r0.x, v3
    mad r0.xy, r0, c0.x, c0.y
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v3.z, c0.w
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c0.w, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v4.z, c0.z, r0.x
    lrp_pp r0.x, r1.x, c0.z, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c1
    mad_pp r1.xyz, r1, r1, -r0.y
    mad_sat_pp r0.yzw, r1.xxyz, c71.w, r0.y
    mul_pp r0.yzw, r0, c70.xxyz
    mul r1.x, r0.x, r1.w
    mul_pp r1.yzw, r0, c17.xxyz
    mul r1.yzw, r1, c70.w
    mad r0.yzw, r0, c17.xxyz, -r1
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r1.yzw, -c22.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    mul_pp r1.yzw, r1, r2.x
    rcp r2.x, r2.x
    add r2.x, r2.x, -c60.z
    dp3_pp r2.y, r1.yzww, c23
    add_pp r2.y, r2.y, -c61.z
    mul_sat_pp r0.w, r0.w, r2.y
    mad_pp r2.y, r0.w, c2.x, c2.y
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.y
    pow_sat_pp r2.y, r0.w, c61.w
    mov r2.z, c0.z
    add r0.w, r2.z, -c61.x
    cmp_pp r0.w, r0.w, c0.z, r2.y
    add r2.y, -c60.z, c60.w
    rcp r2.y, r2.y
    mul_sat r2.x, r2.y, r2.x
    add_pp r2.x, -r2.x, c0.z
    cmp_pp r2.x, -c61.x, r2.z, r2.x
    mul_pp r0.w, r0.w, r2.x
    nrm_pp r2.xyz, v6
    texld_pp r3, v0, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r3.xy, r3, c0.x, c0.y
    mul_pp r2.xyz, r2, r3.y
    nrm_pp r4.xyz, v5
    mad_pp r2.xyz, r3.x, r4, r2
    dp2add_pp r2.w, r3, -r3, c0.z
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    nrm_pp r3.xyz, v2
    mad_pp r2.xyz, r2.w, r3, r2
    dp3_pp r2.w, r2, -c10
    mul r4.xyz, r2.w, c36
    mul_pp r4.xyz, r1.x, r4
    cmp_pp r4.xyz, r2.w, r4, c0.w
    dp3_pp r2.w, r2, -r1.yzww
    mul_pp r5.xyz, c58.w, c58
    mul_pp r5.xyz, r2.w, r5
    cmp_pp r5.xyz, r2.w, r5, c0.w
    mad_pp r4.xyz, r0.w, r5, r4
    add_pp r0.xyz, r0, r4
    mul_pp r0.xyz, r0, c16
    add_pp r4.xyz, c22, -v1
    dp3_pp r2.w, r4, r4
    rsq_pp r2.w, r2.w
    mad_pp r1.yzw, r4.xxyz, r2.w, -r1
    mad_pp r4.xyz, r4, r2.w, -c10
    nrm_pp r5.xyz, r4
    dp3_sat_pp r2.w, r5, r2
    nrm_pp r4.xyz, r1.yzww
    dp3_sat_pp r1.y, r4, r2
    texld_pp r4, v0, s2
    mul_pp r1.zw, r4.x, c20.xyyz
    mul_pp r1.zw, r1, c2
    max_pp r2.x, r1.z, c0.z
    min r1.z, r2.x, c1.w
    pow r2.x, r1.y, r1.z
    pow r3.w, r2.w, r1.z
    mul_pp r2.yzw, c59.w, c59.xxyz
    mul_pp r2.yzw, r1.w, r2
    mul_pp r1.yzw, r1.w, c37.xxyz
    mul_pp r1.yzw, r3.w, r1
    mul_pp r2.xyz, r2.x, r2.yzww
    mul_pp r2.xyz, r0.w, r2
    mad_pp r1.yzw, r1, r1.x, r2.xxyz
    mul_pp r1.yzw, r1, c18.xxyz
    mul_pp r1.yzw, r1, v2.w
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1.yzww
    mul_pp r0.w, r2.w, c16.w
    mul_pp r2.w, r0.w, c21.x
    mul_pp r1.yz, r3.y, c91.xxyw
    mad_pp r1.yz, r3.x, c90.xxyw, r1
    mad_pp r1.yz, r3.z, c92.xxyw, r1
    mad_pp r1.yz, r1, c3.xxyw, c3.x
    texld_pp r3, r1.yzzw, s5
    mul r0.w, c64.w, c64.y
    mov r1.yw, c64
    mad r1.y, r1.y, -r1.w, r1.w
    mad_pp r0.w, r1.x, r1.y, r0.w
    mad_pp r2.xyz, r3, r0.w, r0
    mul_pp r0, r2, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 133 instruction slots used (6 texture, 127 arithmetic)
