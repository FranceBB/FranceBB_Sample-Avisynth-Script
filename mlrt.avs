#Running local models
ConverttoPlanarRGB()
ConvertBits(32)
mlrt_ncnn(network_path="C:\Program Files (x86)\AviSynth+\models\test.onnx", builtin=false, list_gpu=false, fp16=false)


#Running local models with fallback to CPU
ConverttoPlanarRGB()
ConvertBits(32)
mlrt_ort(network_path="C:\Program Files (x86)\AviSynth+\models\test.onnx", builtin=false, fp16=false)

#Forcing CUDA
ConverttoPlanarRGB()
ConvertBits(32)
mlrt_ort(network_path="C:\Program Files (x86)\AviSynth+\models\test.onnx", builtin=false, fp16=false, provider="CUDA")