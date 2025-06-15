#include "./shared.h"
// ---- Created with 3Dmigoto v1.3.2 on Sat Jun 14 22:20:45 2025
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1400];
}




// 3Dmigoto declarations
#define cmp -

void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[1399].zw * v1.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r1.xyzw = t0.Load(r0.xyw).xyzw;
  r0.xyzw = t2.Load(r0.xyz).xyzw;
  r0.y = cmp(0 < r0.x);
  r0.x *= (CUSTOM_DOF / 2);
  if (r0.y != 0) {
    r2.xyzw = t1.Sample(s0_s, v1.xy).xyzw;
    r0.x = 6.28318548 * r0.x;
    r0.x = sqrt(r0.x);
    r0.y = min(1, r0.x);
    r0.yzw = r2.xyz * r0.yyy;
    r0.x = 1 + -r0.x;
    r0.x = max(0, r0.x);
  } else {
    r0.xyzw = float4(1,0,0,0);
  }
  o0.xyz = r1.xyz * r0.xxx + r0.yzw;
  o0.w = 1;
  return;
}