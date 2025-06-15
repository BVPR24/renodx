#include "./shared.h"
/// Applies Exponential Roll-Off tonemapping using the maximum channel.
/// Used to fit the color into a 0–output_max range for SDR LUT compatibility.
float3 ToneMapMaxCLL(float3 color, float rolloff_start = 0.375f, float output_max = 1.f) {
  // color = min(color, 100.f);
  float peak = max(color.r, max(color.g, color.b));
  peak = min(peak, 100.f);
  float log_peak = log2(peak);

  // Apply exponential shoulder in log space
  float log_mapped = renodx::tonemap::ExponentialRollOff(log_peak, log2(rolloff_start), log2(output_max));
  float scale = exp2(log_mapped - log_peak);  // How much to compress all channels

  return min(output_max, color * scale);
}

// float3 ComputeUntonemappedGraded(float3 untonemapped, float3 graded_sdr) {
//   return ComputeUntonemappedGraded(
//       untonemapped,
//       graded_sdr,
//       ToneMapMaxCLL(untonemapped));
//   }

// float3 ToneMapPass(float3 untonemapped, float3 graded_sdr, float3 tonemapped) {
//   float3 untonemapped_graded = ComputeUntonemappedGraded(
//     untonemapped,
//     graded_sdr,
//     tonemapped,
//     config);
//   return ToneMapPass(untonemapped_graded, config);
// }

float3 Tonemap(float3 untonemapped, float3 tonemapped_y, float3 graded_sdr) {
  float3 outputcolor;
  if (RENODX_TONE_MAP_TYPE == 0.f) {
    outputcolor = saturate(graded_sdr);
  }
  else {
    float vanilla_mid_gray = renodx::color::srgb::DecodeSafe(renodx::color::y::from::BT709(float3(0.212672904,0.715152204,0.0721750036)));
    untonemapped *= vanilla_mid_gray;
    untonemapped = lerp(tonemapped_y, untonemapped, saturate(tonemapped_y));
    float3 tonemapped = ToneMapMaxCLL(untonemapped);
    outputcolor = renodx::draw::ToneMapPass(untonemapped, graded_sdr, tonemapped);
  }
  outputcolor = renodx::draw::RenderIntermediatePass(outputcolor);
  return outputcolor;
}