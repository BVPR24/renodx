#include "./shared.h"
// ---- Created with 3Dmigoto v1.3.2 on Sat Jun 14 22:55:56 2025
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1401];
}




// 3Dmigoto declarations
#define cmp -

void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
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
    r0.yz = v1.xy * cb0[1400].zw + float2(0.5,0.5);
    r2.xy = floor(r0.yz);
    r0.yz = frac(r0.yz);
    r3.xyzw = -r0.yzyz * float4(0.5,0.5,0.166666672,0.166666672) + float4(0.5,0.5,0.5,0.5);
    r3.xyzw = r0.yzyz * r3.xyzw + float4(0.5,0.5,-0.5,-0.5);
    r2.zw = r0.yz * float2(0.5,0.5) + float2(-1,-1);
    r4.xy = r0.yz * r0.yz;
    r2.zw = r4.xy * r2.zw + float2(0.666666687,0.666666687);
    r3.xyzw = r0.yzyz * r3.xyzw + float4(0.166666672,0.166666672,0.166666672,0.166666672);
    r0.yz = float2(1,1) + -r2.zw;
    r0.yz = r0.yz + -r3.xy;
    r0.yz = r0.yz + -r3.zw;
    r3.zw = r3.zw + r2.zw;
    r3.xy = r3.xy + r0.yz;
    r4.xy = float2(1,1) / r3.zw;
    r4.zw = r2.zw * r4.xy + float2(-1,-1);
    r2.zw = float2(1,1) / r3.xy;
    r4.xy = r0.yz * r2.zw + float2(1,1);
    r5.xyzw = r4.zwxw + r2.xyxy;
    r5.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + r5.xyzw;
    r5.xyzw = cb0[1400].xyxy * r5.xyzw;
    r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
    r6.xyzw = t1.SampleLevel(s0_s, r5.xy, 0).xyzw;
    r5.xyzw = t1.SampleLevel(s0_s, r5.zw, 0).xyzw;
    r0.yzw = r5.xyz * r3.xxx;
    r0.yzw = r3.zzz * r6.xyz + r0.yzw;
    r2.xyzw = r4.zyxy + r2.xyxy;
    r2.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + r2.xyzw;
    r2.xyzw = cb0[1400].xyxy * r2.xyzw;
    r2.xyzw = min(float4(1,1,1,1), r2.xyzw);
    r4.xyzw = t1.SampleLevel(s0_s, r2.xy, 0).xyzw;
    r2.xyzw = t1.SampleLevel(s0_s, r2.zw, 0).xyzw;
    r2.xyz = r3.xxx * r2.xyz;
    r2.xyz = r3.zzz * r4.xyz + r2.xyz;
    r2.xyz = r3.yyy * r2.xyz;
    r0.yzw = r3.www * r0.yzw + r2.xyz;
    r0.x = 6.28318548 * r0.x;
    r0.x = sqrt(r0.x);
    r1.w = min(1, r0.x);
    r0.yzw = r1.www * r0.yzw;
    r0.x = 1 + -r0.x;
    r0.x = max(0, r0.x);
  } else {
    r0.xyzw = float4(1,0,0,0);
  }
  o0.xyz = r1.xyz * r0.xxx + r0.yzw;
  o0.w = 1;
  return;
}