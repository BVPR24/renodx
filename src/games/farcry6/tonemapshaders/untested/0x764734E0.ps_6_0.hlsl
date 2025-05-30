#include "../../common.hlsli"
struct SExposureData {
  float SExposureData_000;
  float SExposureData_004;
  float SExposureData_008;
  float SExposureData_012;
  float SExposureData_016;
  float SExposureData_020;
};

StructuredBuffer<SExposureData> t0 : register(t0);

Texture2D<float4> t1 : register(t1);

Texture2D<float> t2 : register(t2);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t4 : register(t4);

Texture3D<float4> t5 : register(t5);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t8 : register(t8);

Texture3D<float2> t9 : register(t9);

cbuffer cb0 : register(b0) {
  float cb0_028x : packoffset(c028.x);
  float cb0_028z : packoffset(c028.z);
};

cbuffer cb1 : register(b1) {
  float cb1_018y : packoffset(c018.y);
  float cb1_018z : packoffset(c018.z);
  uint cb1_018w : packoffset(c018.w);
};

cbuffer cb2 : register(b2) {
  float cb2_000x : packoffset(c000.x);
  float cb2_000y : packoffset(c000.y);
  float cb2_000z : packoffset(c000.z);
  float cb2_001x : packoffset(c001.x);
  float cb2_001y : packoffset(c001.y);
  float cb2_001z : packoffset(c001.z);
  float cb2_002x : packoffset(c002.x);
  float cb2_002y : packoffset(c002.y);
  float cb2_002z : packoffset(c002.z);
  float cb2_002w : packoffset(c002.w);
  float cb2_003x : packoffset(c003.x);
  float cb2_003y : packoffset(c003.y);
  float cb2_003z : packoffset(c003.z);
  float cb2_003w : packoffset(c003.w);
  float cb2_004x : packoffset(c004.x);
  float cb2_004y : packoffset(c004.y);
  float cb2_004z : packoffset(c004.z);
  float cb2_004w : packoffset(c004.w);
  float cb2_009x : packoffset(c009.x);
  float cb2_009y : packoffset(c009.y);
  float cb2_009z : packoffset(c009.z);
  float cb2_010x : packoffset(c010.x);
  float cb2_010y : packoffset(c010.y);
  float cb2_010z : packoffset(c010.z);
  float cb2_011x : packoffset(c011.x);
  float cb2_011y : packoffset(c011.y);
  float cb2_011z : packoffset(c011.z);
  float cb2_011w : packoffset(c011.w);
  float cb2_012x : packoffset(c012.x);
  float cb2_012y : packoffset(c012.y);
  float cb2_012z : packoffset(c012.z);
  float cb2_012w : packoffset(c012.w);
  float cb2_013x : packoffset(c013.x);
  float cb2_013y : packoffset(c013.y);
  float cb2_013z : packoffset(c013.z);
  float cb2_013w : packoffset(c013.w);
  float cb2_014x : packoffset(c014.x);
  float cb2_015x : packoffset(c015.x);
  float cb2_015y : packoffset(c015.y);
  float cb2_015z : packoffset(c015.z);
  float cb2_015w : packoffset(c015.w);
  float cb2_016x : packoffset(c016.x);
  float cb2_016y : packoffset(c016.y);
  float cb2_016z : packoffset(c016.z);
  float cb2_016w : packoffset(c016.w);
  float cb2_017x : packoffset(c017.x);
  float cb2_017y : packoffset(c017.y);
  float cb2_017z : packoffset(c017.z);
  float cb2_017w : packoffset(c017.w);
  float cb2_018x : packoffset(c018.x);
  float cb2_018y : packoffset(c018.y);
  float cb2_020x : packoffset(c020.x);
  float cb2_020y : packoffset(c020.y);
  float cb2_020z : packoffset(c020.z);
  float cb2_020w : packoffset(c020.w);
  float cb2_021x : packoffset(c021.x);
  float cb2_021y : packoffset(c021.y);
  float cb2_021z : packoffset(c021.z);
  float cb2_021w : packoffset(c021.w);
  float cb2_024x : packoffset(c024.x);
  float cb2_024y : packoffset(c024.y);
  float cb2_024z : packoffset(c024.z);
  float cb2_024w : packoffset(c024.w);
  float cb2_025x : packoffset(c025.x);
  float cb2_025y : packoffset(c025.y);
  float cb2_025z : packoffset(c025.z);
  float cb2_026x : packoffset(c026.x);
  float cb2_026y : packoffset(c026.y);
  float cb2_026z : packoffset(c026.z);
  float cb2_026w : packoffset(c026.w);
  float cb2_027x : packoffset(c027.x);
  float cb2_027y : packoffset(c027.y);
  float cb2_027z : packoffset(c027.z);
  float cb2_027w : packoffset(c027.w);
  uint cb2_028x : packoffset(c028.x);
  uint cb2_069y : packoffset(c069.y);
};

SamplerState s0_space2 : register(s0, space2);

