тЯ
рФ
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12unknown8ио

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:

*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0

NoOpNoOp


ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*П	
valueЕ	BВ	 BЋ	
Ѓ
layer-0
layer_with_weights-0
layer-1
layer-2
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
h

	kernel

bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
 

	0

1

	0

1
­
layer_metrics
regularization_losses
layer_regularization_losses
	variables
metrics

layers
trainable_variables
non_trainable_variables
 
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

	0

1

	0

1
­
layer_metrics
regularization_losses
layer_regularization_losses
	variables
metrics

layers
trainable_variables
non_trainable_variables
 
 
 
­
layer_metrics
regularization_losses
layer_regularization_losses
	variables
metrics

 layers
trainable_variables
!non_trainable_variables
 
 
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 

serving_default_input_6Placeholder*0
_output_shapes
:џџџџџџџџџZД*
dtype0*%
shape:џџџџџџџџџZД
з
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6conv2d_4/kernelconv2d_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_143742
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
х
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_143843
И
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_143859јЦ
Ы
z
$__inference_signature_wrapper_143742
input_6
unknown
	unknown_0
identityЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_1436372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџZД
!
_user_specified_name	input_6
в

F__inference_model_FLAT_layer_call_and_return_conditional_losses_143766

inputs+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource
identityЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpА
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02 
conv2d_4/Conv2D/ReadVariableOpП
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
paddingVALID*
strides


2
conv2d_4/Conv2DЇ
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpЌ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	2
conv2d_4/BiasAdds
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџD  2
flatten_3/Const
flatten_3/ReshapeReshapeconv2d_4/BiasAdd:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
flatten_3/ReshapeВ
IdentityIdentityflatten_3/Reshape:output:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
ј

+__inference_model_FLAT_layer_call_fn_143731
input_6
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_FLAT_layer_call_and_return_conditional_losses_1437242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџZД
!
_user_specified_name	input_6
Н
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_143673

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџD  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ	:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs
ћ

!__inference__wrapped_model_143637
input_66
2model_flat_conv2d_4_conv2d_readvariableop_resource7
3model_flat_conv2d_4_biasadd_readvariableop_resource
identityЂ*model_FLAT/conv2d_4/BiasAdd/ReadVariableOpЂ)model_FLAT/conv2d_4/Conv2D/ReadVariableOpб
)model_FLAT/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2model_flat_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02+
)model_FLAT/conv2d_4/Conv2D/ReadVariableOpс
model_FLAT/conv2d_4/Conv2DConv2Dinput_61model_FLAT/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
paddingVALID*
strides


2
model_FLAT/conv2d_4/Conv2DШ
*model_FLAT/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3model_flat_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_FLAT/conv2d_4/BiasAdd/ReadVariableOpи
model_FLAT/conv2d_4/BiasAddBiasAdd#model_FLAT/conv2d_4/Conv2D:output:02model_FLAT/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	2
model_FLAT/conv2d_4/BiasAdd
model_FLAT/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџD  2
model_FLAT/flatten_3/ConstХ
model_FLAT/flatten_3/ReshapeReshape$model_FLAT/conv2d_4/BiasAdd:output:0#model_FLAT/flatten_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
model_FLAT/flatten_3/Reshapeг
IdentityIdentity%model_FLAT/flatten_3/Reshape:output:0+^model_FLAT/conv2d_4/BiasAdd/ReadVariableOp*^model_FLAT/conv2d_4/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::2X
*model_FLAT/conv2d_4/BiasAdd/ReadVariableOp*model_FLAT/conv2d_4/BiasAdd/ReadVariableOp2V
)model_FLAT/conv2d_4/Conv2D/ReadVariableOp)model_FLAT/conv2d_4/Conv2D/ReadVariableOp:Y U
0
_output_shapes
:џџџџџџџџџZД
!
_user_specified_name	input_6
э	
н
D__inference_conv2d_4_layer_call_and_return_conditional_losses_143651

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
paddingVALID*
strides


2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
ъ

Г
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143692
input_6
conv2d_4_143685
conv2d_4_143687
identityЂ conv2d_4/StatefulPartitionedCall
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_6conv2d_4_143685conv2d_4_143687*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1436512"
 conv2d_4/StatefulPartitionedCallћ
flatten_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1436732
flatten_3/PartitionedCall
IdentityIdentity"flatten_3/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџZД
!
_user_specified_name	input_6
ч

