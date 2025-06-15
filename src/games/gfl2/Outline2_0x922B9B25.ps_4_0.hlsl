#include "./shared.h"
// ---- Created with 3Dmigoto v1.3.2 on Sat Jun 14 22:37:04 2025
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD7,
  float w4 : TEXCOORD8,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  if (CUSTOM_OUTLINE == 0) {
    discard;
  } else {
  r0.xyz = cb1[10].xyz * v2.xyz;
  r0.xyz = cb0[8].xyz * r0.xyz;
  r1.xy = v1.xy * cb1[0].xy + cb1[0].zw;
  r1.xyzw = t0.Sample(s0_s, r1.xy).xyzw;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
  r0.x = dot(abs(v3.xyz), float3(1,1,1));
  r0.x = 1 / r0.x;
  r0.yzw = v3.zxy * r0.xxx;
  r0.y = saturate(-r0.y);
  r0.zw = cmp(r0.zw >= float2(0,0));
  r0.yz = r0.zw ? r0.yy : -r0.yy;
  r0.xy = v3.xy * r0.xx + r0.yz;
  o1.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
  o1.zw = float2(0.499000013,0.5);
  }
  return;
}