SamplerState s2_space2 : register(s2, space2);

SamplerState s4_space2 : register(s4, space2);

struct OutputSignature {
  float4 SV_Target : SV_Target;
  float4 SV_Target_1 : SV_Target1;
};

OutputSignature main(
  linear float2 TEXCOORD0_centroid : TEXCOORD0_centroid,
  noperspective float4 SV_Position : SV_Position,
  nointerpolation uint SV_IsFrontFace : SV_IsFrontFace
) {
  float4 SV_Target;
  float4 SV_Target_1;
  float _22 = t2.SampleLevel(s4_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float4 _24 = t7.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _28 = _24.x * 6.283199787139893f;
  float _29 = cos(_28);
  float _30 = sin(_28);
  float _31 = _29 * _24.z;
  float _32 = _30 * _24.z;
  float _33 = _31 + TEXCOORD0_centroid.x;
  float _34 = _32 + TEXCOORD0_centroid.y;
  float _35 = _33 * 10.0f;
  float _36 = 10.0f - _35;
  float _37 = min(_35, _36);
  float _38 = saturate(_37);
  float _39 = _38 * _31;
  float _40 = _34 * 10.0f;
  float _41 = 10.0f - _40;
  float _42 = min(_40, _41);
  float _43 = saturate(_42);
  float _44 = _43 * _32;
  float _45 = _39 + TEXCOORD0_centroid.x;
  float _46 = _44 + TEXCOORD0_centroid.y;
  float4 _47 = t7.SampleLevel(s2_space2, float2(_45, _46), 0.0f);
  float _49 = _47.w * _39;
  float _50 = _47.w * _44;
  float _51 = 1.0f - _24.y;
  float _52 = saturate(_51);
  float _53 = _49 * _52;
  float _54 = _50 * _52;
  float _58 = cb2_015x * TEXCOORD0_centroid.x;
  float _59 = cb2_015y * TEXCOORD0_centroid.y;
  float _62 = _58 + cb2_015z;
  float _63 = _59 + cb2_015w;
  float4 _64 = t8.SampleLevel(s0_space2, float2(_62, _63), 0.0f);
  float _68 = saturate(_64.x);
  float _69 = saturate(_64.z);
  float _72 = cb2_026x * _69;
  float _73 = _68 * 6.283199787139893f;
  float _74 = cos(_73);
  float _75 = sin(_73);
  float _76 = _72 * _74;
  float _77 = _75 * _72;
  float _78 = 1.0f - _64.y;
  float _79 = saturate(_78);
  float _80 = _76 * _79;
  float _81 = _77 * _79;
  float _82 = _53 + TEXCOORD0_centroid.x;
  float _83 = _82 + _80;
  float _84 = _54 + TEXCOORD0_centroid.y;
  float _85 = _84 + _81;
  float4 _86 = t7.SampleLevel(s2_space2, float2(_83, _85), 0.0f);
  bool _88 = (_86.y > 0.0f);
  float _89 = select(_88, TEXCOORD0_centroid.x, _83);
  float _90 = select(_88, TEXCOORD0_centroid.y, _85);
  float4 _91 = t1.SampleLevel(s4_space2, float2(_89, _90), 0.0f);
  float _95 = max(_91.x, 0.0f);
  float _96 = max(_91.y, 0.0f);
  float _97 = max(_91.z, 0.0f);
  float _98 = min(_95, 65000.0f);
  float _99 = min(_96, 65000.0f);
  float _100 = min(_97, 65000.0f);
  float4 _101 = t3.SampleLevel(s2_space2, float2(_89, _90), 0.0f);
  float _106 = max(_101.x, 0.0f);
  float _107 = max(_101.y, 0.0f);
  float _108 = max(_101.z, 0.0f);
  float _109 = max(_101.w, 0.0f);
  float _110 = min(_106, 5000.0f);
  float _111 = min(_107, 5000.0f);
  float _112 = min(_108, 5000.0f);
  float _113 = min(_109, 5000.0f);
  float _116 = _22.x * cb0_028z;
  float _117 = _116 + cb0_028x;
  float _118 = cb2_027w / _117;
  float _119 = 1.0f - _118;
  float _120 = abs(_119);
  float _122 = cb2_027y * _120;
  float _124 = _122 - cb2_027z;
  float _125 = saturate(_124);
  float _126 = max(_125, _113);
  float _127 = saturate(_126);
  float _131 = cb2_013x * _89;
  float _132 = cb2_013y * _90;
  float _135 = _131 + cb2_013z;
  float _136 = _132 + cb2_013w;
  float _139 = dot(float2(_135, _136), float2(_135, _136));
  float _140 = abs(_139);
  float _141 = log2(_140);
  float _142 = _141 * cb2_014x;
  float _143 = exp2(_142);
  float _144 = saturate(_143);
  float _148 = cb2_011x * _89;
  float _149 = cb2_011y * _90;
  float _152 = _148 + cb2_011z;
  float _153 = _149 + cb2_011w;
  float _154 = _152 * _144;
  float _155 = _153 * _144;
  float _156 = _154 + _89;
  float _157 = _155 + _90;
  float _161 = cb2_012x * _89;
  float _162 = cb2_012y * _90;
  float _165 = _161 + cb2_012z;
  float _166 = _162 + cb2_012w;
  float _167 = _165 * _144;
  float _168 = _166 * _144;
  float _169 = _167 + _89;
  float _170 = _168 + _90;
  float4 _171 = t1.SampleLevel(s2_space2, float2(_156, _157), 0.0f);
  float _175 = max(_171.x, 0.0f);
  float _176 = max(_171.y, 0.0f);
  float _177 = max(_171.z, 0.0f);
  float _178 = min(_175, 65000.0f);
  float _179 = min(_176, 65000.0f);
  float _180 = min(_177, 65000.0f);
  float4 _181 = t1.SampleLevel(s2_space2, float2(_169, _170), 0.0f);
  float _185 = max(_181.x, 0.0f);
  float _186 = max(_181.y, 0.0f);
  float _187 = max(_181.z, 0.0f);
  float _188 = min(_185, 65000.0f);
  float _189 = min(_186, 65000.0f);
  float _190 = min(_187, 65000.0f);
  float4 _191 = t3.SampleLevel(s2_space2, float2(_156, _157), 0.0f);
  float _195 = max(_191.x, 0.0f);
  float _196 = max(_191.y, 0.0f);
  float _197 = max(_191.z, 0.0f);
  float _198 = min(_195, 5000.0f);
  float _199 = min(_196, 5000.0f);
  float _200 = min(_197, 5000.0f);
  float4 _201 = t3.SampleLevel(s2_space2, float2(_169, _170), 0.0f);
  float _205 = max(_201.x, 0.0f);
  float _206 = max(_201.y, 0.0f);
  float _207 = max(_201.z, 0.0f);
  float _208 = min(_205, 5000.0f);
  float _209 = min(_206, 5000.0f);
  float _210 = min(_207, 5000.0f);
  float _215 = 1.0f - cb2_009x;
  float _216 = 1.0f - cb2_009y;
  float _217 = 1.0f - cb2_009z;
  float _222 = _215 - cb2_010x;
  float _223 = _216 - cb2_010y;
  float _224 = _217 - cb2_010z;
  float _225 = saturate(_222);
  float _226 = saturate(_223);
  float _227 = saturate(_224);
  float _228 = _225 * _98;
  float _229 = _226 * _99;
  float _230 = _227 * _100;
  float _231 = cb2_009x * _178;
  float _232 = cb2_009y * _179;
  float _233 = cb2_009z * _180;
  float _234 = _231 + _228;
  float _235 = _232 + _229;
  float _236 = _233 + _230;
  float _237 = cb2_010x * _188;
  float _238 = cb2_010y * _189;
  float _239 = cb2_010z * _190;
  float _240 = _234 + _237;
  float _241 = _235 + _238;
  float _242 = _236 + _239;
  float _243 = _225 * _110;
  float _244 = _226 * _111;
  float _245 = _227 * _112;
  float _246 = cb2_009x * _198;
  float _247 = cb2_009y * _199;
  float _248 = cb2_009z * _200;
  float _249 = cb2_010x * _208;
  float _250 = cb2_010y * _209;
  float _251 = cb2_010z * _210;
  float4 _252 = t4.SampleLevel(s2_space2, float2(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y), 0.0f);
  float _256 = _243 - _240;
  float _257 = _256 + _246;
  float _258 = _257 + _249;
  float _259 = _244 - _241;
  float _260 = _259 + _247;
  float _261 = _260 + _250;
  float _262 = _245 - _242;
  float _263 = _262 + _248;
  float _264 = _263 + _251;
  float _265 = _258 * _127;
  float _266 = _261 * _127;
  float _267 = _264 * _127;
  float _268 = _265 + _240;
  float _269 = _266 + _241;
  float _270 = _267 + _242;
  float _271 = dot(float3(_268, _269, _270), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _275 = t0[0].SExposureData_020;
  float _277 = t0[0].SExposureData_004;
  float _279 = cb2_018x * 0.5f;
  float _280 = _279 * cb2_018y;
  float _281 = _277.x - _280;
  float _282 = cb2_018y * cb2_018x;
  float _283 = 1.0f / _282;
  float _284 = _281 * _283;
  float _285 = _271 / _275.x;
  float _286 = _285 * 5464.01611328125f;
  float _287 = _286 + 9.99999993922529e-09f;
  float _288 = log2(_287);
  float _289 = _288 - _281;
  float _290 = _289 * _283;
  float _291 = saturate(_290);
  float2 _292 = t9.SampleLevel(s2_space2, float3(TEXCOORD0_centroid.x, TEXCOORD0_centroid.y, _291), 0.0f);
  float _295 = max(_292.y, 1.0000000116860974e-07f);
  float _296 = _292.x / _295;
  float _297 = _296 + _284;
  float _298 = _297 / _283;
  float _299 = _298 - _277.x;
  float _300 = -0.0f - _299;
  float _302 = _300 - cb2_027x;
  float _303 = max(0.0f, _302);
  float _305 = cb2_026z * _303;
  float _306 = _299 - cb2_027x;
  float _307 = max(0.0f, _306);
  float _309 = cb2_026w * _307;
  bool _310 = (_299 < 0.0f);
  float _311 = select(_310, _305, _309);
  float _312 = exp2(_311);
  float _313 = _312 * _268;
  float _314 = _312 * _269;
  float _315 = _312 * _270;
  float _320 = cb2_024y * _252.x;
  float _321 = cb2_024z * _252.y;
  float _322 = cb2_024w * _252.z;
  float _323 = _320 + _313;
  float _324 = _321 + _314;
  float _325 = _322 + _315;
  float _330 = _323 * cb2_025x;
  float _331 = _324 * cb2_025y;
  float _332 = _325 * cb2_025z;
  float _333 = dot(float3(_330, _331, _332), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _334 = t0[0].SExposureData_012;
  float _336 = _333 * 5464.01611328125f;
  float _337 = _336 * _334.x;
  float _338 = _337 + 9.99999993922529e-09f;
  float _339 = log2(_338);
  float _340 = _339 + 16.929765701293945f;
  float _341 = _340 * 0.05734497308731079f;
  float _342 = saturate(_341);
  float _343 = _342 * _342;
  float _344 = _342 * 2.0f;
  float _345 = 3.0f - _344;
  float _346 = _343 * _345;
  float _347 = _331 * 0.8450999855995178f;
  float _348 = _332 * 0.14589999616146088f;
  float _349 = _347 + _348;
  float _350 = _349 * 2.4890189170837402f;
  float _351 = _349 * 0.3754962384700775f;
  float _352 = _349 * 2.811495304107666f;
  float _353 = _349 * 5.519708156585693f;
  float _354 = _333 - _350;
  float _355 = _346 * _354;
  float _356 = _355 + _350;
  float _357 = _346 * 0.5f;
  float _358 = _357 + 0.5f;
  float _359 = _358 * _354;
  float _360 = _359 + _350;
  float _361 = _330 - _351;
  float _362 = _331 - _352;
  float _363 = _332 - _353;
  float _364 = _358 * _361;
  float _365 = _358 * _362;
  float _366 = _358 * _363;
  float _367 = _364 + _351;
  float _368 = _365 + _352;
  float _369 = _366 + _353;
  float _370 = 1.0f / _360;
  float _371 = _356 * _370;
  float _372 = _371 * _367;
  float _373 = _371 * _368;
  float _374 = _371 * _369;
  float _378 = cb2_020x * TEXCOORD0_centroid.x;
  float _379 = cb2_020y * TEXCOORD0_centroid.y;
  float _382 = _378 + cb2_020z;
  float _383 = _379 + cb2_020w;
  float _386 = dot(float2(_382, _383), float2(_382, _383));
  float _387 = 1.0f - _386;
  float _388 = saturate(_387);
  float _389 = log2(_388);
  float _390 = _389 * cb2_021w;
  float _391 = exp2(_390);
  float _395 = _372 - cb2_021x;
  float _396 = _373 - cb2_021y;
  float _397 = _374 - cb2_021z;
  float _398 = _395 * _391;
  float _399 = _396 * _391;
  float _400 = _397 * _391;
  float _401 = _398 + cb2_021x;
  float _402 = _399 + cb2_021y;
  float _403 = _400 + cb2_021z;
  float _404 = t0[0].SExposureData_000;
  float _406 = max(_275.x, 0.0010000000474974513f);
  float _407 = 1.0f / _406;
  float _408 = _407 * _404.x;
  bool _411 = ((uint)(cb2_069y) == 0);
  float _417;
  float _418;
  float _419;
  float _473;
  float _474;
  float _475;
  float _565;
  float _566;
  float _567;
  float _612;
  float _613;
  float _614;
  float _615;
  float _662;
  float _663;
  float _664;
  float _689;
  float _690;
  float _691;
  float _792;
  float _793;
  float _794;
  float _819;
  float _831;
  float _859;
  float _871;
  float _883;
  float _884;
  float _885;
  float _912;
  float _913;
  float _914;
  if (!_411) {
    float _413 = _408 * _401;
    float _414 = _408 * _402;
    float _415 = _408 * _403;
    _417 = _413;
    _418 = _414;
    _419 = _415;
  } else {
    _417 = _401;
    _418 = _402;
    _419 = _403;
  }
  float _420 = _417 * 0.6130970120429993f;
  float _421 = mad(0.33952298760414124f, _418, _420);
  float _422 = mad(0.04737899824976921f, _419, _421);
  float _423 = _417 * 0.07019399851560593f;
  float _424 = mad(0.9163540005683899f, _418, _423);
  float _425 = mad(0.013451999984681606f, _419, _424);
  float _426 = _417 * 0.02061600051820278f;
  float _427 = mad(0.10956999659538269f, _418, _426);
  float _428 = mad(0.8698149919509888f, _419, _427);
  float _429 = log2(_422);
  float _430 = log2(_425);
  float _431 = log2(_428);
  float _432 = _429 * 0.04211956635117531f;
  float _433 = _430 * 0.04211956635117531f;
  float _434 = _431 * 0.04211956635117531f;
  float _435 = _432 + 0.6252607107162476f;
  float _436 = _433 + 0.6252607107162476f;
  float _437 = _434 + 0.6252607107162476f;
  float4 _438 = t5.SampleLevel(s2_space2, float3(_435, _436, _437), 0.0f);
  bool _444 = ((int)(uint)(cb1_018w) > (int)-1);
  if (_444 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _448 = cb2_017x * _438.x;
    float _449 = cb2_017x * _438.y;
    float _450 = cb2_017x * _438.z;
    float _452 = _448 + cb2_017y;
    float _453 = _449 + cb2_017y;
    float _454 = _450 + cb2_017y;
    float _455 = exp2(_452);
    float _456 = exp2(_453);
    float _457 = exp2(_454);
    float _458 = _455 + 1.0f;
    float _459 = _456 + 1.0f;
    float _460 = _457 + 1.0f;
    float _461 = 1.0f / _458;
    float _462 = 1.0f / _459;
    float _463 = 1.0f / _460;
    float _465 = cb2_017z * _461;
    float _466 = cb2_017z * _462;
    float _467 = cb2_017z * _463;
    float _469 = _465 + cb2_017w;
    float _470 = _466 + cb2_017w;
    float _471 = _467 + cb2_017w;
    _473 = _469;
    _474 = _470;
    _475 = _471;
  } else {
    _473 = _438.x;
    _474 = _438.y;
    _475 = _438.z;
  }
  float _476 = _473 * 23.0f;
  float _477 = _476 + -14.473931312561035f;
  float _478 = exp2(_477);
  float _479 = _474 * 23.0f;
  float _480 = _479 + -14.473931312561035f;
  float _481 = exp2(_480);
  float _482 = _475 * 23.0f;
  float _483 = _482 + -14.473931312561035f;
  float _484 = exp2(_483);
  float _485 = dot(float3(_478, _481, _484), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  float _490 = dot(float3(_478, _481, _484), float3(_478, _481, _484));
  float _491 = rsqrt(_490);
  float _492 = _491 * _478;
  float _493 = _491 * _481;
  float _494 = _491 * _484;
  float _495 = cb2_001x - _492;
  float _496 = cb2_001y - _493;
  float _497 = cb2_001z - _494;
  float _498 = dot(float3(_495, _496, _497), float3(_495, _496, _497));
  float _501 = cb2_002z * _498;
  float _503 = _501 + cb2_002w;
  float _504 = saturate(_503);
  float _506 = cb2_002x * _504;
  float _507 = _485 - _478;
  float _508 = _485 - _481;
  float _509 = _485 - _484;
  float _510 = _506 * _507;
  float _511 = _506 * _508;
  float _512 = _506 * _509;
  float _513 = _510 + _478;
  float _514 = _511 + _481;
  float _515 = _512 + _484;
  float _517 = cb2_002y * _504;
  float _518 = 0.10000000149011612f - _513;
  float _519 = 0.10000000149011612f - _514;
  float _520 = 0.10000000149011612f - _515;
  float _521 = _518 * _517;
  float _522 = _519 * _517;
  float _523 = _520 * _517;
  float _524 = _521 + _513;
  float _525 = _522 + _514;
  float _526 = _523 + _515;
  float _527 = saturate(_524);
  float _528 = saturate(_525);
  float _529 = saturate(_526);
  float _533 = cb2_004x * TEXCOORD0_centroid.x;
  float _534 = cb2_004y * TEXCOORD0_centroid.y;
  float _537 = _533 + cb2_004z;
  float _538 = _534 + cb2_004w;
  float4 _544 = t6.Sample(s2_space2, float2(_537, _538));
  float _549 = _544.x * cb2_003x;
  float _550 = _544.y * cb2_003y;
  float _551 = _544.z * cb2_003z;
  float _552 = _544.w * cb2_003w;
  float _555 = _552 + cb2_026y;
  float _556 = saturate(_555);
  bool _559 = ((uint)(cb2_069y) == 0);
  if (!_559) {
    float _561 = _549 * _408;
    float _562 = _550 * _408;
    float _563 = _551 * _408;
    _565 = _561;
    _566 = _562;
    _567 = _563;
  } else {
    _565 = _549;
    _566 = _550;
    _567 = _551;
  }
  bool _570 = ((uint)(cb2_028x) == 2);
  bool _571 = ((uint)(cb2_028x) == 3);
  int _572 = (uint)(cb2_028x) & -2;
  bool _573 = (_572 == 2);
  bool _574 = ((uint)(cb2_028x) == 6);
  bool _575 = _573 || _574;
  if (_575) {
    float _577 = _565 * _556;
    float _578 = _566 * _556;
    float _579 = _567 * _556;
    float _580 = _556 * _556;
    _612 = _577;
    _613 = _578;
    _614 = _579;
    _615 = _580;
  } else {
    bool _582 = ((uint)(cb2_028x) == 4);
    if (_582) {
      float _584 = _565 + -1.0f;
      float _585 = _566 + -1.0f;
      float _586 = _567 + -1.0f;
      float _587 = _556 + -1.0f;
      float _588 = _584 * _556;
      float _589 = _585 * _556;
      float _590 = _586 * _556;
      float _591 = _587 * _556;
      float _592 = _588 + 1.0f;
      float _593 = _589 + 1.0f;
      float _594 = _590 + 1.0f;
      float _595 = _591 + 1.0f;
      _612 = _592;
      _613 = _593;
      _614 = _594;
      _615 = _595;
    } else {
      bool _597 = ((uint)(cb2_028x) == 5);
      if (_597) {
        float _599 = _565 + -0.5f;
        float _600 = _566 + -0.5f;
        float _601 = _567 + -0.5f;
        float _602 = _556 + -0.5f;
        float _603 = _599 * _556;
        float _604 = _600 * _556;
        float _605 = _601 * _556;
        float _606 = _602 * _556;
        float _607 = _603 + 0.5f;
        float _608 = _604 + 0.5f;
        float _609 = _605 + 0.5f;
        float _610 = _606 + 0.5f;
        _612 = _607;
        _613 = _608;
        _614 = _609;
        _615 = _610;
      } else {
        _612 = _565;
        _613 = _566;
        _614 = _567;
        _615 = _556;
      }
    }
  }
  if (_570) {
    float _617 = _612 + _527;
    float _618 = _613 + _528;
    float _619 = _614 + _529;
    _662 = _617;
    _663 = _618;
    _664 = _619;
  } else {
    if (_571) {
      float _622 = 1.0f - _612;
      float _623 = 1.0f - _613;
      float _624 = 1.0f - _614;
      float _625 = _622 * _527;
      float _626 = _623 * _528;
      float _627 = _624 * _529;
      float _628 = _625 + _612;
      float _629 = _626 + _613;
      float _630 = _627 + _614;
      _662 = _628;
      _663 = _629;
      _664 = _630;
    } else {
      bool _632 = ((uint)(cb2_028x) == 4);
      if (_632) {
        float _634 = _612 * _527;
        float _635 = _613 * _528;
        float _636 = _614 * _529;
        _662 = _634;
        _663 = _635;
        _664 = _636;
      } else {
        bool _638 = ((uint)(cb2_028x) == 5);
        if (_638) {
          float _640 = _527 * 2.0f;
          float _641 = _640 * _612;
          float _642 = _528 * 2.0f;
          float _643 = _642 * _613;
          float _644 = _529 * 2.0f;
          float _645 = _644 * _614;
          _662 = _641;
          _663 = _643;
          _664 = _645;
        } else {
          if (_574) {
            float _648 = _527 - _612;
            float _649 = _528 - _613;
            float _650 = _529 - _614;
            _662 = _648;
            _663 = _649;
            _664 = _650;
          } else {
            float _652 = _612 - _527;
            float _653 = _613 - _528;
            float _654 = _614 - _529;
            float _655 = _615 * _652;
            float _656 = _615 * _653;
            float _657 = _615 * _654;
            float _658 = _655 + _527;
            float _659 = _656 + _528;
            float _660 = _657 + _529;
            _662 = _658;
            _663 = _659;
            _664 = _660;
          }
        }
      }
    }
  }
  float _670 = cb2_016x - _662;
  float _671 = cb2_016y - _663;
  float _672 = cb2_016z - _664;
  float _673 = _670 * cb2_016w;
  float _674 = _671 * cb2_016w;
  float _675 = _672 * cb2_016w;
  float _676 = _673 + _662;
  float _677 = _674 + _663;
  float _678 = _675 + _664;
  bool _681 = ((int)(uint)(cb1_018w) > (int)-1);
  if (_681 && RENODX_TONE_MAP_TYPE == 0.f) {
    float _685 = cb2_024x * _676;
    float _686 = cb2_024x * _677;
    float _687 = cb2_024x * _678;
    _689 = _685;
    _690 = _686;
    _691 = _687;
  } else {
    _689 = _676;
    _690 = _677;
    _691 = _678;
  }
  float _692 = _689 * 0.9708889722824097f;
  float _693 = mad(0.026962999254465103f, _690, _692);
  float _694 = mad(0.002148000057786703f, _691, _693);
  float _695 = _689 * 0.01088900025933981f;
  float _696 = mad(0.9869629740715027f, _690, _695);
  float _697 = mad(0.002148000057786703f, _691, _696);
  float _698 = mad(0.026962999254465103f, _690, _695);
  float _699 = mad(0.9621480107307434f, _691, _698);
  if (_681) {
    if (RENODX_TONE_MAP_TYPE == 0.f) {
        float _704 = cb1_018y * 0.10000000149011612f;
        float _705 = log2(cb1_018z);
        float _706 = _705 + -13.287712097167969f;
        float _707 = _706 * 1.4929734468460083f;
        float _708 = _707 + 18.0f;
        float _709 = exp2(_708);
        float _710 = _709 * 0.18000000715255737f;
        float _711 = abs(_710);
        float _712 = log2(_711);
        float _713 = _712 * 1.5f;
        float _714 = exp2(_713);
        float _715 = _714 * _704;
        float _716 = _715 / cb1_018z;
        float _717 = _716 + -0.07636754959821701f;
        float _718 = _712 * 1.2750000953674316f;
        float _719 = exp2(_718);
        float _720 = _719 * 0.07636754959821701f;
        float _721 = cb1_018y * 0.011232397519052029f;
        float _722 = _721 * _714;
        float _723 = _722 / cb1_018z;
        float _724 = _720 - _723;
        float _725 = _719 + -0.11232396960258484f;
        float _726 = _725 * _704;
        float _727 = _726 / cb1_018z;
        float _728 = _727 * cb1_018z;
        float _729 = abs(_694);
        float _730 = abs(_697);
        float _731 = abs(_699);
        float _732 = log2(_729);
        float _733 = log2(_730);
        float _734 = log2(_731);
        float _735 = _732 * 1.5f;
        float _736 = _733 * 1.5f;
        float _737 = _734 * 1.5f;
        float _738 = exp2(_735);
        float _739 = exp2(_736);
        float _740 = exp2(_737);
        float _741 = _738 * _728;
        float _742 = _739 * _728;
        float _743 = _740 * _728;
        float _744 = _732 * 1.2750000953674316f;
        float _745 = _733 * 1.2750000953674316f;
        float _746 = _734 * 1.2750000953674316f;
        float _747 = exp2(_744);
        float _748 = exp2(_745);
        float _749 = exp2(_746);
        float _750 = _747 * _717;
        float _751 = _748 * _717;
        float _752 = _749 * _717;
        float _753 = _750 + _724;
        float _754 = _751 + _724;
        float _755 = _752 + _724;
        float _756 = _741 / _753;
        float _757 = _742 / _754;
        float _758 = _743 / _755;
        float _759 = _756 * 9.999999747378752e-05f;
        float _760 = _757 * 9.999999747378752e-05f;
        float _761 = _758 * 9.999999747378752e-05f;
        float _762 = 5000.0f / cb1_018y;
        float _763 = _759 * _762;
        float _764 = _760 * _762;
        float _765 = _761 * _762;
        _792 = _763;
        _793 = _764;
        _794 = _765;
    } else {
      float3 tonemapped = ApplyCustomToneMap(float3(_694, _697, _699));
      _792 = tonemapped.x, _793 = tonemapped.y, _794 = tonemapped.z;
    }
      } else {
        float _767 = _694 + 0.020616600289940834f;
        float _768 = _697 + 0.020616600289940834f;
        float _769 = _699 + 0.020616600289940834f;
        float _770 = _767 * _694;
        float _771 = _768 * _697;
        float _772 = _769 * _699;
        float _773 = _770 + -7.456949970219284e-05f;
        float _774 = _771 + -7.456949970219284e-05f;
        float _775 = _772 + -7.456949970219284e-05f;
        float _776 = _694 * 0.9837960004806519f;
        float _777 = _697 * 0.9837960004806519f;
        float _778 = _699 * 0.9837960004806519f;
        float _779 = _776 + 0.4336790144443512f;
        float _780 = _777 + 0.4336790144443512f;
        float _781 = _778 + 0.4336790144443512f;
        float _782 = _779 * _694;
        float _783 = _780 * _697;
        float _784 = _781 * _699;
        float _785 = _782 + 0.24617899954319f;
        float _786 = _783 + 0.24617899954319f;
        float _787 = _784 + 0.24617899954319f;
        float _788 = _773 / _785;
        float _789 = _774 / _786;
        float _790 = _775 / _787;
        _792 = _788;
        _793 = _789;
        _794 = _790;
      }
      float _795 = _792 * 1.6047500371932983f;
      float _796 = mad(-0.5310800075531006f, _793, _795);
      float _797 = mad(-0.07366999983787537f, _794, _796);
      float _798 = _792 * -0.10208000242710114f;
      float _799 = mad(1.1081299781799316f, _793, _798);
      float _800 = mad(-0.006049999967217445f, _794, _799);
      float _801 = _792 * -0.0032599999103695154f;
      float _802 = mad(-0.07275000214576721f, _793, _801);
      float _803 = mad(1.0760200023651123f, _794, _802);
      if (_681) {
        // float _805 = max(_797, 0.0f);
        // float _806 = max(_800, 0.0f);
        // float _807 = max(_803, 0.0f);
        // bool _808 = !(_805 >= 0.0030399328097701073f);
        // if (!_808) {
        //   float _810 = abs(_805);
        //   float _811 = log2(_810);
        //   float _812 = _811 * 0.4166666567325592f;
        //   float _813 = exp2(_812);
        //   float _814 = _813 * 1.0549999475479126f;
        //   float _815 = _814 + -0.054999999701976776f;
        //   _819 = _815;
        // } else {
        //   float _817 = _805 * 12.923210144042969f;
        //   _819 = _817;
        // }
        // bool _820 = !(_806 >= 0.0030399328097701073f);
        // if (!_820) {
        //   float _822 = abs(_806);
        //   float _823 = log2(_822);
        //   float _824 = _823 * 0.4166666567325592f;
        //   float _825 = exp2(_824);
        //   float _826 = _825 * 1.0549999475479126f;
        //   float _827 = _826 + -0.054999999701976776f;
        //   _831 = _827;
        // } else {
        //   float _829 = _806 * 12.923210144042969f;
        //   _831 = _829;
        // }
        // bool _832 = !(_807 >= 0.0030399328097701073f);
        // if (!_832) {
        //   float _834 = abs(_807);
        //   float _835 = log2(_834);
        //   float _836 = _835 * 0.4166666567325592f;
        //   float _837 = exp2(_836);
        //   float _838 = _837 * 1.0549999475479126f;
        //   float _839 = _838 + -0.054999999701976776f;
        //   _912 = _819;
        //   _913 = _831;
        //   _914 = _839;
        // } else {
        //   float _841 = _807 * 12.923210144042969f;
        //   _912 = _819;
        //   _913 = _831;
        //   _914 = _841;
        // }
        _912 = renodx::color::srgb::EncodeSafe(_797);
        _913 = renodx::color::srgb::EncodeSafe(_800);
        _914 = renodx::color::srgb::EncodeSafe(_803);

      } else {
        float _843 = saturate(_797);
        float _844 = saturate(_800);
        float _845 = saturate(_803);
        bool _846 = ((uint)(cb1_018w) == -2);
        if (!_846) {
          bool _848 = !(_843 >= 0.0030399328097701073f);
          if (!_848) {
            float _850 = abs(_843);
            float _851 = log2(_850);
            float _852 = _851 * 0.4166666567325592f;
            float _853 = exp2(_852);
            float _854 = _853 * 1.0549999475479126f;
            float _855 = _854 + -0.054999999701976776f;
            _859 = _855;
          } else {
            float _857 = _843 * 12.923210144042969f;
            _859 = _857;
          }
          bool _860 = !(_844 >= 0.0030399328097701073f);
          if (!_860) {
            float _862 = abs(_844);
            float _863 = log2(_862);
            float _864 = _863 * 0.4166666567325592f;
            float _865 = exp2(_864);
            float _866 = _865 * 1.0549999475479126f;
            float _867 = _866 + -0.054999999701976776f;
            _871 = _867;
          } else {
            float _869 = _844 * 12.923210144042969f;
            _871 = _869;
          }
          bool _872 = !(_845 >= 0.0030399328097701073f);
          if (!_872) {
            float _874 = abs(_845);
            float _875 = log2(_874);
            float _876 = _875 * 0.4166666567325592f;
            float _877 = exp2(_876);
            float _878 = _877 * 1.0549999475479126f;
            float _879 = _878 + -0.054999999701976776f;
            _883 = _859;
            _884 = _871;
            _885 = _879;
          } else {
            float _881 = _845 * 12.923210144042969f;
            _883 = _859;
            _884 = _871;
            _885 = _881;
          }
        } else {
          _883 = _843;
          _884 = _844;
          _885 = _845;
        }
        float _890 = abs(_883);
        float _891 = abs(_884);
        float _892 = abs(_885);
        float _893 = log2(_890);
        float _894 = log2(_891);
        float _895 = log2(_892);
        float _896 = _893 * cb2_000z;
        float _897 = _894 * cb2_000z;
        float _898 = _895 * cb2_000z;
        float _899 = exp2(_896);
        float _900 = exp2(_897);
        float _901 = exp2(_898);
        float _902 = _899 * cb2_000y;
        float _903 = _900 * cb2_000y;
        float _904 = _901 * cb2_000y;
        float _905 = _902 + cb2_000x;
        float _906 = _903 + cb2_000x;
        float _907 = _904 + cb2_000x;
        float _908 = saturate(_905);
        float _909 = saturate(_906);
        float _910 = saturate(_907);
        _912 = _908;
        _913 = _909;
        _914 = _910;
      }
      float _915 = dot(float3(_912, _913, _914), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
      SV_Target.x = _912;
      SV_Target.y = _913;
      SV_Target.z = _914;
      SV_Target.w = _915;
      SV_Target_1.x = _915;
      SV_Target_1.y = 0.0f;
      SV_Target_1.z = 0.0f;
      SV_Target_1.w = 0.0f;
      OutputSignature output_signature = { SV_Target, SV_Target_1 };
      return output_signature;
}