В
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143724

inputs
conv2d_4_143717
conv2d_4_143719
identityЂ conv2d_4/StatefulPartitionedCall
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_143717conv2d_4_143719*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1436512"
 conv2d_4/StatefulPartitionedCallћ
flatten_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1436732
flatten_3/PartitionedCall
IdentityIdentity"flatten_3/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
ѕ

+__inference_model_FLAT_layer_call_fn_143784

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_FLAT_layer_call_and_return_conditional_losses_1437242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
ъ

Г
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143682
input_6
conv2d_4_143662
conv2d_4_143664
identityЂ conv2d_4/StatefulPartitionedCall
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_6conv2d_4_143662conv2d_4_143664*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1436512"
 conv2d_4/StatefulPartitionedCallћ
flatten_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1436732
flatten_3/PartitionedCall
IdentityIdentity"flatten_3/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџZД
!
_user_specified_name	input_6
в

F__inference_model_FLAT_layer_call_and_return_conditional_losses_143754

inputs+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource
identityЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpА
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02 
conv2d_4/Conv2D/ReadVariableOpП
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
paddingVALID*
strides


2
conv2d_4/Conv2DЇ
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpЌ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	2
conv2d_4/BiasAdds
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџD  2
flatten_3/Const
flatten_3/ReshapeReshapeconv2d_4/BiasAdd:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2
flatten_3/ReshapeВ
IdentityIdentityflatten_3/Reshape:output:0 ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
І
F
*__inference_flatten_3_layer_call_fn_143814

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1436732
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ	:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs
ч

В
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143705

inputs
conv2d_4_143698
conv2d_4_143700
identityЂ conv2d_4/StatefulPartitionedCall
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_143698conv2d_4_143700*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1436512"
 conv2d_4/StatefulPartitionedCallћ
flatten_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1436732
flatten_3/PartitionedCall
IdentityIdentity"flatten_3/PartitionedCall:output:0!^conv2d_4/StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
щ
Ъ
__inference__traced_save_143843
file_prefix.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ё
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
: :

:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:

: 

_output_shapes
::

_output_shapes
: 
ј

+__inference_model_FLAT_layer_call_fn_143712
input_6
unknown
	unknown_0
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_FLAT_layer_call_and_return_conditional_losses_1437052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:џџџџџџџџџZД
!
_user_specified_name	input_6
Н
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_143809

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџD  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ	:W S
/
_output_shapes
:џџџџџџџџџ	
 
_user_specified_nameinputs
э	
н
D__inference_conv2d_4_layer_call_and_return_conditional_losses_143794

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOpЄ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	*
paddingVALID*
strides


2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ	2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
ѕ

+__inference_model_FLAT_layer_call_fn_143775

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџФ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_model_FLAT_layer_call_and_return_conditional_losses_1437052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџФ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
ў
~
)__inference_conv2d_4_layer_call_fn_143803

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1436512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ	2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџZД::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџZД
 
_user_specified_nameinputs
ѕ
М
"__inference__traced_restore_143859
file_prefix$
 assignvariableop_conv2d_4_kernel$
 assignvariableop_1_conv2d_4_bias

identity_3ЂAssignVariableOpЂAssignVariableOp_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ё
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slicesК
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv2d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѕ
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1*
T0*
_output_shapes
: 2

Identity_3"!

identity_3Identity_3:output:0*
_input_shapes

: ::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ж
serving_defaultЂ
D
input_69
serving_default_input_6:0џџџџџџџџџZД>
	flatten_31
StatefulPartitionedCall:0џџџџџџџџџФtensorflow/serving/predict:И_

layer-0
layer_with_weights-0
layer-1
layer-2
regularization_losses
	variables
trainable_variables
	keras_api

signatures
"_default_save_signature
*#&call_and_return_all_conditional_losses
$__call__"
_tf_keras_networkщ{"class_name": "Functional", "name": "model_FLAT", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_FLAT", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 90, 180, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_4", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["conv2d_4", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["flatten_3", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 90, 180, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 90, 180, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_FLAT", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 90, 180, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_4", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["conv2d_4", 0, 0, {}]]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["flatten_3", 0, 0]]}}}
ћ"ј
_tf_keras_input_layerи{"class_name": "InputLayer", "name": "input_6", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 90, 180, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 90, 180, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}}
ї	

	kernel

bias
regularization_losses
	variables
trainable_variables
	keras_api
