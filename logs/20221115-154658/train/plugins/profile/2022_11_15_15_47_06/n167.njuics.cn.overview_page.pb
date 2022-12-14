?	??,?(@??,?(@!??,?(@	#,?AC0"@#,?AC0"@!#,?AC0"@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??,?(@@??@1<Nё\~??Aj???늱?I?UId?@Y?rJ@L???*	%??Ct@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???`?.??!z60#?A@)????a??1?L?!t^<@:Preprocessing2U
Iterator::Model::ParallelMapV2t??Y5??!?_???9@)t??Y5??1?_???9@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???b?D??!?$k2?N@)Ϣw*????1s?? ??,@:Preprocessing2F
Iterator::Model? ?????!?۔?WC@)??[[??1ӣI??)@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?7L4H???!??b???'@)|?????1?.??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?8?j?3??!f?ܑ8L@)?8?j?3??1f?ܑ8L@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???s????!???	?@)???s????1???	?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapy$^????!???!?)@)??fHe?1,?A?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 9.1% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?32.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t36.5 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9#,?AC0"@I??ڽˌQ@Q???g??4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	@??@@??@!@??@      ??!       "	<Nё\~??<Nё\~??!<Nё\~??*      ??!       2	j???늱?j???늱?!j???늱?:	?UId?@?UId?@!?UId?@B      ??!       J	?rJ@L????rJ@L???!?rJ@L???R      ??!       Z	?rJ@L????rJ@L???!?rJ@L???b      ??!       JGPUY#,?AC0"@b q??ڽˌQ@y???g??4@?"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam_?e??n??!_?e??n??"l
@gradient_tape/simple_conv_net/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter???????!??uPc|??0":
simple_conv_net/dense/MatMulMatMulҬ???R??!Fqȳ%??0"H
,gradient_tape/simple_conv_net/dense/MatMul_1MatMul|?,???!???I??"H
*gradient_tape/simple_conv_net/dense/MatMulMatMul?Oz\???!ԛ#????0";
simple_conv_net/conv2d/Conv2DConv2DocDR???!?G?8H??0"K
-gradient_tape/simple_conv_net/conv2d/ReluGradReluGrad??pN?(??!??.??Z??"?
gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?/?,??!y??'T??";
simple_conv_net/conv2d/BiasAddBiasAddg@??М?!|????:??"z
]gradient_tape/simple_conv_net/conv2d/ReluGrad-0-TransposeNHWCToNCHW-LayoutOptimizer:TransposeUnknown?)??AG??!ʮ????Q      Y@Y?a?2?t7@a??[??"S@q^?z???
@yG0???{??"?
both?Your program is MODERATELY input-bound because 9.1% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?32.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t36.5 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"GPU(: B 