module {
func.func @main(%arg0: tensor<2x2xf32>) -> tensor<2x2xf32> {
  %0 = tfl.add %arg0, %arg0 {fused_activation_function = "NONE"} : tensor<2x2xf32>
  %1 = tfl.add %0, %0 {fused_activation_function = "NONE"} : tensor<2x2xf32>
  return %1 : tensor<2x2xf32>
}
}