*%&call_and_return_all_conditional_losses
&__call__"в
_tf_keras_layerИ{"class_name": "Conv2D", "name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [10, 10]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 90, 180, 1]}}
ц
regularization_losses
	variables
trainable_variables
	keras_api
*'&call_and_return_all_conditional_losses
(__call__"з
_tf_keras_layerН{"class_name": "Flatten", "name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
Ъ
layer_metrics
regularization_losses
layer_regularization_losses
	variables
metrics

layers
trainable_variables
non_trainable_variables
$__call__
"_default_save_signature
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
,
)serving_default"
signature_map
):'

2conv2d_4/kernel
:2conv2d_4/bias
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
­
layer_metrics
regularization_losses
layer_regularization_losses
	variables
metrics

layers
trainable_variables
non_trainable_variables
&__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
layer_metrics
regularization_losses
layer_regularization_losses
	variables
metrics

 layers
trainable_variables
!non_trainable_variables
(__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ш2х
!__inference__wrapped_model_143637П
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ */Ђ,
*'
input_6џџџџџџџџџZД
ц2у
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143682
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143754
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143766
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143692Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
њ2ї
+__inference_model_FLAT_layer_call_fn_143731
+__inference_model_FLAT_layer_call_fn_143712
+__inference_model_FLAT_layer_call_fn_143784
+__inference_model_FLAT_layer_call_fn_143775Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
D__inference_conv2d_4_layer_call_and_return_conditional_losses_143794Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_conv2d_4_layer_call_fn_143803Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_flatten_3_layer_call_and_return_conditional_losses_143809Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
д2б
*__inference_flatten_3_layer_call_fn_143814Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЫBШ
$__inference_signature_wrapper_143742input_6"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
!__inference__wrapped_model_143637w	
9Ђ6
/Ђ,
*'
input_6џџџџџџџџџZД
Њ "6Њ3
1
	flatten_3$!
	flatten_3џџџџџџџџџФЕ
D__inference_conv2d_4_layer_call_and_return_conditional_losses_143794m	
8Ђ5
.Ђ+
)&
inputsџџџџџџџџџZД
Њ "-Ђ*
# 
0џџџџџџџџџ	
 
)__inference_conv2d_4_layer_call_fn_143803`	
8Ђ5
.Ђ+
)&
inputsџџџџџџџџџZД
Њ " џџџџџџџџџ	Њ
E__inference_flatten_3_layer_call_and_return_conditional_losses_143809a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ	
Њ "&Ђ#

0џџџџџџџџџФ
 
*__inference_flatten_3_layer_call_fn_143814T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ	
Њ "џџџџџџџџџФЙ
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143682o	
AЂ>
7Ђ4
*'
input_6џџџџџџџџџZД
p

 
Њ "&Ђ#

0џџџџџџџџџФ
 Й
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143692o	
AЂ>
7Ђ4
*'
input_6џџџџџџџџџZД
p 

 
Њ "&Ђ#

0џџџџџџџџџФ
 И
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143754n	
@Ђ=
6Ђ3
)&
inputsџџџџџџџџџZД
p

 
Њ "&Ђ#

0џџџџџџџџџФ
 И
F__inference_model_FLAT_layer_call_and_return_conditional_losses_143766n	
@Ђ=
6Ђ3
)&
inputsџџџџџџџџџZД
p 

 
Њ "&Ђ#

0џџџџџџџџџФ
 
+__inference_model_FLAT_layer_call_fn_143712b	
AЂ>
7Ђ4
*'
input_6џџџџџџџџџZД
p

 
Њ "џџџџџџџџџФ
+__inference_model_FLAT_layer_call_fn_143731b	
AЂ>
7Ђ4
*'
input_6џџџџџџџџџZД
p 

 
Њ "џџџџџџџџџФ
+__inference_model_FLAT_layer_call_fn_143775a	
@Ђ=
6Ђ3
)&
inputsџџџџџџџџџZД
p

 
Њ "џџџџџџџџџФ
+__inference_model_FLAT_layer_call_fn_143784a	
@Ђ=
6Ђ3
)&
inputsџџџџџџџџџZД
p 

 
Њ "џџџџџџџџџФЋ
$__inference_signature_wrapper_143742	
DЂA
Ђ 
:Њ7
5
input_6*'
input_6џџџџџџџџџZД"6Њ3
1
	flatten_3$!
	flatten_3џџџџџџџџџФ