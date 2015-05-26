//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_VerticalLightDirection;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgTexcoordIndex[4];
//   float4 mrgTexcoordOffset[2];
//
//
// Registers:
//
//   Name                                Reg   Size
//   ----------------------------------- ----- ----
//   mrgHasBone                          b0       1
//   g_MtxProjection                     c0       4
//   g_MtxView                           c4       4
//   g_MtxWorld                          c8       4
//   g_MtxPalette                        c28     75
//   g_EyePosition                       c178     1
//   mrgGlobalLight_Direction            c183     1
//   mrgTexcoordIndex                    c187     1
//   mrgTexcoordOffset                   c191     2
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_VerticalLightDirection            c211     1
//

    vs_3_0
    def c225, 3, 1.44269502, 1.5, 0
    def c226, 0.699999988, 0.300000012, 0, 0
    def c221, 1, 0, 0, 0
    def c222, 0, 1, 0, 0
    def c223, 0, 0, 1, 0
    def c224, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_normal v5
    dcl_blendweight v6
    dcl_blendindices v7
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    if b0
      add r0.x, v6.y, v6.x
      add r0.x, r0.x, v6.z
      add r0.x, -r0.x, c221.x
      mul r1, v7, c225.x
      mova a0, r1.yxzw
      mul r2, v6.y, c30[a0.x]
      mad r2, c30[a0.y], v6.x, r2
      mad r2, c30[a0.z], v6.z, r2
      mad r1, c30[a0.w], r0.x, r2
      dp4 r0.y, r1, v0
      dp3 r0.z, r1, v5
      mul r1, v6.y, c28[a0.x]
      mad r1, c28[a0.y], v6.x, r1
      mad r1, c28[a0.z], v6.z, r1
      mad r1, c28[a0.w], r0.x, r1
      dp4 r0.w, r1, v0
      dp3 r1.x, r1, v5
      mul r2, v6.y, c29[a0.x]
      mad r2, c29[a0.y], v6.x, r2
      mad r2, c29[a0.z], v6.z, r2
      mad r2, c29[a0.w], r0.x, r2
      dp4 r0.x, r2, v0
      dp3 r1.y, r2, v5
      mov r1.z, v0.w
    else
      mov r0.xyw, v0.yzzx
      mov r1.z, v0.w
      mov r1.xy, v5
      mov r0.z, v5.z
    endif
    mul r2, r0.x, c9
    mad r2, r0.w, c8, r2
    mad r2, r0.y, c10, r2
    mad r2, r1.z, c11, r2
    mul r3, r2.y, c5
    mad r3, r2.x, c4, r3
    mad r3, r2.z, c6, r3
    mad r3, r2.w, c7, r3
    mul r4, r3.y, c1
    mad r4, r3.x, c0, r4
    mad r4, r3.z, c2, r4
    mad o0, r3.w, c3, r4
    frc r0.x, c187.x
    slt r0.y, -r0.x, r0.x
    add r0.x, -r0.x, c187.x
    slt r0.w, c187.x, -c187.x
    mad r0.x, r0.w, r0.y, r0.x
    add r0.yw, c191.xxzy, v1.xxzy
    add r1.zw, c191, v2.xyxy
    add r3.xy, c192, v3
    mova a0.x, r0.x
    mul r0.xy, r0.ywzw, c221[a0.x].x
    mad r0.xy, c221[a0.x].y, r1.zwzw, r0
    mad r0.xy, c221[a0.x].z, r3, r0
    add r1.zw, c192, v4.xyxy
    mad o1.xy, c221[a0.x].w, r1.zwzw, r0
    mov o2.xyz, r2
    mov o2.w, -r3.z
    mul r0.xyw, r1.y, c9.xyzz
    mad r0.xyw, r1.x, c8.xyzz, r0
    mad r0.xyz, r0.z, c10, r0.xyww
    nrm r1.xyz, r0
    mov o3.xyz, r1
    add r0.xyz, -r2, c178
    nrm r2.xyz, r0
    dp3_sat r0.x, r1, r2
    add r0.x, -r0.x, c221.x
    mul r0.y, r0.x, r0.x
    mul r0.y, r0.y, r0.y
    mul r0.x, r0.x, r0.y
    mad o3.w, r0.x, c226.x, c226.y
    dp3 r0.x, -c183, r2
    mad r0.y, c198.z, r0.x, c198.y
    pow r2.x, r0_abs.y, c225.z
    rcp r0.y, r2.x
    mul r0.y, r0.y, c198.x
    mul r0.y, r0.y, c197.w
    mad r0.x, r0.x, r0.x, c221.x
    mad r0.x, c197.z, r0.x, r0.y
    add r0.y, c197.y, c197.x
    rcp r0.z, r0.y
    mul r0.x, r0.z, r0.x
    add r0.z, -r3.z, -c199.y
    mul_sat r0.z, r0.z, c199.x
    mul r0.z, r0.z, c199.z
    mul r0.y, r0.z, -r0.y
    mul r0.y, r0.y, c225.y
    exp r0.y, r0.y
    mov o4.x, r0.y
    add r0.y, -r0.y, c221.x
    mul r0.x, r0.y, r0.x
    mul o4.y, r0.x, c199.w
    mov r1.w, c221.x
    dp4_sat r0.x, r1, c211
    add o4.z, -r0.x, c221.x
    mov o1.zw, c221.w
    mov o4.w, c221.w

// approximately 106 instruction slots used