�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
�
embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:���*'
shared_nameembedding_2/embeddings
�
*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*!
_output_shapes
:���*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	�d*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:d*
dtype0
�
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*,
shared_namebatch_normalization_5/gamma
�
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:d*
dtype0
�
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_namebatch_normalization_5/beta
�
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:d*
dtype0
�
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*2
shared_name#!batch_normalization_5/moving_mean
�
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:d*
dtype0
�
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*6
shared_name'%batch_normalization_5/moving_variance
�
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:d*
dtype0
�
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*,
shared_namebatch_normalization_6/gamma
�
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
:d*
dtype0
�
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_namebatch_normalization_6/beta
�
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
:d*
dtype0
�
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*2
shared_name#!batch_normalization_6/moving_mean
�
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
:d*
dtype0
�
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*6
shared_name'%batch_normalization_6/moving_variance
�
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
:d*
dtype0
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
��*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:�*
dtype0
�
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_7/gamma
�
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:�*
dtype0
�
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_7/beta
�
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:�*
dtype0
�
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_7/moving_mean
�
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:�*
dtype0
�
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_7/moving_variance
�
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:�*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
��*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:�*
dtype0
�
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_8/gamma
�
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes	
:�*
dtype0
�
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_8/beta
�
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes	
:�*
dtype0
�
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_8/moving_mean
�
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes	
:�*
dtype0
�
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_8/moving_variance
�
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes	
:�*
dtype0
z
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_7/kernel
s
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel* 
_output_shapes
:
��*
dtype0
q
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_7/bias
j
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes	
:�*
dtype0
�
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_9/gamma
�
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes	
:�*
dtype0
�
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_9/beta
�
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes	
:�*
dtype0
�
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_9/moving_mean
�
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes	
:�*
dtype0
�
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_9/moving_variance
�
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes	
:�*
dtype0
y
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	�*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
RMSprop/dense_4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*+
shared_nameRMSprop/dense_4/kernel/rms
�
.RMSprop/dense_4/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_4/kernel/rms*
_output_shapes
:	�d*
dtype0
�
RMSprop/dense_4/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*)
shared_nameRMSprop/dense_4/bias/rms
�
,RMSprop/dense_4/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_4/bias/rms*
_output_shapes
:d*
dtype0
�
'RMSprop/batch_normalization_5/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*8
shared_name)'RMSprop/batch_normalization_5/gamma/rms
�
;RMSprop/batch_normalization_5/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_5/gamma/rms*
_output_shapes
:d*
dtype0
�
&RMSprop/batch_normalization_5/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*7
shared_name(&RMSprop/batch_normalization_5/beta/rms
�
:RMSprop/batch_normalization_5/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_5/beta/rms*
_output_shapes
:d*
dtype0
�
'RMSprop/batch_normalization_6/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*8
shared_name)'RMSprop/batch_normalization_6/gamma/rms
�
;RMSprop/batch_normalization_6/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_6/gamma/rms*
_output_shapes
:d*
dtype0
�
&RMSprop/batch_normalization_6/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*7
shared_name(&RMSprop/batch_normalization_6/beta/rms
�
:RMSprop/batch_normalization_6/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_6/beta/rms*
_output_shapes
:d*
dtype0
�
RMSprop/dense_5/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_nameRMSprop/dense_5/kernel/rms
�
.RMSprop/dense_5/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_5/kernel/rms* 
_output_shapes
:
��*
dtype0
�
RMSprop/dense_5/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameRMSprop/dense_5/bias/rms
�
,RMSprop/dense_5/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_5/bias/rms*
_output_shapes	
:�*
dtype0
�
'RMSprop/batch_normalization_7/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*8
shared_name)'RMSprop/batch_normalization_7/gamma/rms
�
;RMSprop/batch_normalization_7/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_7/gamma/rms*
_output_shapes	
:�*
dtype0
�
&RMSprop/batch_normalization_7/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&RMSprop/batch_normalization_7/beta/rms
�
:RMSprop/batch_normalization_7/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_7/beta/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/dense_6/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_nameRMSprop/dense_6/kernel/rms
�
.RMSprop/dense_6/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_6/kernel/rms* 
_output_shapes
:
��*
dtype0
�
RMSprop/dense_6/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameRMSprop/dense_6/bias/rms
�
,RMSprop/dense_6/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_6/bias/rms*
_output_shapes	
:�*
dtype0
�
'RMSprop/batch_normalization_8/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*8
shared_name)'RMSprop/batch_normalization_8/gamma/rms
�
;RMSprop/batch_normalization_8/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_8/gamma/rms*
_output_shapes	
:�*
dtype0
�
&RMSprop/batch_normalization_8/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&RMSprop/batch_normalization_8/beta/rms
�
:RMSprop/batch_normalization_8/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_8/beta/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/dense_7/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_nameRMSprop/dense_7/kernel/rms
�
.RMSprop/dense_7/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_7/kernel/rms* 
_output_shapes
:
��*
dtype0
�
RMSprop/dense_7/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameRMSprop/dense_7/bias/rms
�
,RMSprop/dense_7/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_7/bias/rms*
_output_shapes	
:�*
dtype0
�
'RMSprop/batch_normalization_9/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*8
shared_name)'RMSprop/batch_normalization_9/gamma/rms
�
;RMSprop/batch_normalization_9/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_9/gamma/rms*
_output_shapes	
:�*
dtype0
�
&RMSprop/batch_normalization_9/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&RMSprop/batch_normalization_9/beta/rms
�
:RMSprop/batch_normalization_9/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_9/beta/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/dense_8/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameRMSprop/dense_8/kernel/rms
�
.RMSprop/dense_8/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_8/kernel/rms*
_output_shapes
:	�*
dtype0
�
RMSprop/dense_8/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameRMSprop/dense_8/bias/rms
�
,RMSprop/dense_8/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_8/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ˑ
value��B�� B��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
layer-16
layer_with_weights-9
layer-17
layer_with_weights-10
layer-18
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
* 
�

embeddings
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
�
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
�
=axis
	>gamma
?beta
@moving_mean
Amoving_variance
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses*
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses* 
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R_random_generator
S__call__
*T&call_and_return_all_conditional_losses* 
�

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses*
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a_random_generator
b__call__
*c&call_and_return_all_conditional_losses* 
�
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses*
�

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{_random_generator
|__call__
*}&call_and_return_all_conditional_losses* 
�
~axis
	gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�_random_generator
�__call__
+�&call_and_return_all_conditional_losses* 
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
	�iter

�decay
�learning_rate
�momentum
�rho
$rms�
%rms�
3rms�
4rms�
>rms�
?rms�
Urms�
Vrms�
erms�
frms�
orms�
prms�
rms��rms��rms��rms��rms��rms��rms��rms�*
�
0
$1
%2
33
44
55
66
>7
?8
@9
A10
U11
V12
e13
f14
g15
h16
o17
p18
19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30*
�
$0
%1
32
43
>4
?5
U6
V7
e8
f9
o10
p11
12
�13
�14
�15
�16
�17
�18
�19*

�0
�1
�2* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

�serving_default* 
jd
VARIABLE_VALUEembedding_2/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
30
41
52
63*

30
41*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
>0
?1
@2
A3*

>0
?1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

U0
V1*

U0
V1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 
* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
e0
f1
g2
h3*

e0
f1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses* 
* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
#
0
�1
�2
�3*

0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_8/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_8/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
V
0
51
62
@3
A4
g5
h6
�7
�8
�9
�10*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18*

�0
�1*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

50
61*
* 
* 
* 
* 

@0
A1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 

g0
h1*
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

�total

�count
�	variables
�	keras_api*
M

�total

�count
�
_fn_kwargs
�	variables
�	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
��
VARIABLE_VALUERMSprop/dense_4/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUERMSprop/dense_4/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE'RMSprop/batch_normalization_5/gamma/rmsSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE&RMSprop/batch_normalization_5/beta/rmsRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE'RMSprop/batch_normalization_6/gamma/rmsSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE&RMSprop/batch_normalization_6/beta/rmsRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/dense_5/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUERMSprop/dense_5/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE'RMSprop/batch_normalization_7/gamma/rmsSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE&RMSprop/batch_normalization_7/beta/rmsRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/dense_6/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUERMSprop/dense_6/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE'RMSprop/batch_normalization_8/gamma/rmsSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE&RMSprop/batch_normalization_8/beta/rmsRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/dense_7/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUERMSprop/dense_7/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE'RMSprop/batch_normalization_9/gamma/rmsSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE&RMSprop/batch_normalization_9/beta/rmsRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/dense_8/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUERMSprop/dense_8/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_5Placeholder*'
_output_shapes
:���������2*
dtype0*
shape:���������2
z
serving_default_input_6Placeholder*'
_output_shapes
:���������2*
dtype0*
shape:���������2
�	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5serving_default_input_6embedding_2/embeddingsdense_4/kerneldense_4/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/beta%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betadense_5/kerneldense_5/bias%batch_normalization_7/moving_variancebatch_normalization_7/gamma!batch_normalization_7/moving_meanbatch_normalization_7/betadense_6/kerneldense_6/bias%batch_normalization_8/moving_variancebatch_normalization_8/gamma!batch_normalization_8/moving_meanbatch_normalization_8/betadense_7/kerneldense_7/bias%batch_normalization_9/moving_variancebatch_normalization_9/gamma!batch_normalization_9/moving_meanbatch_normalization_9/betadense_8/kerneldense_8/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*A
_read_only_resource_inputs#
!	
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_656724
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_2/embeddings/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp.RMSprop/dense_4/kernel/rms/Read/ReadVariableOp,RMSprop/dense_4/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_5/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_5/beta/rms/Read/ReadVariableOp;RMSprop/batch_normalization_6/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_6/beta/rms/Read/ReadVariableOp.RMSprop/dense_5/kernel/rms/Read/ReadVariableOp,RMSprop/dense_5/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_7/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_7/beta/rms/Read/ReadVariableOp.RMSprop/dense_6/kernel/rms/Read/ReadVariableOp,RMSprop/dense_6/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_8/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_8/beta/rms/Read/ReadVariableOp.RMSprop/dense_7/kernel/rms/Read/ReadVariableOp,RMSprop/dense_7/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_9/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_9/beta/rms/Read/ReadVariableOp.RMSprop/dense_8/kernel/rms/Read/ReadVariableOp,RMSprop/dense_8/bias/rms/Read/ReadVariableOpConst*I
TinB
@2>	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_657676
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_2/embeddingsdense_4/kerneldense_4/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancebatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_variancedense_5/kerneldense_5/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense_6/kerneldense_6/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_7/kerneldense_7/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense_8/kerneldense_8/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/dense_4/kernel/rmsRMSprop/dense_4/bias/rms'RMSprop/batch_normalization_5/gamma/rms&RMSprop/batch_normalization_5/beta/rms'RMSprop/batch_normalization_6/gamma/rms&RMSprop/batch_normalization_6/beta/rmsRMSprop/dense_5/kernel/rmsRMSprop/dense_5/bias/rms'RMSprop/batch_normalization_7/gamma/rms&RMSprop/batch_normalization_7/beta/rmsRMSprop/dense_6/kernel/rmsRMSprop/dense_6/bias/rms'RMSprop/batch_normalization_8/gamma/rms&RMSprop/batch_normalization_8/beta/rmsRMSprop/dense_7/kernel/rmsRMSprop/dense_7/bias/rms'RMSprop/batch_normalization_9/gamma/rms&RMSprop/batch_normalization_9/beta/rmsRMSprop/dense_8/kernel/rmsRMSprop/dense_8/bias/rms*H
TinA
?2=*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_657866��
�
c
*__inference_dropout_4_layer_call_fn_656985

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_655419p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_7_layer_call_fn_657074

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_654743p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_embedding_2_layer_call_and_return_conditional_losses_656740

inputs,
embedding_lookup_656734:���
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_656734inputs*
Tindices0**
_class 
loc:@embedding_lookup/656734*,
_output_shapes
:���������2�*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/656734*,
_output_shapes
:���������2��
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:���������2�x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:���������2�Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������2: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
C__inference_dense_7_layer_call_and_return_conditional_losses_655167

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_7/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_lambda_1_layer_call_fn_656790

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655443`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2d:S O
+
_output_shapes
:���������2d
 
_user_specified_nameinputs
�~
�
C__inference_model_1_layer_call_and_return_conditional_losses_655643

inputs
inputs_1'
embedding_2_655539:���!
dense_4_655544:	�d
dense_4_655546:d*
batch_normalization_5_655554:d*
batch_normalization_5_655556:d*
batch_normalization_5_655558:d*
batch_normalization_5_655560:d*
batch_normalization_6_655563:d*
batch_normalization_6_655565:d*
batch_normalization_6_655567:d*
batch_normalization_6_655569:d"
dense_5_655574:
��
dense_5_655576:	�+
batch_normalization_7_655580:	�+
batch_normalization_7_655582:	�+
batch_normalization_7_655584:	�+
batch_normalization_7_655586:	�"
dense_6_655589:
��
dense_6_655591:	�+
batch_normalization_8_655595:	�+
batch_normalization_8_655597:	�+
batch_normalization_8_655599:	�+
batch_normalization_8_655601:	�"
dense_7_655604:
��
dense_7_655606:	�+
batch_normalization_9_655610:	�+
batch_normalization_9_655612:	�+
batch_normalization_9_655614:	�+
batch_normalization_9_655616:	�!
dense_8_655619:	�
dense_8_655621:
identity��-batch_normalization_5/StatefulPartitionedCall�-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�-batch_normalization_9/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�!dense_4/StatefulPartitionedCall_1�dense_5/StatefulPartitionedCall�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/StatefulPartitionedCall�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/StatefulPartitionedCall�0dense_7/kernel/Regularizer/Square/ReadVariableOp�dense_8/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�!dropout_5/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�%embedding_2/StatefulPartitionedCall_1�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_2_655539*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983�
%embedding_2/StatefulPartitionedCall_1StatefulPartitionedCallinputsembedding_2_655539*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983�
dense_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0dense_4_655544dense_4_655546*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020�
!dense_4/StatefulPartitionedCall_1StatefulPartitionedCall.embedding_2/StatefulPartitionedCall_1:output:0dense_4_655544dense_4_655546*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020�
lambda_1/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655443�
lambda_1/PartitionedCall_1PartitionedCall*dense_4/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655443�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall#lambda_1/PartitionedCall_1:output:0batch_normalization_5_655554batch_normalization_5_655556batch_normalization_5_655558batch_normalization_5_655560*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_654626�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0batch_normalization_6_655563batch_normalization_6_655565batch_normalization_6_655567batch_normalization_6_655569*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_654708�
concatenate_1/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:06batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_655063�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_655419�
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_5_655574dense_5_655576*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_655089�
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_655386�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0batch_normalization_7_655580batch_normalization_7_655582batch_normalization_7_655584batch_normalization_7_655586*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_654790�
dense_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_6_655589dense_6_655591*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_655128�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_655353�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0batch_normalization_8_655595batch_normalization_8_655597batch_normalization_8_655599batch_normalization_8_655601*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_654872�
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_7_655604dense_7_655606*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_655167�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_655320�
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0batch_normalization_9_655610batch_normalization_9_655612batch_normalization_9_655614batch_normalization_9_655616*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_654954�
dense_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_8_655619dense_8_655621*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_655200�
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_655574* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_655589* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7_655604* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dense_4/StatefulPartitionedCall_1 ^dense_5/StatefulPartitionedCall1^dense_5/kernel/Regularizer/Square/ReadVariableOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall1^dense_7/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall&^embedding_2/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!dense_4/StatefulPartitionedCall_1!dense_4/StatefulPartitionedCall_12B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2N
%embedding_2/StatefulPartitionedCall_1%embedding_2/StatefulPartitionedCall_1:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_656084
inputs_0
inputs_1
unknown:���
	unknown_0:	�d
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:d
	unknown_5:d
	unknown_6:d
	unknown_7:d
	unknown_8:d
	unknown_9:d

unknown_10:
��

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:
��

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*A
_read_only_resource_inputs#
!	
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_655225o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs/1
�
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_655070

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_dense_6_layer_call_fn_657156

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_655128p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_654626

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������dl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_657141

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_655386

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_4_layer_call_fn_656980

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_655070a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_656990

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_5_layer_call_fn_656828

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_654626o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_656928

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_657188

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_6_layer_call_fn_656895

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_654661o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_655776
input_5
input_6
unknown:���
	unknown_0:	�d
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:d
	unknown_5:d
	unknown_6:d
	unknown_7:d
	unknown_8:d
	unknown_9:d

unknown_10:
��

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:
��

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_5input_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*7
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_655643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������2
!
_user_specified_name	input_5:PL
'
_output_shapes
:���������2
!
_user_specified_name	input_6
�	
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_657339

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_lambda_1_layer_call_fn_656785

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655035`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2d:S O
+
_output_shapes
:���������2d
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_8_layer_call_fn_657226

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_654872p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_6_layer_call_fn_656908

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_654708o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
C__inference_model_1_layer_call_and_return_conditional_losses_656354
inputs_0
inputs_18
#embedding_2_embedding_lookup_656156:���<
)dense_4_tensordot_readvariableop_resource:	�d5
'dense_4_biasadd_readvariableop_resource:dE
7batch_normalization_5_batchnorm_readvariableop_resource:dI
;batch_normalization_5_batchnorm_mul_readvariableop_resource:dG
9batch_normalization_5_batchnorm_readvariableop_1_resource:dG
9batch_normalization_5_batchnorm_readvariableop_2_resource:dE
7batch_normalization_6_batchnorm_readvariableop_resource:dI
;batch_normalization_6_batchnorm_mul_readvariableop_resource:dG
9batch_normalization_6_batchnorm_readvariableop_1_resource:dG
9batch_normalization_6_batchnorm_readvariableop_2_resource:d:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�F
7batch_normalization_7_batchnorm_readvariableop_resource:	�J
;batch_normalization_7_batchnorm_mul_readvariableop_resource:	�H
9batch_normalization_7_batchnorm_readvariableop_1_resource:	�H
9batch_normalization_7_batchnorm_readvariableop_2_resource:	�:
&dense_6_matmul_readvariableop_resource:
��6
'dense_6_biasadd_readvariableop_resource:	�F
7batch_normalization_8_batchnorm_readvariableop_resource:	�J
;batch_normalization_8_batchnorm_mul_readvariableop_resource:	�H
9batch_normalization_8_batchnorm_readvariableop_1_resource:	�H
9batch_normalization_8_batchnorm_readvariableop_2_resource:	�:
&dense_7_matmul_readvariableop_resource:
��6
'dense_7_biasadd_readvariableop_resource:	�F
7batch_normalization_9_batchnorm_readvariableop_resource:	�J
;batch_normalization_9_batchnorm_mul_readvariableop_resource:	�H
9batch_normalization_9_batchnorm_readvariableop_1_resource:	�H
9batch_normalization_9_batchnorm_readvariableop_2_resource:	�9
&dense_8_matmul_readvariableop_resource:	�5
'dense_8_biasadd_readvariableop_resource:
identity��.batch_normalization_5/batchnorm/ReadVariableOp�0batch_normalization_5/batchnorm/ReadVariableOp_1�0batch_normalization_5/batchnorm/ReadVariableOp_2�2batch_normalization_5/batchnorm/mul/ReadVariableOp�.batch_normalization_6/batchnorm/ReadVariableOp�0batch_normalization_6/batchnorm/ReadVariableOp_1�0batch_normalization_6/batchnorm/ReadVariableOp_2�2batch_normalization_6/batchnorm/mul/ReadVariableOp�.batch_normalization_7/batchnorm/ReadVariableOp�0batch_normalization_7/batchnorm/ReadVariableOp_1�0batch_normalization_7/batchnorm/ReadVariableOp_2�2batch_normalization_7/batchnorm/mul/ReadVariableOp�.batch_normalization_8/batchnorm/ReadVariableOp�0batch_normalization_8/batchnorm/ReadVariableOp_1�0batch_normalization_8/batchnorm/ReadVariableOp_2�2batch_normalization_8/batchnorm/mul/ReadVariableOp�.batch_normalization_9/batchnorm/ReadVariableOp�0batch_normalization_9/batchnorm/ReadVariableOp_1�0batch_normalization_9/batchnorm/ReadVariableOp_2�2batch_normalization_9/batchnorm/mul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/BiasAdd_1/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�"dense_4/Tensordot_1/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�0dense_7/kernel/Regularizer/Square/ReadVariableOp�dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�embedding_2/embedding_lookup�embedding_2/embedding_lookup_1�
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_656156inputs_1*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/656156*,
_output_shapes
:���������2�*
dtype0�
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/656156*,
_output_shapes
:���������2��
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:���������2��
embedding_2/embedding_lookup_1ResourceGather#embedding_2_embedding_lookup_656156inputs_0*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/656156*,
_output_shapes
:���������2�*
dtype0�
'embedding_2/embedding_lookup_1/IdentityIdentity'embedding_2/embedding_lookup_1:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/656156*,
_output_shapes
:���������2��
)embedding_2/embedding_lookup_1/Identity_1Identity0embedding_2/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:���������2��
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
dense_4/Tensordot/ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/transpose	Transpose0embedding_2/embedding_lookup/Identity_1:output:0!dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������2��
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dc
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:da
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������2d�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2dd
dense_4/TanhTanhdense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������2d�
"dense_4/Tensordot_1/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0b
dense_4/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense_4/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
dense_4/Tensordot_1/ShapeShape2embedding_2/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:c
!dense_4/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot_1/GatherV2GatherV2"dense_4/Tensordot_1/Shape:output:0!dense_4/Tensordot_1/free:output:0*dense_4/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
#dense_4/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot_1/GatherV2_1GatherV2"dense_4/Tensordot_1/Shape:output:0!dense_4/Tensordot_1/axes:output:0,dense_4/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
dense_4/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot_1/ProdProd%dense_4/Tensordot_1/GatherV2:output:0"dense_4/Tensordot_1/Const:output:0*
T0*
_output_shapes
: e
dense_4/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot_1/Prod_1Prod'dense_4/Tensordot_1/GatherV2_1:output:0$dense_4/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: a
dense_4/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot_1/concatConcatV2!dense_4/Tensordot_1/free:output:0!dense_4/Tensordot_1/axes:output:0(dense_4/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot_1/stackPack!dense_4/Tensordot_1/Prod:output:0#dense_4/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot_1/transpose	Transpose2embedding_2/embedding_lookup_1/Identity_1:output:0#dense_4/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:���������2��
dense_4/Tensordot_1/ReshapeReshape!dense_4/Tensordot_1/transpose:y:0"dense_4/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot_1/MatMulMatMul$dense_4/Tensordot_1/Reshape:output:0*dense_4/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������de
dense_4/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dc
!dense_4/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot_1/concat_1ConcatV2%dense_4/Tensordot_1/GatherV2:output:0$dense_4/Tensordot_1/Const_2:output:0*dense_4/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot_1Reshape$dense_4/Tensordot_1/MatMul:product:0%dense_4/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:���������2d�
 dense_4/BiasAdd_1/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_4/BiasAdd_1BiasAdddense_4/Tensordot_1:output:0(dense_4/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2dh
dense_4/Tanh_1Tanhdense_4/BiasAdd_1:output:0*
T0*+
_output_shapes
:���������2d`
lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
lambda_1/SumSumdense_4/Tanh:y:0'lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������db
 lambda_1/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
lambda_1/Sum_1Sumdense_4/Tanh_1:y:0)lambda_1/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������d�
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:d|
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:d�
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
%batch_normalization_5/batchnorm/mul_1Mullambda_1/Sum_1:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0�
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0�
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d�
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:d|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:d�
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
%batch_normalization_6/batchnorm/mul_1Mullambda_1/Sum:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0�
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0�
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_1/concatConcatV2)batch_normalization_5/batchnorm/add_1:z:0)batch_normalization_6/batchnorm/add_1:z:0"concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������p
dropout_4/IdentityIdentityconcatenate_1/concat:output:0*
T0*(
_output_shapes
:�����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/MatMulMatMuldropout_4/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/TanhTanhdense_5/BiasAdd:output:0*
T0*(
_output_shapes
:����������c
dropout_5/IdentityIdentitydense_5/Tanh:y:0*
T0*(
_output_shapes
:�����������
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_7/batchnorm/addAddV26batch_normalization_7/batchnorm/ReadVariableOp:value:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_7/batchnorm/mul_1Muldropout_5/Identity:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
0batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
%batch_normalization_7/batchnorm/mul_2Mul8batch_normalization_7/batchnorm/ReadVariableOp_1:value:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
0batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_7/batchnorm/subSub8batch_normalization_7/batchnorm/ReadVariableOp_2:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_6/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_6/TanhTanhdense_6/BiasAdd:output:0*
T0*(
_output_shapes
:����������c
dropout_6/IdentityIdentitydense_6/Tanh:y:0*
T0*(
_output_shapes
:�����������
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0j
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_8/batchnorm/addAddV26batch_normalization_8/batchnorm/ReadVariableOp:value:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_8/batchnorm/mul_1Muldropout_6/Identity:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
0batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
%batch_normalization_8/batchnorm/mul_2Mul8batch_normalization_8/batchnorm/ReadVariableOp_1:value:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
0batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_8/batchnorm/subSub8batch_normalization_8/batchnorm/ReadVariableOp_2:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_7/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_7/TanhTanhdense_7/BiasAdd:output:0*
T0*(
_output_shapes
:����������c
dropout_7/IdentityIdentitydense_7/Tanh:y:0*
T0*(
_output_shapes
:�����������
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0j
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_9/batchnorm/addAddV26batch_normalization_9/batchnorm/ReadVariableOp:value:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_9/batchnorm/mul_1Muldropout_7/Identity:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
0batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
%batch_normalization_9/batchnorm/mul_2Mul8batch_normalization_9/batchnorm/ReadVariableOp_1:value:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
0batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_9/batchnorm/subSub8batch_normalization_9/batchnorm/ReadVariableOp_2:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_8/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:����������
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/BiasAdd_1/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp#^dense_4/Tensordot_1/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^embedding_2/embedding_lookup^embedding_2/embedding_lookup_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2d
0batch_normalization_7/batchnorm/ReadVariableOp_10batch_normalization_7/batchnorm/ReadVariableOp_12d
0batch_normalization_7/batchnorm/ReadVariableOp_20batch_normalization_7/batchnorm/ReadVariableOp_22h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2d
0batch_normalization_8/batchnorm/ReadVariableOp_10batch_normalization_8/batchnorm/ReadVariableOp_12d
0batch_normalization_8/batchnorm/ReadVariableOp_20batch_normalization_8/batchnorm/ReadVariableOp_22h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2d
0batch_normalization_9/batchnorm/ReadVariableOp_10batch_normalization_9/batchnorm/ReadVariableOp_12d
0batch_normalization_9/batchnorm/ReadVariableOp_20batch_normalization_9/batchnorm/ReadVariableOp_22h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/BiasAdd_1/ReadVariableOp dense_4/BiasAdd_1/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2H
"dense_4/Tensordot_1/ReadVariableOp"dense_4/Tensordot_1/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2@
embedding_2/embedding_lookup_1embedding_2/embedding_lookup_1:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs/1
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_654825

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983

inputs,
embedding_lookup_654977:���
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_654977inputs*
Tindices0**
_class 
loc:@embedding_lookup/654977*,
_output_shapes
:���������2�*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/654977*,
_output_shapes
:���������2��
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:���������2�x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:���������2�Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������2: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_654907

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_656882

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������dl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�x
�
C__inference_model_1_layer_call_and_return_conditional_losses_655225

inputs
inputs_1'
embedding_2_654984:���!
dense_4_655021:	�d
dense_4_655023:d*
batch_normalization_5_655038:d*
batch_normalization_5_655040:d*
batch_normalization_5_655042:d*
batch_normalization_5_655044:d*
batch_normalization_6_655047:d*
batch_normalization_6_655049:d*
batch_normalization_6_655051:d*
batch_normalization_6_655053:d"
dense_5_655090:
��
dense_5_655092:	�+
batch_normalization_7_655102:	�+
batch_normalization_7_655104:	�+
batch_normalization_7_655106:	�+
batch_normalization_7_655108:	�"
dense_6_655129:
��
dense_6_655131:	�+
batch_normalization_8_655141:	�+
batch_normalization_8_655143:	�+
batch_normalization_8_655145:	�+
batch_normalization_8_655147:	�"
dense_7_655168:
��
dense_7_655170:	�+
batch_normalization_9_655180:	�+
batch_normalization_9_655182:	�+
batch_normalization_9_655184:	�+
batch_normalization_9_655186:	�!
dense_8_655201:	�
dense_8_655203:
identity��-batch_normalization_5/StatefulPartitionedCall�-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�-batch_normalization_9/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�!dense_4/StatefulPartitionedCall_1�dense_5/StatefulPartitionedCall�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/StatefulPartitionedCall�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/StatefulPartitionedCall�0dense_7/kernel/Regularizer/Square/ReadVariableOp�dense_8/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�%embedding_2/StatefulPartitionedCall_1�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_2_654984*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983�
%embedding_2/StatefulPartitionedCall_1StatefulPartitionedCallinputsembedding_2_654984*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983�
dense_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0dense_4_655021dense_4_655023*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020�
!dense_4/StatefulPartitionedCall_1StatefulPartitionedCall.embedding_2/StatefulPartitionedCall_1:output:0dense_4_655021dense_4_655023*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020�
lambda_1/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655035�
lambda_1/PartitionedCall_1PartitionedCall*dense_4/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655035�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall#lambda_1/PartitionedCall_1:output:0batch_normalization_5_655038batch_normalization_5_655040batch_normalization_5_655042batch_normalization_5_655044*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_654579�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0batch_normalization_6_655047batch_normalization_6_655049batch_normalization_6_655051batch_normalization_6_655053*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_654661�
concatenate_1/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:06batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_655063�
dropout_4/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_655070�
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_5_655090dense_5_655092*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_655089�
dropout_5/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_655100�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0batch_normalization_7_655102batch_normalization_7_655104batch_normalization_7_655106batch_normalization_7_655108*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_654743�
dense_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_6_655129dense_6_655131*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_655128�
dropout_6/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_655139�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0batch_normalization_8_655141batch_normalization_8_655143batch_normalization_8_655145batch_normalization_8_655147*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_654825�
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_7_655168dense_7_655170*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_655167�
dropout_7/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_655178�
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0batch_normalization_9_655180batch_normalization_9_655182batch_normalization_9_655184batch_normalization_9_655186*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_654907�
dense_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_8_655201dense_8_655203*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_655200�
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_655090* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_655129* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7_655168* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dense_4/StatefulPartitionedCall_1 ^dense_5/StatefulPartitionedCall1^dense_5/kernel/Regularizer/Square/ReadVariableOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall1^dense_7/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall&^embedding_2/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!dense_4/StatefulPartitionedCall_1!dense_4/StatefulPartitionedCall_12B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2N
%embedding_2/StatefulPartitionedCall_1%embedding_2/StatefulPartitionedCall_1:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
s
I__inference_concatenate_1_layer_call_and_return_conditional_losses_655063

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_654661

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
c
*__inference_dropout_5_layer_call_fn_657044

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_655386p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_656152
inputs_0
inputs_1
unknown:���
	unknown_0:	�d
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:d
	unknown_5:d
	unknown_6:d
	unknown_7:d
	unknown_8:d
	unknown_9:d

unknown_10:
��

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:
��

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*7
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_655643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs/1
�

�
C__inference_dense_8_layer_call_and_return_conditional_losses_655200

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_655035

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:���������dT
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2d:S O
+
_output_shapes
:���������2d
 
_user_specified_nameinputs
�
�
C__inference_dense_5_layer_call_and_return_conditional_losses_657034

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_654579

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�	
d
E__inference_dropout_7_layer_call_and_return_conditional_losses_655320

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
� 
!__inference__wrapped_model_654555
input_5
input_6@
+model_1_embedding_2_embedding_lookup_654375:���D
1model_1_dense_4_tensordot_readvariableop_resource:	�d=
/model_1_dense_4_biasadd_readvariableop_resource:dM
?model_1_batch_normalization_5_batchnorm_readvariableop_resource:dQ
Cmodel_1_batch_normalization_5_batchnorm_mul_readvariableop_resource:dO
Amodel_1_batch_normalization_5_batchnorm_readvariableop_1_resource:dO
Amodel_1_batch_normalization_5_batchnorm_readvariableop_2_resource:dM
?model_1_batch_normalization_6_batchnorm_readvariableop_resource:dQ
Cmodel_1_batch_normalization_6_batchnorm_mul_readvariableop_resource:dO
Amodel_1_batch_normalization_6_batchnorm_readvariableop_1_resource:dO
Amodel_1_batch_normalization_6_batchnorm_readvariableop_2_resource:dB
.model_1_dense_5_matmul_readvariableop_resource:
��>
/model_1_dense_5_biasadd_readvariableop_resource:	�N
?model_1_batch_normalization_7_batchnorm_readvariableop_resource:	�R
Cmodel_1_batch_normalization_7_batchnorm_mul_readvariableop_resource:	�P
Amodel_1_batch_normalization_7_batchnorm_readvariableop_1_resource:	�P
Amodel_1_batch_normalization_7_batchnorm_readvariableop_2_resource:	�B
.model_1_dense_6_matmul_readvariableop_resource:
��>
/model_1_dense_6_biasadd_readvariableop_resource:	�N
?model_1_batch_normalization_8_batchnorm_readvariableop_resource:	�R
Cmodel_1_batch_normalization_8_batchnorm_mul_readvariableop_resource:	�P
Amodel_1_batch_normalization_8_batchnorm_readvariableop_1_resource:	�P
Amodel_1_batch_normalization_8_batchnorm_readvariableop_2_resource:	�B
.model_1_dense_7_matmul_readvariableop_resource:
��>
/model_1_dense_7_biasadd_readvariableop_resource:	�N
?model_1_batch_normalization_9_batchnorm_readvariableop_resource:	�R
Cmodel_1_batch_normalization_9_batchnorm_mul_readvariableop_resource:	�P
Amodel_1_batch_normalization_9_batchnorm_readvariableop_1_resource:	�P
Amodel_1_batch_normalization_9_batchnorm_readvariableop_2_resource:	�A
.model_1_dense_8_matmul_readvariableop_resource:	�=
/model_1_dense_8_biasadd_readvariableop_resource:
identity��6model_1/batch_normalization_5/batchnorm/ReadVariableOp�8model_1/batch_normalization_5/batchnorm/ReadVariableOp_1�8model_1/batch_normalization_5/batchnorm/ReadVariableOp_2�:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp�6model_1/batch_normalization_6/batchnorm/ReadVariableOp�8model_1/batch_normalization_6/batchnorm/ReadVariableOp_1�8model_1/batch_normalization_6/batchnorm/ReadVariableOp_2�:model_1/batch_normalization_6/batchnorm/mul/ReadVariableOp�6model_1/batch_normalization_7/batchnorm/ReadVariableOp�8model_1/batch_normalization_7/batchnorm/ReadVariableOp_1�8model_1/batch_normalization_7/batchnorm/ReadVariableOp_2�:model_1/batch_normalization_7/batchnorm/mul/ReadVariableOp�6model_1/batch_normalization_8/batchnorm/ReadVariableOp�8model_1/batch_normalization_8/batchnorm/ReadVariableOp_1�8model_1/batch_normalization_8/batchnorm/ReadVariableOp_2�:model_1/batch_normalization_8/batchnorm/mul/ReadVariableOp�6model_1/batch_normalization_9/batchnorm/ReadVariableOp�8model_1/batch_normalization_9/batchnorm/ReadVariableOp_1�8model_1/batch_normalization_9/batchnorm/ReadVariableOp_2�:model_1/batch_normalization_9/batchnorm/mul/ReadVariableOp�&model_1/dense_4/BiasAdd/ReadVariableOp�(model_1/dense_4/BiasAdd_1/ReadVariableOp�(model_1/dense_4/Tensordot/ReadVariableOp�*model_1/dense_4/Tensordot_1/ReadVariableOp�&model_1/dense_5/BiasAdd/ReadVariableOp�%model_1/dense_5/MatMul/ReadVariableOp�&model_1/dense_6/BiasAdd/ReadVariableOp�%model_1/dense_6/MatMul/ReadVariableOp�&model_1/dense_7/BiasAdd/ReadVariableOp�%model_1/dense_7/MatMul/ReadVariableOp�&model_1/dense_8/BiasAdd/ReadVariableOp�%model_1/dense_8/MatMul/ReadVariableOp�$model_1/embedding_2/embedding_lookup�&model_1/embedding_2/embedding_lookup_1�
$model_1/embedding_2/embedding_lookupResourceGather+model_1_embedding_2_embedding_lookup_654375input_6*
Tindices0*>
_class4
20loc:@model_1/embedding_2/embedding_lookup/654375*,
_output_shapes
:���������2�*
dtype0�
-model_1/embedding_2/embedding_lookup/IdentityIdentity-model_1/embedding_2/embedding_lookup:output:0*
T0*>
_class4
20loc:@model_1/embedding_2/embedding_lookup/654375*,
_output_shapes
:���������2��
/model_1/embedding_2/embedding_lookup/Identity_1Identity6model_1/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:���������2��
&model_1/embedding_2/embedding_lookup_1ResourceGather+model_1_embedding_2_embedding_lookup_654375input_5*
Tindices0*>
_class4
20loc:@model_1/embedding_2/embedding_lookup/654375*,
_output_shapes
:���������2�*
dtype0�
/model_1/embedding_2/embedding_lookup_1/IdentityIdentity/model_1/embedding_2/embedding_lookup_1:output:0*
T0*>
_class4
20loc:@model_1/embedding_2/embedding_lookup/654375*,
_output_shapes
:���������2��
1model_1/embedding_2/embedding_lookup_1/Identity_1Identity8model_1/embedding_2/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:���������2��
(model_1/dense_4/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0h
model_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
model_1/dense_4/Tensordot/ShapeShape8model_1/embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:i
'model_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_4/Tensordot/GatherV2GatherV2(model_1/dense_4/Tensordot/Shape:output:0'model_1/dense_4/Tensordot/free:output:00model_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)model_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$model_1/dense_4/Tensordot/GatherV2_1GatherV2(model_1/dense_4/Tensordot/Shape:output:0'model_1/dense_4/Tensordot/axes:output:02model_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
model_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
model_1/dense_4/Tensordot/ProdProd+model_1/dense_4/Tensordot/GatherV2:output:0(model_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!model_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 model_1/dense_4/Tensordot/Prod_1Prod-model_1/dense_4/Tensordot/GatherV2_1:output:0*model_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%model_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 model_1/dense_4/Tensordot/concatConcatV2'model_1/dense_4/Tensordot/free:output:0'model_1/dense_4/Tensordot/axes:output:0.model_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_4/Tensordot/stackPack'model_1/dense_4/Tensordot/Prod:output:0)model_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#model_1/dense_4/Tensordot/transpose	Transpose8model_1/embedding_2/embedding_lookup/Identity_1:output:0)model_1/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������2��
!model_1/dense_4/Tensordot/ReshapeReshape'model_1/dense_4/Tensordot/transpose:y:0(model_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
 model_1/dense_4/Tensordot/MatMulMatMul*model_1/dense_4/Tensordot/Reshape:output:00model_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dk
!model_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:di
'model_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_4/Tensordot/concat_1ConcatV2+model_1/dense_4/Tensordot/GatherV2:output:0*model_1/dense_4/Tensordot/Const_2:output:00model_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_4/TensordotReshape*model_1/dense_4/Tensordot/MatMul:product:0+model_1/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������2d�
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
model_1/dense_4/BiasAddBiasAdd"model_1/dense_4/Tensordot:output:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2dt
model_1/dense_4/TanhTanh model_1/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������2d�
*model_1/dense_4/Tensordot_1/ReadVariableOpReadVariableOp1model_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0j
 model_1/dense_4/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 model_1/dense_4/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
!model_1/dense_4/Tensordot_1/ShapeShape:model_1/embedding_2/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:k
)model_1/dense_4/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$model_1/dense_4/Tensordot_1/GatherV2GatherV2*model_1/dense_4/Tensordot_1/Shape:output:0)model_1/dense_4/Tensordot_1/free:output:02model_1/dense_4/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+model_1/dense_4/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&model_1/dense_4/Tensordot_1/GatherV2_1GatherV2*model_1/dense_4/Tensordot_1/Shape:output:0)model_1/dense_4/Tensordot_1/axes:output:04model_1/dense_4/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!model_1/dense_4/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 model_1/dense_4/Tensordot_1/ProdProd-model_1/dense_4/Tensordot_1/GatherV2:output:0*model_1/dense_4/Tensordot_1/Const:output:0*
T0*
_output_shapes
: m
#model_1/dense_4/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"model_1/dense_4/Tensordot_1/Prod_1Prod/model_1/dense_4/Tensordot_1/GatherV2_1:output:0,model_1/dense_4/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: i
'model_1/dense_4/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_4/Tensordot_1/concatConcatV2)model_1/dense_4/Tensordot_1/free:output:0)model_1/dense_4/Tensordot_1/axes:output:00model_1/dense_4/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!model_1/dense_4/Tensordot_1/stackPack)model_1/dense_4/Tensordot_1/Prod:output:0+model_1/dense_4/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%model_1/dense_4/Tensordot_1/transpose	Transpose:model_1/embedding_2/embedding_lookup_1/Identity_1:output:0+model_1/dense_4/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:���������2��
#model_1/dense_4/Tensordot_1/ReshapeReshape)model_1/dense_4/Tensordot_1/transpose:y:0*model_1/dense_4/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
"model_1/dense_4/Tensordot_1/MatMulMatMul,model_1/dense_4/Tensordot_1/Reshape:output:02model_1/dense_4/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dm
#model_1/dense_4/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dk
)model_1/dense_4/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$model_1/dense_4/Tensordot_1/concat_1ConcatV2-model_1/dense_4/Tensordot_1/GatherV2:output:0,model_1/dense_4/Tensordot_1/Const_2:output:02model_1/dense_4/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_4/Tensordot_1Reshape,model_1/dense_4/Tensordot_1/MatMul:product:0-model_1/dense_4/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:���������2d�
(model_1/dense_4/BiasAdd_1/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
model_1/dense_4/BiasAdd_1BiasAdd$model_1/dense_4/Tensordot_1:output:00model_1/dense_4/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2dx
model_1/dense_4/Tanh_1Tanh"model_1/dense_4/BiasAdd_1:output:0*
T0*+
_output_shapes
:���������2dh
&model_1/lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/lambda_1/SumSummodel_1/dense_4/Tanh:y:0/model_1/lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������dj
(model_1/lambda_1/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/lambda_1/Sum_1Summodel_1/dense_4/Tanh_1:y:01model_1/lambda_1/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������d�
6model_1/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0r
-model_1/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+model_1/batch_normalization_5/batchnorm/addAddV2>model_1/batch_normalization_5/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:d�
-model_1/batch_normalization_5/batchnorm/RsqrtRsqrt/model_1/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:d�
:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
+model_1/batch_normalization_5/batchnorm/mulMul1model_1/batch_normalization_5/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
-model_1/batch_normalization_5/batchnorm/mul_1Mulmodel_1/lambda_1/Sum_1:output:0/model_1/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0�
-model_1/batch_normalization_5/batchnorm/mul_2Mul@model_1/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0�
+model_1/batch_normalization_5/batchnorm/subSub@model_1/batch_normalization_5/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
-model_1/batch_normalization_5/batchnorm/add_1AddV21model_1/batch_normalization_5/batchnorm/mul_1:z:0/model_1/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d�
6model_1/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0r
-model_1/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+model_1/batch_normalization_6/batchnorm/addAddV2>model_1/batch_normalization_6/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:d�
-model_1/batch_normalization_6/batchnorm/RsqrtRsqrt/model_1/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:d�
:model_1/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
+model_1/batch_normalization_6/batchnorm/mulMul1model_1/batch_normalization_6/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
-model_1/batch_normalization_6/batchnorm/mul_1Mulmodel_1/lambda_1/Sum:output:0/model_1/batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
8model_1/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0�
-model_1/batch_normalization_6/batchnorm/mul_2Mul@model_1/batch_normalization_6/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
8model_1/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0�
+model_1/batch_normalization_6/batchnorm/subSub@model_1/batch_normalization_6/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
-model_1/batch_normalization_6/batchnorm/add_1AddV21model_1/batch_normalization_6/batchnorm/mul_1:z:0/model_1/batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������dc
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/concatenate_1/concatConcatV21model_1/batch_normalization_5/batchnorm/add_1:z:01model_1/batch_normalization_6/batchnorm/add_1:z:0*model_1/concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
model_1/dropout_4/IdentityIdentity%model_1/concatenate_1/concat:output:0*
T0*(
_output_shapes
:�����������
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/dense_5/MatMulMatMul#model_1/dropout_4/Identity:output:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/dense_5/TanhTanh model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:����������s
model_1/dropout_5/IdentityIdentitymodel_1/dense_5/Tanh:y:0*
T0*(
_output_shapes
:�����������
6model_1/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0r
-model_1/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+model_1/batch_normalization_7/batchnorm/addAddV2>model_1/batch_normalization_7/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_7/batchnorm/RsqrtRsqrt/model_1/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:��
:model_1/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+model_1/batch_normalization_7/batchnorm/mulMul1model_1/batch_normalization_7/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_7/batchnorm/mul_1Mul#model_1/dropout_5/Identity:output:0/model_1/batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
8model_1/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
-model_1/batch_normalization_7/batchnorm/mul_2Mul@model_1/batch_normalization_7/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
8model_1/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
+model_1/batch_normalization_7/batchnorm/subSub@model_1/batch_normalization_7/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_7/batchnorm/add_1AddV21model_1/batch_normalization_7/batchnorm/mul_1:z:0/model_1/batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/dense_6/MatMulMatMul1model_1/batch_normalization_7/batchnorm/add_1:z:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/dense_6/TanhTanh model_1/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:����������s
model_1/dropout_6/IdentityIdentitymodel_1/dense_6/Tanh:y:0*
T0*(
_output_shapes
:�����������
6model_1/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0r
-model_1/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+model_1/batch_normalization_8/batchnorm/addAddV2>model_1/batch_normalization_8/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_8/batchnorm/RsqrtRsqrt/model_1/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:��
:model_1/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+model_1/batch_normalization_8/batchnorm/mulMul1model_1/batch_normalization_8/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_8/batchnorm/mul_1Mul#model_1/dropout_6/Identity:output:0/model_1/batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
8model_1/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
-model_1/batch_normalization_8/batchnorm/mul_2Mul@model_1/batch_normalization_8/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
8model_1/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
+model_1/batch_normalization_8/batchnorm/subSub@model_1/batch_normalization_8/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_8/batchnorm/add_1AddV21model_1/batch_normalization_8/batchnorm/mul_1:z:0/model_1/batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/dense_7/MatMulMatMul1model_1/batch_normalization_8/batchnorm/add_1:z:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
model_1/dense_7/TanhTanh model_1/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:����������s
model_1/dropout_7/IdentityIdentitymodel_1/dense_7/Tanh:y:0*
T0*(
_output_shapes
:�����������
6model_1/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0r
-model_1/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+model_1/batch_normalization_9/batchnorm/addAddV2>model_1/batch_normalization_9/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_9/batchnorm/RsqrtRsqrt/model_1/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:��
:model_1/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+model_1/batch_normalization_9/batchnorm/mulMul1model_1/batch_normalization_9/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_9/batchnorm/mul_1Mul#model_1/dropout_7/Identity:output:0/model_1/batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
8model_1/batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
-model_1/batch_normalization_9/batchnorm/mul_2Mul@model_1/batch_normalization_9/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
8model_1/batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
+model_1/batch_normalization_9/batchnorm/subSub@model_1/batch_normalization_9/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
-model_1/batch_normalization_9/batchnorm/add_1AddV21model_1/batch_normalization_9/batchnorm/mul_1:z:0/model_1/batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
%model_1/dense_8/MatMul/ReadVariableOpReadVariableOp.model_1_dense_8_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_1/dense_8/MatMulMatMul1model_1/batch_normalization_9/batchnorm/add_1:z:0-model_1/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_8/BiasAddBiasAdd model_1/dense_8/MatMul:product:0.model_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
model_1/dense_8/SoftmaxSoftmax model_1/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������p
IdentityIdentity!model_1/dense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^model_1/batch_normalization_5/batchnorm/ReadVariableOp9^model_1/batch_normalization_5/batchnorm/ReadVariableOp_19^model_1/batch_normalization_5/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_6/batchnorm/ReadVariableOp9^model_1/batch_normalization_6/batchnorm/ReadVariableOp_19^model_1/batch_normalization_6/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_6/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_7/batchnorm/ReadVariableOp9^model_1/batch_normalization_7/batchnorm/ReadVariableOp_19^model_1/batch_normalization_7/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_7/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_8/batchnorm/ReadVariableOp9^model_1/batch_normalization_8/batchnorm/ReadVariableOp_19^model_1/batch_normalization_8/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_8/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_9/batchnorm/ReadVariableOp9^model_1/batch_normalization_9/batchnorm/ReadVariableOp_19^model_1/batch_normalization_9/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_9/batchnorm/mul/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp)^model_1/dense_4/BiasAdd_1/ReadVariableOp)^model_1/dense_4/Tensordot/ReadVariableOp+^model_1/dense_4/Tensordot_1/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp'^model_1/dense_8/BiasAdd/ReadVariableOp&^model_1/dense_8/MatMul/ReadVariableOp%^model_1/embedding_2/embedding_lookup'^model_1/embedding_2/embedding_lookup_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6model_1/batch_normalization_5/batchnorm/ReadVariableOp6model_1/batch_normalization_5/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_18model_1/batch_normalization_5/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_28model_1/batch_normalization_5/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_6/batchnorm/ReadVariableOp6model_1/batch_normalization_6/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_6/batchnorm/ReadVariableOp_18model_1/batch_normalization_6/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_6/batchnorm/ReadVariableOp_28model_1/batch_normalization_6/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_6/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_6/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_7/batchnorm/ReadVariableOp6model_1/batch_normalization_7/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_7/batchnorm/ReadVariableOp_18model_1/batch_normalization_7/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_7/batchnorm/ReadVariableOp_28model_1/batch_normalization_7/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_7/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_7/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_8/batchnorm/ReadVariableOp6model_1/batch_normalization_8/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_8/batchnorm/ReadVariableOp_18model_1/batch_normalization_8/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_8/batchnorm/ReadVariableOp_28model_1/batch_normalization_8/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_8/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_8/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_9/batchnorm/ReadVariableOp6model_1/batch_normalization_9/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_9/batchnorm/ReadVariableOp_18model_1/batch_normalization_9/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_9/batchnorm/ReadVariableOp_28model_1/batch_normalization_9/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_9/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_9/batchnorm/mul/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2T
(model_1/dense_4/BiasAdd_1/ReadVariableOp(model_1/dense_4/BiasAdd_1/ReadVariableOp2T
(model_1/dense_4/Tensordot/ReadVariableOp(model_1/dense_4/Tensordot/ReadVariableOp2X
*model_1/dense_4/Tensordot_1/ReadVariableOp*model_1/dense_4/Tensordot_1/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp2P
&model_1/dense_8/BiasAdd/ReadVariableOp&model_1/dense_8/BiasAdd/ReadVariableOp2N
%model_1/dense_8/MatMul/ReadVariableOp%model_1/dense_8/MatMul/ReadVariableOp2L
$model_1/embedding_2/embedding_lookup$model_1/embedding_2/embedding_lookup2P
&model_1/embedding_2/embedding_lookup_1&model_1/embedding_2/embedding_lookup_1:P L
'
_output_shapes
:���������2
!
_user_specified_name	input_5:PL
'
_output_shapes
:���������2
!
_user_specified_name	input_6
�%
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_656962

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������dl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_657472M
9dense_7_kernel_regularizer_square_readvariableop_resource:
��
identity��0dense_7/kernel/Regularizer/Square/ReadVariableOp�
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_7_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_7/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp
�

�
C__inference_dense_8_layer_call_and_return_conditional_losses_657439

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_dense_7_layer_call_and_return_conditional_losses_657312

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_7/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�y
�
__inference__traced_save_657676
file_prefix5
1savev2_embedding_2_embeddings_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop9
5savev2_rmsprop_dense_4_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_4_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_5_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_5_beta_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_6_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_6_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_5_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_5_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_7_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_7_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_6_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_6_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_8_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_8_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_7_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_7_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_9_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_9_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_8_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_8_bias_rms_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_2_embeddings_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop5savev2_rmsprop_dense_4_kernel_rms_read_readvariableop3savev2_rmsprop_dense_4_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_5_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_5_beta_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_6_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_6_beta_rms_read_readvariableop5savev2_rmsprop_dense_5_kernel_rms_read_readvariableop3savev2_rmsprop_dense_5_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_7_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_7_beta_rms_read_readvariableop5savev2_rmsprop_dense_6_kernel_rms_read_readvariableop3savev2_rmsprop_dense_6_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_8_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_8_beta_rms_read_readvariableop5savev2_rmsprop_dense_7_kernel_rms_read_readvariableop3savev2_rmsprop_dense_7_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_9_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_9_beta_rms_read_readvariableop5savev2_rmsprop_dense_8_kernel_rms_read_readvariableop3savev2_rmsprop_dense_8_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *K
dtypesA
?2=	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :���:	�d:d:d:d:d:d:d:d:d:d:
��:�:�:�:�:�:
��:�:�:�:�:�:
��:�:�:�:�:�:	�:: : : : : : : : : :	�d:d:d:d:d:d:
��:�:�:�:
��:�:�:�:
��:�:�:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:���:%!

_output_shapes
:	�d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 	

_output_shapes
:d: 


_output_shapes
:d: 

_output_shapes
:d:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
:: 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :%)!

_output_shapes
:	�d: *

_output_shapes
:d: +

_output_shapes
:d: ,

_output_shapes
:d: -

_output_shapes
:d: .

_output_shapes
:d:&/"
 
_output_shapes
:
��:!0

_output_shapes	
:�:!1

_output_shapes	
:�:!2

_output_shapes	
:�:&3"
 
_output_shapes
:
��:!4

_output_shapes	
:�:!5

_output_shapes	
:�:!6

_output_shapes	
:�:&7"
 
_output_shapes
:
��:!8

_output_shapes	
:�:!9

_output_shapes	
:�:!:

_output_shapes	
:�:%;!

_output_shapes
:	�: <

_output_shapes
::=

_output_shapes
: 
�
�
C__inference_dense_6_layer_call_and_return_conditional_losses_655128

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_655443

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:���������dT
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2d:S O
+
_output_shapes
:���������2d
 
_user_specified_nameinputs
�	
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_655353

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_7_layer_call_fn_657317

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_655178a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_656848

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_654954

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_655100

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�"
C__inference_model_1_layer_call_and_return_conditional_losses_656654
inputs_0
inputs_18
#embedding_2_embedding_lookup_656358:���<
)dense_4_tensordot_readvariableop_resource:	�d5
'dense_4_biasadd_readvariableop_resource:dK
=batch_normalization_5_assignmovingavg_readvariableop_resource:dM
?batch_normalization_5_assignmovingavg_1_readvariableop_resource:dI
;batch_normalization_5_batchnorm_mul_readvariableop_resource:dE
7batch_normalization_5_batchnorm_readvariableop_resource:dK
=batch_normalization_6_assignmovingavg_readvariableop_resource:dM
?batch_normalization_6_assignmovingavg_1_readvariableop_resource:dI
;batch_normalization_6_batchnorm_mul_readvariableop_resource:dE
7batch_normalization_6_batchnorm_readvariableop_resource:d:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�L
=batch_normalization_7_assignmovingavg_readvariableop_resource:	�N
?batch_normalization_7_assignmovingavg_1_readvariableop_resource:	�J
;batch_normalization_7_batchnorm_mul_readvariableop_resource:	�F
7batch_normalization_7_batchnorm_readvariableop_resource:	�:
&dense_6_matmul_readvariableop_resource:
��6
'dense_6_biasadd_readvariableop_resource:	�L
=batch_normalization_8_assignmovingavg_readvariableop_resource:	�N
?batch_normalization_8_assignmovingavg_1_readvariableop_resource:	�J
;batch_normalization_8_batchnorm_mul_readvariableop_resource:	�F
7batch_normalization_8_batchnorm_readvariableop_resource:	�:
&dense_7_matmul_readvariableop_resource:
��6
'dense_7_biasadd_readvariableop_resource:	�L
=batch_normalization_9_assignmovingavg_readvariableop_resource:	�N
?batch_normalization_9_assignmovingavg_1_readvariableop_resource:	�J
;batch_normalization_9_batchnorm_mul_readvariableop_resource:	�F
7batch_normalization_9_batchnorm_readvariableop_resource:	�9
&dense_8_matmul_readvariableop_resource:	�5
'dense_8_biasadd_readvariableop_resource:
identity��%batch_normalization_5/AssignMovingAvg�4batch_normalization_5/AssignMovingAvg/ReadVariableOp�'batch_normalization_5/AssignMovingAvg_1�6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_5/batchnorm/ReadVariableOp�2batch_normalization_5/batchnorm/mul/ReadVariableOp�%batch_normalization_6/AssignMovingAvg�4batch_normalization_6/AssignMovingAvg/ReadVariableOp�'batch_normalization_6/AssignMovingAvg_1�6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_6/batchnorm/ReadVariableOp�2batch_normalization_6/batchnorm/mul/ReadVariableOp�%batch_normalization_7/AssignMovingAvg�4batch_normalization_7/AssignMovingAvg/ReadVariableOp�'batch_normalization_7/AssignMovingAvg_1�6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_7/batchnorm/ReadVariableOp�2batch_normalization_7/batchnorm/mul/ReadVariableOp�%batch_normalization_8/AssignMovingAvg�4batch_normalization_8/AssignMovingAvg/ReadVariableOp�'batch_normalization_8/AssignMovingAvg_1�6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_8/batchnorm/ReadVariableOp�2batch_normalization_8/batchnorm/mul/ReadVariableOp�%batch_normalization_9/AssignMovingAvg�4batch_normalization_9/AssignMovingAvg/ReadVariableOp�'batch_normalization_9/AssignMovingAvg_1�6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_9/batchnorm/ReadVariableOp�2batch_normalization_9/batchnorm/mul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/BiasAdd_1/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�"dense_4/Tensordot_1/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�0dense_7/kernel/Regularizer/Square/ReadVariableOp�dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�embedding_2/embedding_lookup�embedding_2/embedding_lookup_1�
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_656358inputs_1*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/656358*,
_output_shapes
:���������2�*
dtype0�
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/656358*,
_output_shapes
:���������2��
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:���������2��
embedding_2/embedding_lookup_1ResourceGather#embedding_2_embedding_lookup_656358inputs_0*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/656358*,
_output_shapes
:���������2�*
dtype0�
'embedding_2/embedding_lookup_1/IdentityIdentity'embedding_2/embedding_lookup_1:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/656358*,
_output_shapes
:���������2��
)embedding_2/embedding_lookup_1/Identity_1Identity0embedding_2/embedding_lookup_1/Identity:output:0*
T0*,
_output_shapes
:���������2��
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
dense_4/Tensordot/ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/transpose	Transpose0embedding_2/embedding_lookup/Identity_1:output:0!dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:���������2��
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dc
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:da
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������2d�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2dd
dense_4/TanhTanhdense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������2d�
"dense_4/Tensordot_1/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0b
dense_4/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense_4/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
dense_4/Tensordot_1/ShapeShape2embedding_2/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:c
!dense_4/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot_1/GatherV2GatherV2"dense_4/Tensordot_1/Shape:output:0!dense_4/Tensordot_1/free:output:0*dense_4/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
#dense_4/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot_1/GatherV2_1GatherV2"dense_4/Tensordot_1/Shape:output:0!dense_4/Tensordot_1/axes:output:0,dense_4/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
dense_4/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot_1/ProdProd%dense_4/Tensordot_1/GatherV2:output:0"dense_4/Tensordot_1/Const:output:0*
T0*
_output_shapes
: e
dense_4/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot_1/Prod_1Prod'dense_4/Tensordot_1/GatherV2_1:output:0$dense_4/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: a
dense_4/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot_1/concatConcatV2!dense_4/Tensordot_1/free:output:0!dense_4/Tensordot_1/axes:output:0(dense_4/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot_1/stackPack!dense_4/Tensordot_1/Prod:output:0#dense_4/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot_1/transpose	Transpose2embedding_2/embedding_lookup_1/Identity_1:output:0#dense_4/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:���������2��
dense_4/Tensordot_1/ReshapeReshape!dense_4/Tensordot_1/transpose:y:0"dense_4/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot_1/MatMulMatMul$dense_4/Tensordot_1/Reshape:output:0*dense_4/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������de
dense_4/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dc
!dense_4/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot_1/concat_1ConcatV2%dense_4/Tensordot_1/GatherV2:output:0$dense_4/Tensordot_1/Const_2:output:0*dense_4/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot_1Reshape$dense_4/Tensordot_1/MatMul:product:0%dense_4/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:���������2d�
 dense_4/BiasAdd_1/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_4/BiasAdd_1BiasAdddense_4/Tensordot_1:output:0(dense_4/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2dh
dense_4/Tanh_1Tanhdense_4/BiasAdd_1:output:0*
T0*+
_output_shapes
:���������2d`
lambda_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
lambda_1/SumSumdense_4/Tanh:y:0'lambda_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������db
 lambda_1/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
lambda_1/Sum_1Sumdense_4/Tanh_1:y:0)lambda_1/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:���������d~
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_5/moments/meanMeanlambda_1/Sum_1:output:0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(�
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes

:d�
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferencelambda_1/Sum_1:output:03batch_normalization_5/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������d�
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(�
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 �
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 p
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes
:d�
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes
:d�
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:d|
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:d�
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
%batch_normalization_5/batchnorm/mul_1Mullambda_1/Sum_1:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0�
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d~
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_6/moments/meanMeanlambda_1/Sum:output:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(�
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes

:d�
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferencelambda_1/Sum:output:03batch_normalization_6/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������d�
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(�
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 �
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 p
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0*
T0*
_output_shapes
:d�
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0*
T0*
_output_shapes
:d�
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:d|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:d�
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
%batch_normalization_6/batchnorm/mul_1Mullambda_1/Sum:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0�
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_1/concatConcatV2)batch_normalization_5/batchnorm/add_1:z:0)batch_normalization_6/batchnorm/add_1:z:0"concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_4/dropout/MulMulconcatenate_1/concat:output:0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:����������d
dropout_4/dropout/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
:�
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/MatMulMatMuldropout_4/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/TanhTanhdense_5/BiasAdd:output:0*
T0*(
_output_shapes
:����������\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_5/dropout/MulMuldense_5/Tanh:y:0 dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:����������W
dropout_5/dropout/ShapeShapedense_5/Tanh:y:0*
T0*
_output_shapes
:�
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:����������~
4batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_7/moments/meanMeandropout_5/dropout/Mul_1:z:0=batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
*batch_normalization_7/moments/StopGradientStopGradient+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes
:	��
/batch_normalization_7/moments/SquaredDifferenceSquaredDifferencedropout_5/dropout/Mul_1:z:03batch_normalization_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
8batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_7/moments/varianceMean3batch_normalization_7/moments/SquaredDifference:z:0Abatch_normalization_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
%batch_normalization_7/moments/SqueezeSqueeze+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
'batch_normalization_7/moments/Squeeze_1Squeeze/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 p
+batch_normalization_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)batch_normalization_7/AssignMovingAvg/subSub<batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_7/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
)batch_normalization_7/AssignMovingAvg/mulMul-batch_normalization_7/AssignMovingAvg/sub:z:04batch_normalization_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
%batch_normalization_7/AssignMovingAvgAssignSubVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource-batch_normalization_7/AssignMovingAvg/mul:z:05^batch_normalization_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+batch_normalization_7/AssignMovingAvg_1/subSub>batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_7/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
+batch_normalization_7/AssignMovingAvg_1/mulMul/batch_normalization_7/AssignMovingAvg_1/sub:z:06batch_normalization_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
'batch_normalization_7/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource/batch_normalization_7/AssignMovingAvg_1/mul:z:07^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_7/batchnorm/addAddV20batch_normalization_7/moments/Squeeze_1:output:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_7/batchnorm/mul_1Muldropout_5/dropout/Mul_1:z:0'batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
%batch_normalization_7/batchnorm/mul_2Mul.batch_normalization_7/moments/Squeeze:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_7/batchnorm/subSub6batch_normalization_7/batchnorm/ReadVariableOp:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_6/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_6/TanhTanhdense_6/BiasAdd:output:0*
T0*(
_output_shapes
:����������\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_6/dropout/MulMuldense_6/Tanh:y:0 dropout_6/dropout/Const:output:0*
T0*(
_output_shapes
:����������W
dropout_6/dropout/ShapeShapedense_6/Tanh:y:0*
T0*
_output_shapes
:�
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*(
_output_shapes
:����������~
4batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_8/moments/meanMeandropout_6/dropout/Mul_1:z:0=batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
*batch_normalization_8/moments/StopGradientStopGradient+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes
:	��
/batch_normalization_8/moments/SquaredDifferenceSquaredDifferencedropout_6/dropout/Mul_1:z:03batch_normalization_8/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
8batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_8/moments/varianceMean3batch_normalization_8/moments/SquaredDifference:z:0Abatch_normalization_8/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
%batch_normalization_8/moments/SqueezeSqueeze+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
'batch_normalization_8/moments/Squeeze_1Squeeze/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 p
+batch_normalization_8/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)batch_normalization_8/AssignMovingAvg/subSub<batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_8/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
)batch_normalization_8/AssignMovingAvg/mulMul-batch_normalization_8/AssignMovingAvg/sub:z:04batch_normalization_8/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
%batch_normalization_8/AssignMovingAvgAssignSubVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource-batch_normalization_8/AssignMovingAvg/mul:z:05^batch_normalization_8/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_8/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+batch_normalization_8/AssignMovingAvg_1/subSub>batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_8/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
+batch_normalization_8/AssignMovingAvg_1/mulMul/batch_normalization_8/AssignMovingAvg_1/sub:z:06batch_normalization_8/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
'batch_normalization_8/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource/batch_normalization_8/AssignMovingAvg_1/mul:z:07^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_8/batchnorm/addAddV20batch_normalization_8/moments/Squeeze_1:output:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_8/batchnorm/mul_1Muldropout_6/dropout/Mul_1:z:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
%batch_normalization_8/batchnorm/mul_2Mul.batch_normalization_8/moments/Squeeze:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_8/batchnorm/subSub6batch_normalization_8/batchnorm/ReadVariableOp:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_7/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_7/TanhTanhdense_7/BiasAdd:output:0*
T0*(
_output_shapes
:����������\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_7/dropout/MulMuldense_7/Tanh:y:0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:����������W
dropout_7/dropout/ShapeShapedense_7/Tanh:y:0*
T0*
_output_shapes
:�
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:����������~
4batch_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_9/moments/meanMeandropout_7/dropout/Mul_1:z:0=batch_normalization_9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
*batch_normalization_9/moments/StopGradientStopGradient+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes
:	��
/batch_normalization_9/moments/SquaredDifferenceSquaredDifferencedropout_7/dropout/Mul_1:z:03batch_normalization_9/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
8batch_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_9/moments/varianceMean3batch_normalization_9/moments/SquaredDifference:z:0Abatch_normalization_9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
%batch_normalization_9/moments/SqueezeSqueeze+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
'batch_normalization_9/moments/Squeeze_1Squeeze/batch_normalization_9/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 p
+batch_normalization_9/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_9_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)batch_normalization_9/AssignMovingAvg/subSub<batch_normalization_9/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_9/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
)batch_normalization_9/AssignMovingAvg/mulMul-batch_normalization_9/AssignMovingAvg/sub:z:04batch_normalization_9/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
%batch_normalization_9/AssignMovingAvgAssignSubVariableOp=batch_normalization_9_assignmovingavg_readvariableop_resource-batch_normalization_9/AssignMovingAvg/mul:z:05^batch_normalization_9/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_9/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_9_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+batch_normalization_9/AssignMovingAvg_1/subSub>batch_normalization_9/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_9/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
+batch_normalization_9/AssignMovingAvg_1/mulMul/batch_normalization_9/AssignMovingAvg_1/sub:z:06batch_normalization_9/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
'batch_normalization_9/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_9_assignmovingavg_1_readvariableop_resource/batch_normalization_9/AssignMovingAvg_1/mul:z:07^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_9/batchnorm/addAddV20batch_normalization_9/moments/Squeeze_1:output:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_9/batchnorm/mul_1Muldropout_7/dropout/Mul_1:z:0'batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
%batch_normalization_9/batchnorm/mul_2Mul.batch_normalization_9/moments/Squeeze:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_9/batchnorm/subSub6batch_normalization_9/batchnorm/ReadVariableOp:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_8/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:����������
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/BiasAdd_1/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp#^dense_4/Tensordot_1/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^embedding_2/embedding_lookup^embedding_2/embedding_lookup_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2N
%batch_normalization_7/AssignMovingAvg%batch_normalization_7/AssignMovingAvg2l
4batch_normalization_7/AssignMovingAvg/ReadVariableOp4batch_normalization_7/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_1'batch_normalization_7/AssignMovingAvg_12p
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2N
%batch_normalization_8/AssignMovingAvg%batch_normalization_8/AssignMovingAvg2l
4batch_normalization_8/AssignMovingAvg/ReadVariableOp4batch_normalization_8/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_8/AssignMovingAvg_1'batch_normalization_8/AssignMovingAvg_12p
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2N
%batch_normalization_9/AssignMovingAvg%batch_normalization_9/AssignMovingAvg2l
4batch_normalization_9/AssignMovingAvg/ReadVariableOp4batch_normalization_9/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_9/AssignMovingAvg_1'batch_normalization_9/AssignMovingAvg_12p
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/BiasAdd_1/ReadVariableOp dense_4/BiasAdd_1/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2H
"dense_4/Tensordot_1/ReadVariableOp"dense_4/Tensordot_1/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2@
embedding_2/embedding_lookup_1embedding_2/embedding_lookup_1:Q M
'
_output_shapes
:���������2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������2
"
_user_specified_name
inputs/1
�
�
$__inference_signature_wrapper_656724
input_5
input_6
unknown:���
	unknown_0:	�d
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:d
	unknown_5:d
	unknown_6:d
	unknown_7:d
	unknown_8:d
	unknown_9:d

unknown_10:
��

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:
��

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_5input_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*A
_read_only_resource_inputs#
!	
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_654555o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������2
!
_user_specified_name	input_5:PL
'
_output_shapes
:���������2
!
_user_specified_name	input_6
�	
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_657002

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_657246

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_657049

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_dense_4_layer_call_and_return_conditional_losses_655020

inputs4
!tensordot_readvariableop_resource:	�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:���������2��
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������2dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2dT
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:���������2d[
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:���������2dz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������2�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:���������2�
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_654743

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_dense_6_layer_call_and_return_conditional_losses_657173

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�x
�
C__inference_model_1_layer_call_and_return_conditional_losses_655884
input_5
input_6'
embedding_2_655780:���!
dense_4_655785:	�d
dense_4_655787:d*
batch_normalization_5_655795:d*
batch_normalization_5_655797:d*
batch_normalization_5_655799:d*
batch_normalization_5_655801:d*
batch_normalization_6_655804:d*
batch_normalization_6_655806:d*
batch_normalization_6_655808:d*
batch_normalization_6_655810:d"
dense_5_655815:
��
dense_5_655817:	�+
batch_normalization_7_655821:	�+
batch_normalization_7_655823:	�+
batch_normalization_7_655825:	�+
batch_normalization_7_655827:	�"
dense_6_655830:
��
dense_6_655832:	�+
batch_normalization_8_655836:	�+
batch_normalization_8_655838:	�+
batch_normalization_8_655840:	�+
batch_normalization_8_655842:	�"
dense_7_655845:
��
dense_7_655847:	�+
batch_normalization_9_655851:	�+
batch_normalization_9_655853:	�+
batch_normalization_9_655855:	�+
batch_normalization_9_655857:	�!
dense_8_655860:	�
dense_8_655862:
identity��-batch_normalization_5/StatefulPartitionedCall�-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�-batch_normalization_9/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�!dense_4/StatefulPartitionedCall_1�dense_5/StatefulPartitionedCall�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/StatefulPartitionedCall�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/StatefulPartitionedCall�0dense_7/kernel/Regularizer/Square/ReadVariableOp�dense_8/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�%embedding_2/StatefulPartitionedCall_1�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_6embedding_2_655780*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983�
%embedding_2/StatefulPartitionedCall_1StatefulPartitionedCallinput_5embedding_2_655780*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983�
dense_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0dense_4_655785dense_4_655787*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020�
!dense_4/StatefulPartitionedCall_1StatefulPartitionedCall.embedding_2/StatefulPartitionedCall_1:output:0dense_4_655785dense_4_655787*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020�
lambda_1/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655035�
lambda_1/PartitionedCall_1PartitionedCall*dense_4/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655035�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall#lambda_1/PartitionedCall_1:output:0batch_normalization_5_655795batch_normalization_5_655797batch_normalization_5_655799batch_normalization_5_655801*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_654579�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0batch_normalization_6_655804batch_normalization_6_655806batch_normalization_6_655808batch_normalization_6_655810*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_654661�
concatenate_1/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:06batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_655063�
dropout_4/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_655070�
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_5_655815dense_5_655817*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_655089�
dropout_5/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_655100�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0batch_normalization_7_655821batch_normalization_7_655823batch_normalization_7_655825batch_normalization_7_655827*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_654743�
dense_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_6_655830dense_6_655832*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_655128�
dropout_6/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_655139�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0batch_normalization_8_655836batch_normalization_8_655838batch_normalization_8_655840batch_normalization_8_655842*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_654825�
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_7_655845dense_7_655847*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_655167�
dropout_7/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_655178�
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0batch_normalization_9_655851batch_normalization_9_655853batch_normalization_9_655855batch_normalization_9_655857*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_654907�
dense_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_8_655860dense_8_655862*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_655200�
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_655815* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_655830* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7_655845* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dense_4/StatefulPartitionedCall_1 ^dense_5/StatefulPartitionedCall1^dense_5/kernel/Regularizer/Square/ReadVariableOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall1^dense_7/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall&^embedding_2/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!dense_4/StatefulPartitionedCall_1!dense_4/StatefulPartitionedCall_12B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2N
%embedding_2/StatefulPartitionedCall_1%embedding_2/StatefulPartitionedCall_1:P L
'
_output_shapes
:���������2
!
_user_specified_name	input_5:PL
'
_output_shapes
:���������2
!
_user_specified_name	input_6
�
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_655178

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
d
E__inference_dropout_6_layer_call_and_return_conditional_losses_657200

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_657419

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_5_layer_call_fn_656815

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_654579o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_654708

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������dl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_657280

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_654872

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_657327

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
u
I__inference_concatenate_1_layer_call_and_return_conditional_losses_656975
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :x
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
inputs/1
�
�
6__inference_batch_normalization_9_layer_call_fn_657365

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_654954p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_dense_8_layer_call_fn_657428

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_655200o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_5_layer_call_fn_657039

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_655100a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_656796

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:���������dT
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2d:S O
+
_output_shapes
:���������2d
 
_user_specified_nameinputs
�
c
*__inference_dropout_6_layer_call_fn_657183

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_655353p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_9_layer_call_fn_657352

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_654907p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_657450M
9dense_5_kernel_regularizer_square_readvariableop_resource:
��
identity��0dense_5/kernel/Regularizer/Square/ReadVariableOp�
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_5_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp
�
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_655139

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_654790

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_657107

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_657461M
9dense_6_kernel_regularizer_square_readvariableop_resource:
��
identity��0dense_6/kernel/Regularizer/Square/ReadVariableOp�
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_6_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentity"dense_6/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: y
NoOpNoOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp
�
�
(__inference_model_1_layer_call_fn_655290
input_5
input_6
unknown:���
	unknown_0:	�d
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:d
	unknown_5:d
	unknown_6:d
	unknown_7:d
	unknown_8:d
	unknown_9:d

unknown_10:
��

unknown_11:	�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:
��

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_5input_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*A
_read_only_resource_inputs#
!	
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_655225o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������2
!
_user_specified_name	input_5:PL
'
_output_shapes
:���������2
!
_user_specified_name	input_6
�
Z
.__inference_concatenate_1_layer_call_fn_656968
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_655063a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
inputs/1
�	
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_657061

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�'
"__inference__traced_restore_657866
file_prefix<
'assignvariableop_embedding_2_embeddings:���4
!assignvariableop_1_dense_4_kernel:	�d-
assignvariableop_2_dense_4_bias:d<
.assignvariableop_3_batch_normalization_5_gamma:d;
-assignvariableop_4_batch_normalization_5_beta:dB
4assignvariableop_5_batch_normalization_5_moving_mean:dF
8assignvariableop_6_batch_normalization_5_moving_variance:d<
.assignvariableop_7_batch_normalization_6_gamma:d;
-assignvariableop_8_batch_normalization_6_beta:dB
4assignvariableop_9_batch_normalization_6_moving_mean:dG
9assignvariableop_10_batch_normalization_6_moving_variance:d6
"assignvariableop_11_dense_5_kernel:
��/
 assignvariableop_12_dense_5_bias:	�>
/assignvariableop_13_batch_normalization_7_gamma:	�=
.assignvariableop_14_batch_normalization_7_beta:	�D
5assignvariableop_15_batch_normalization_7_moving_mean:	�H
9assignvariableop_16_batch_normalization_7_moving_variance:	�6
"assignvariableop_17_dense_6_kernel:
��/
 assignvariableop_18_dense_6_bias:	�>
/assignvariableop_19_batch_normalization_8_gamma:	�=
.assignvariableop_20_batch_normalization_8_beta:	�D
5assignvariableop_21_batch_normalization_8_moving_mean:	�H
9assignvariableop_22_batch_normalization_8_moving_variance:	�6
"assignvariableop_23_dense_7_kernel:
��/
 assignvariableop_24_dense_7_bias:	�>
/assignvariableop_25_batch_normalization_9_gamma:	�=
.assignvariableop_26_batch_normalization_9_beta:	�D
5assignvariableop_27_batch_normalization_9_moving_mean:	�H
9assignvariableop_28_batch_normalization_9_moving_variance:	�5
"assignvariableop_29_dense_8_kernel:	�.
 assignvariableop_30_dense_8_bias:*
 assignvariableop_31_rmsprop_iter:	 +
!assignvariableop_32_rmsprop_decay: 3
)assignvariableop_33_rmsprop_learning_rate: .
$assignvariableop_34_rmsprop_momentum: )
assignvariableop_35_rmsprop_rho: #
assignvariableop_36_total: #
assignvariableop_37_count: %
assignvariableop_38_total_1: %
assignvariableop_39_count_1: A
.assignvariableop_40_rmsprop_dense_4_kernel_rms:	�d:
,assignvariableop_41_rmsprop_dense_4_bias_rms:dI
;assignvariableop_42_rmsprop_batch_normalization_5_gamma_rms:dH
:assignvariableop_43_rmsprop_batch_normalization_5_beta_rms:dI
;assignvariableop_44_rmsprop_batch_normalization_6_gamma_rms:dH
:assignvariableop_45_rmsprop_batch_normalization_6_beta_rms:dB
.assignvariableop_46_rmsprop_dense_5_kernel_rms:
��;
,assignvariableop_47_rmsprop_dense_5_bias_rms:	�J
;assignvariableop_48_rmsprop_batch_normalization_7_gamma_rms:	�I
:assignvariableop_49_rmsprop_batch_normalization_7_beta_rms:	�B
.assignvariableop_50_rmsprop_dense_6_kernel_rms:
��;
,assignvariableop_51_rmsprop_dense_6_bias_rms:	�J
;assignvariableop_52_rmsprop_batch_normalization_8_gamma_rms:	�I
:assignvariableop_53_rmsprop_batch_normalization_8_beta_rms:	�B
.assignvariableop_54_rmsprop_dense_7_kernel_rms:
��;
,assignvariableop_55_rmsprop_dense_7_bias_rms:	�J
;assignvariableop_56_rmsprop_batch_normalization_9_gamma_rms:	�I
:assignvariableop_57_rmsprop_batch_normalization_9_beta_rms:	�A
.assignvariableop_58_rmsprop_dense_8_kernel_rms:	�:
,assignvariableop_59_rmsprop_dense_8_bias_rms:
identity_61��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*K
dtypesA
?2=	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp'assignvariableop_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_4_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_4_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_5_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp-assignvariableop_4_batch_normalization_5_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp4assignvariableop_5_batch_normalization_5_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp8assignvariableop_6_batch_normalization_5_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_6_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp-assignvariableop_8_batch_normalization_6_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp4assignvariableop_9_batch_normalization_6_moving_meanIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp9assignvariableop_10_batch_normalization_6_moving_varianceIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_5_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_5_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_batch_normalization_7_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp.assignvariableop_14_batch_normalization_7_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp5assignvariableop_15_batch_normalization_7_moving_meanIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp9assignvariableop_16_batch_normalization_7_moving_varianceIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp"assignvariableop_17_dense_6_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp assignvariableop_18_dense_6_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_batch_normalization_8_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp.assignvariableop_20_batch_normalization_8_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp5assignvariableop_21_batch_normalization_8_moving_meanIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp9assignvariableop_22_batch_normalization_8_moving_varianceIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp"assignvariableop_23_dense_7_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp assignvariableop_24_dense_7_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp/assignvariableop_25_batch_normalization_9_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp.assignvariableop_26_batch_normalization_9_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp5assignvariableop_27_batch_normalization_9_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp9assignvariableop_28_batch_normalization_9_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp"assignvariableop_29_dense_8_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp assignvariableop_30_dense_8_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp assignvariableop_31_rmsprop_iterIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp!assignvariableop_32_rmsprop_decayIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_rmsprop_learning_rateIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp$assignvariableop_34_rmsprop_momentumIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_rmsprop_rhoIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_totalIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_countIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp.assignvariableop_40_rmsprop_dense_4_kernel_rmsIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp,assignvariableop_41_rmsprop_dense_4_bias_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp;assignvariableop_42_rmsprop_batch_normalization_5_gamma_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp:assignvariableop_43_rmsprop_batch_normalization_5_beta_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp;assignvariableop_44_rmsprop_batch_normalization_6_gamma_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp:assignvariableop_45_rmsprop_batch_normalization_6_beta_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp.assignvariableop_46_rmsprop_dense_5_kernel_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp,assignvariableop_47_rmsprop_dense_5_bias_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp;assignvariableop_48_rmsprop_batch_normalization_7_gamma_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp:assignvariableop_49_rmsprop_batch_normalization_7_beta_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp.assignvariableop_50_rmsprop_dense_6_kernel_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp,assignvariableop_51_rmsprop_dense_6_bias_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp;assignvariableop_52_rmsprop_batch_normalization_8_gamma_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp:assignvariableop_53_rmsprop_batch_normalization_8_beta_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp.assignvariableop_54_rmsprop_dense_7_kernel_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp,assignvariableop_55_rmsprop_dense_7_bias_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp;assignvariableop_56_rmsprop_batch_normalization_9_gamma_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp:assignvariableop_57_rmsprop_batch_normalization_9_beta_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp.assignvariableop_58_rmsprop_dense_8_kernel_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp,assignvariableop_59_rmsprop_dense_8_bias_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_60Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_61IdentityIdentity_60:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_61Identity_61:output:0*�
_input_shapes|
z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_655419

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
,__inference_embedding_2_layer_call_fn_656731

inputs
unknown:���
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������2�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������2: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
C__inference_dense_5_layer_call_and_return_conditional_losses_655089

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:�����������
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_656802

inputs
identityW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :d
SumSuminputsSum/reduction_indices:output:0*
T0*'
_output_shapes
:���������dT
IdentityIdentitySum:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2d:S O
+
_output_shapes
:���������2d
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_8_layer_call_fn_657213

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_654825p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�~
�
C__inference_model_1_layer_call_and_return_conditional_losses_655992
input_5
input_6'
embedding_2_655888:���!
dense_4_655893:	�d
dense_4_655895:d*
batch_normalization_5_655903:d*
batch_normalization_5_655905:d*
batch_normalization_5_655907:d*
batch_normalization_5_655909:d*
batch_normalization_6_655912:d*
batch_normalization_6_655914:d*
batch_normalization_6_655916:d*
batch_normalization_6_655918:d"
dense_5_655923:
��
dense_5_655925:	�+
batch_normalization_7_655929:	�+
batch_normalization_7_655931:	�+
batch_normalization_7_655933:	�+
batch_normalization_7_655935:	�"
dense_6_655938:
��
dense_6_655940:	�+
batch_normalization_8_655944:	�+
batch_normalization_8_655946:	�+
batch_normalization_8_655948:	�+
batch_normalization_8_655950:	�"
dense_7_655953:
��
dense_7_655955:	�+
batch_normalization_9_655959:	�+
batch_normalization_9_655961:	�+
batch_normalization_9_655963:	�+
batch_normalization_9_655965:	�!
dense_8_655968:	�
dense_8_655970:
identity��-batch_normalization_5/StatefulPartitionedCall�-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�-batch_normalization_9/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�!dense_4/StatefulPartitionedCall_1�dense_5/StatefulPartitionedCall�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/StatefulPartitionedCall�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/StatefulPartitionedCall�0dense_7/kernel/Regularizer/Square/ReadVariableOp�dense_8/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�!dropout_5/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�%embedding_2/StatefulPartitionedCall_1�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_6embedding_2_655888*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983�
%embedding_2/StatefulPartitionedCall_1StatefulPartitionedCallinput_5embedding_2_655888*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������2�*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_654983�
dense_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0dense_4_655893dense_4_655895*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020�
!dense_4/StatefulPartitionedCall_1StatefulPartitionedCall.embedding_2/StatefulPartitionedCall_1:output:0dense_4_655893dense_4_655895*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020�
lambda_1/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655443�
lambda_1/PartitionedCall_1PartitionedCall*dense_4/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_655443�
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall#lambda_1/PartitionedCall_1:output:0batch_normalization_5_655903batch_normalization_5_655905batch_normalization_5_655907batch_normalization_5_655909*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_654626�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0batch_normalization_6_655912batch_normalization_6_655914batch_normalization_6_655916batch_normalization_6_655918*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_654708�
concatenate_1/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:06batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_655063�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_655419�
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_5_655923dense_5_655925*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_655089�
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_655386�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0batch_normalization_7_655929batch_normalization_7_655931batch_normalization_7_655933batch_normalization_7_655935*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_654790�
dense_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_6_655938dense_6_655940*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_655128�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_655353�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0batch_normalization_8_655944batch_normalization_8_655946batch_normalization_8_655948batch_normalization_8_655950*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_654872�
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_7_655953dense_7_655955*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_655167�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_655320�
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0batch_normalization_9_655959batch_normalization_9_655961batch_normalization_9_655963batch_normalization_9_655965*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_654954�
dense_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_8_655968dense_8_655970*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_655200�
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_655923* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_655938* 
_output_shapes
:
��*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7_655953* 
_output_shapes
:
��*
dtype0�
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: e
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�7�6�
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall"^dense_4/StatefulPartitionedCall_1 ^dense_5/StatefulPartitionedCall1^dense_5/kernel/Regularizer/Square/ReadVariableOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall1^dense_7/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall&^embedding_2/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������2:���������2: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2F
!dense_4/StatefulPartitionedCall_1!dense_4/StatefulPartitionedCall_12B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2N
%embedding_2/StatefulPartitionedCall_1%embedding_2/StatefulPartitionedCall_1:P L
'
_output_shapes
:���������2
!
_user_specified_name	input_5:PL
'
_output_shapes
:���������2
!
_user_specified_name	input_6
�
�
(__inference_dense_5_layer_call_fn_657017

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_655089p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
*__inference_dropout_7_layer_call_fn_657322

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_655320p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_657385

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_7_layer_call_fn_657087

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_654790p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_dense_4_layer_call_fn_656749

inputs
unknown:	�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_655020s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������2�: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������2�
 
_user_specified_nameinputs
�
�
(__inference_dense_7_layer_call_fn_657295

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_655167p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
C__inference_dense_4_layer_call_and_return_conditional_losses_656780

inputs4
!tensordot_readvariableop_resource:	�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:���������2��
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������2dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2dT
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:���������2d[
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:���������2dz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������2�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:���������2�
 
_user_specified_nameinputs
�
F
*__inference_dropout_6_layer_call_fn_657178

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_655139a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_50
serving_default_input_5:0���������2
;
input_60
serving_default_input_6:0���������2;
dense_80
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
layer-16
layer_with_weights-9
layer-17
layer_with_weights-10
layer-18
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�

embeddings
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
�
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
�
=axis
	>gamma
?beta
@moving_mean
Amoving_variance
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R_random_generator
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a_random_generator
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
�
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
�

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{_random_generator
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
�
~axis
	gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�_random_generator
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�iter

�decay
�learning_rate
�momentum
�rho
$rms�
%rms�
3rms�
4rms�
>rms�
?rms�
Urms�
Vrms�
erms�
frms�
orms�
prms�
rms��rms��rms��rms��rms��rms��rms��rms�"
	optimizer
�
0
$1
%2
33
44
55
66
>7
?8
@9
A10
U11
V12
e13
f14
g15
h16
o17
p18
19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30"
trackable_list_wrapper
�
$0
%1
32
43
>4
?5
U6
V7
e8
f9
o10
p11
12
�13
�14
�15
�16
�17
�18
�19"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_model_1_layer_call_fn_655290
(__inference_model_1_layer_call_fn_656084
(__inference_model_1_layer_call_fn_656152
(__inference_model_1_layer_call_fn_655776�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_model_1_layer_call_and_return_conditional_losses_656354
C__inference_model_1_layer_call_and_return_conditional_losses_656654
C__inference_model_1_layer_call_and_return_conditional_losses_655884
C__inference_model_1_layer_call_and_return_conditional_losses_655992�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_654555input_5input_6"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
-
�serving_default"
signature_map
+:)���2embedding_2/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_embedding_2_layer_call_fn_656731�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_embedding_2_layer_call_and_return_conditional_losses_656740�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
!:	�d2dense_4/kernel
:d2dense_4/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_4_layer_call_fn_656749�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_4_layer_call_and_return_conditional_losses_656780�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_lambda_1_layer_call_fn_656785
)__inference_lambda_1_layer_call_fn_656790�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_lambda_1_layer_call_and_return_conditional_losses_656796
D__inference_lambda_1_layer_call_and_return_conditional_losses_656802�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
):'d2batch_normalization_5/gamma
(:&d2batch_normalization_5/beta
1:/d (2!batch_normalization_5/moving_mean
5:3d (2%batch_normalization_5/moving_variance
<
30
41
52
63"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�2�
6__inference_batch_normalization_5_layer_call_fn_656815
6__inference_batch_normalization_5_layer_call_fn_656828�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_656848
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_656882�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
):'d2batch_normalization_6/gamma
(:&d2batch_normalization_6/beta
1:/d (2!batch_normalization_6/moving_mean
5:3d (2%batch_normalization_6/moving_variance
<
>0
?1
@2
A3"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�2�
6__inference_batch_normalization_6_layer_call_fn_656895
6__inference_batch_normalization_6_layer_call_fn_656908�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_656928
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_656962�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�2�
.__inference_concatenate_1_layer_call_fn_656968�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_concatenate_1_layer_call_and_return_conditional_losses_656975�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
*__inference_dropout_4_layer_call_fn_656980
*__inference_dropout_4_layer_call_fn_656985�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_4_layer_call_and_return_conditional_losses_656990
E__inference_dropout_4_layer_call_and_return_conditional_losses_657002�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
": 
��2dense_5/kernel
:�2dense_5/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_5_layer_call_fn_657017�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_5_layer_call_and_return_conditional_losses_657034�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
*__inference_dropout_5_layer_call_fn_657039
*__inference_dropout_5_layer_call_fn_657044�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_5_layer_call_and_return_conditional_losses_657049
E__inference_dropout_5_layer_call_and_return_conditional_losses_657061�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
*:(�2batch_normalization_7/gamma
):'�2batch_normalization_7/beta
2:0� (2!batch_normalization_7/moving_mean
6:4� (2%batch_normalization_7/moving_variance
<
e0
f1
g2
h3"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
�2�
6__inference_batch_normalization_7_layer_call_fn_657074
6__inference_batch_normalization_7_layer_call_fn_657087�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_657107
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_657141�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
": 
��2dense_6/kernel
:�2dense_6/bias
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_6_layer_call_fn_657156�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_6_layer_call_and_return_conditional_losses_657173�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
*__inference_dropout_6_layer_call_fn_657178
*__inference_dropout_6_layer_call_fn_657183�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_6_layer_call_and_return_conditional_losses_657188
E__inference_dropout_6_layer_call_and_return_conditional_losses_657200�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
*:(�2batch_normalization_8/gamma
):'�2batch_normalization_8/beta
2:0� (2!batch_normalization_8/moving_mean
6:4� (2%batch_normalization_8/moving_variance
?
0
�1
�2
�3"
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
6__inference_batch_normalization_8_layer_call_fn_657213
6__inference_batch_normalization_8_layer_call_fn_657226�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_657246
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_657280�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
": 
��2dense_7/kernel
:�2dense_7/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_7_layer_call_fn_657295�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_7_layer_call_and_return_conditional_losses_657312�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
*__inference_dropout_7_layer_call_fn_657317
*__inference_dropout_7_layer_call_fn_657322�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_7_layer_call_and_return_conditional_losses_657327
E__inference_dropout_7_layer_call_and_return_conditional_losses_657339�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
*:(�2batch_normalization_9/gamma
):'�2batch_normalization_9/beta
2:0� (2!batch_normalization_9/moving_mean
6:4� (2%batch_normalization_9/moving_variance
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
6__inference_batch_normalization_9_layer_call_fn_657352
6__inference_batch_normalization_9_layer_call_fn_657365�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_657385
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_657419�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
!:	�2dense_8/kernel
:2dense_8/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_dense_8_layer_call_fn_657428�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_8_layer_call_and_return_conditional_losses_657439�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
�2�
__inference_loss_fn_0_657450�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_657461�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_2_657472�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
r
0
51
62
@3
A4
g5
h6
�7
�8
�9
�10"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_signature_wrapper_656724input_5input_6"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
0"
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
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
@0
A1"
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
(
�0"
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
.
g0
h1"
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
(
�0"
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
0
�0
�1"
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
(
�0"
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
0
�0
�1"
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
 "
trackable_dict_wrapper
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
+:)	�d2RMSprop/dense_4/kernel/rms
$:"d2RMSprop/dense_4/bias/rms
3:1d2'RMSprop/batch_normalization_5/gamma/rms
2:0d2&RMSprop/batch_normalization_5/beta/rms
3:1d2'RMSprop/batch_normalization_6/gamma/rms
2:0d2&RMSprop/batch_normalization_6/beta/rms
,:*
��2RMSprop/dense_5/kernel/rms
%:#�2RMSprop/dense_5/bias/rms
4:2�2'RMSprop/batch_normalization_7/gamma/rms
3:1�2&RMSprop/batch_normalization_7/beta/rms
,:*
��2RMSprop/dense_6/kernel/rms
%:#�2RMSprop/dense_6/bias/rms
4:2�2'RMSprop/batch_normalization_8/gamma/rms
3:1�2&RMSprop/batch_normalization_8/beta/rms
,:*
��2RMSprop/dense_7/kernel/rms
%:#�2RMSprop/dense_7/bias/rms
4:2�2'RMSprop/batch_normalization_9/gamma/rms
3:1�2&RMSprop/batch_normalization_9/beta/rms
+:)	�2RMSprop/dense_8/kernel/rms
$:"2RMSprop/dense_8/bias/rms�
!__inference__wrapped_model_654555�*$%6354A>@?UVhegfop�����������X�U
N�K
I�F
!�
input_5���������2
!�
input_6���������2
� "1�.
,
dense_8!�
dense_8����������
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_656848b63543�0
)�&
 �
inputs���������d
p 
� "%�"
�
0���������d
� �
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_656882b56343�0
)�&
 �
inputs���������d
p
� "%�"
�
0���������d
� �
6__inference_batch_normalization_5_layer_call_fn_656815U63543�0
)�&
 �
inputs���������d
p 
� "����������d�
6__inference_batch_normalization_5_layer_call_fn_656828U56343�0
)�&
 �
inputs���������d
p
� "����������d�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_656928bA>@?3�0
)�&
 �
inputs���������d
p 
� "%�"
�
0���������d
� �
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_656962b@A>?3�0
)�&
 �
inputs���������d
p
� "%�"
�
0���������d
� �
6__inference_batch_normalization_6_layer_call_fn_656895UA>@?3�0
)�&
 �
inputs���������d
p 
� "����������d�
6__inference_batch_normalization_6_layer_call_fn_656908U@A>?3�0
)�&
 �
inputs���������d
p
� "����������d�
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_657107dhegf4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
Q__inference_batch_normalization_7_layer_call_and_return_conditional_losses_657141dghef4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
6__inference_batch_normalization_7_layer_call_fn_657074Whegf4�1
*�'
!�
inputs����������
p 
� "������������
6__inference_batch_normalization_7_layer_call_fn_657087Wghef4�1
*�'
!�
inputs����������
p
� "������������
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_657246g���4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_657280g���4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
6__inference_batch_normalization_8_layer_call_fn_657213Z���4�1
*�'
!�
inputs����������
p 
� "������������
6__inference_batch_normalization_8_layer_call_fn_657226Z���4�1
*�'
!�
inputs����������
p
� "������������
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_657385h����4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
Q__inference_batch_normalization_9_layer_call_and_return_conditional_losses_657419h����4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
6__inference_batch_normalization_9_layer_call_fn_657352[����4�1
*�'
!�
inputs����������
p 
� "������������
6__inference_batch_normalization_9_layer_call_fn_657365[����4�1
*�'
!�
inputs����������
p
� "������������
I__inference_concatenate_1_layer_call_and_return_conditional_losses_656975�Z�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "&�#
�
0����������
� �
.__inference_concatenate_1_layer_call_fn_656968wZ�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "������������
C__inference_dense_4_layer_call_and_return_conditional_losses_656780e$%4�1
*�'
%�"
inputs���������2�
� ")�&
�
0���������2d
� �
(__inference_dense_4_layer_call_fn_656749X$%4�1
*�'
%�"
inputs���������2�
� "����������2d�
C__inference_dense_5_layer_call_and_return_conditional_losses_657034^UV0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� }
(__inference_dense_5_layer_call_fn_657017QUV0�-
&�#
!�
inputs����������
� "������������
C__inference_dense_6_layer_call_and_return_conditional_losses_657173^op0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� }
(__inference_dense_6_layer_call_fn_657156Qop0�-
&�#
!�
inputs����������
� "������������
C__inference_dense_7_layer_call_and_return_conditional_losses_657312`��0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� 
(__inference_dense_7_layer_call_fn_657295S��0�-
&�#
!�
inputs����������
� "������������
C__inference_dense_8_layer_call_and_return_conditional_losses_657439_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� ~
(__inference_dense_8_layer_call_fn_657428R��0�-
&�#
!�
inputs����������
� "�����������
E__inference_dropout_4_layer_call_and_return_conditional_losses_656990^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
E__inference_dropout_4_layer_call_and_return_conditional_losses_657002^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� 
*__inference_dropout_4_layer_call_fn_656980Q4�1
*�'
!�
inputs����������
p 
� "�����������
*__inference_dropout_4_layer_call_fn_656985Q4�1
*�'
!�
inputs����������
p
� "������������
E__inference_dropout_5_layer_call_and_return_conditional_losses_657049^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
E__inference_dropout_5_layer_call_and_return_conditional_losses_657061^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� 
*__inference_dropout_5_layer_call_fn_657039Q4�1
*�'
!�
inputs����������
p 
� "�����������
*__inference_dropout_5_layer_call_fn_657044Q4�1
*�'
!�
inputs����������
p
� "������������
E__inference_dropout_6_layer_call_and_return_conditional_losses_657188^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
E__inference_dropout_6_layer_call_and_return_conditional_losses_657200^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� 
*__inference_dropout_6_layer_call_fn_657178Q4�1
*�'
!�
inputs����������
p 
� "�����������
*__inference_dropout_6_layer_call_fn_657183Q4�1
*�'
!�
inputs����������
p
� "������������
E__inference_dropout_7_layer_call_and_return_conditional_losses_657327^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
E__inference_dropout_7_layer_call_and_return_conditional_losses_657339^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� 
*__inference_dropout_7_layer_call_fn_657317Q4�1
*�'
!�
inputs����������
p 
� "�����������
*__inference_dropout_7_layer_call_fn_657322Q4�1
*�'
!�
inputs����������
p
� "������������
G__inference_embedding_2_layer_call_and_return_conditional_losses_656740`/�,
%�"
 �
inputs���������2
� "*�'
 �
0���������2�
� �
,__inference_embedding_2_layer_call_fn_656731S/�,
%�"
 �
inputs���������2
� "����������2��
D__inference_lambda_1_layer_call_and_return_conditional_losses_656796d;�8
1�.
$�!
inputs���������2d

 
p 
� "%�"
�
0���������d
� �
D__inference_lambda_1_layer_call_and_return_conditional_losses_656802d;�8
1�.
$�!
inputs���������2d

 
p
� "%�"
�
0���������d
� �
)__inference_lambda_1_layer_call_fn_656785W;�8
1�.
$�!
inputs���������2d

 
p 
� "����������d�
)__inference_lambda_1_layer_call_fn_656790W;�8
1�.
$�!
inputs���������2d

 
p
� "����������d;
__inference_loss_fn_0_657450U�

� 
� "� ;
__inference_loss_fn_1_657461o�

� 
� "� <
__inference_loss_fn_2_657472��

� 
� "� �
C__inference_model_1_layer_call_and_return_conditional_losses_655884�*$%6354A>@?UVhegfop�����������`�]
V�S
I�F
!�
input_5���������2
!�
input_6���������2
p 

 
� "%�"
�
0���������
� �
C__inference_model_1_layer_call_and_return_conditional_losses_655992�*$%5634@A>?UVghefop�����������`�]
V�S
I�F
!�
input_5���������2
!�
input_6���������2
p

 
� "%�"
�
0���������
� �
C__inference_model_1_layer_call_and_return_conditional_losses_656354�*$%6354A>@?UVhegfop�����������b�_
X�U
K�H
"�
inputs/0���������2
"�
inputs/1���������2
p 

 
� "%�"
�
0���������
� �
C__inference_model_1_layer_call_and_return_conditional_losses_656654�*$%5634@A>?UVghefop�����������b�_
X�U
K�H
"�
inputs/0���������2
"�
inputs/1���������2
p

 
� "%�"
�
0���������
� �
(__inference_model_1_layer_call_fn_655290�*$%6354A>@?UVhegfop�����������`�]
V�S
I�F
!�
input_5���������2
!�
input_6���������2
p 

 
� "�����������
(__inference_model_1_layer_call_fn_655776�*$%5634@A>?UVghefop�����������`�]
V�S
I�F
!�
input_5���������2
!�
input_6���������2
p

 
� "�����������
(__inference_model_1_layer_call_fn_656084�*$%6354A>@?UVhegfop�����������b�_
X�U
K�H
"�
inputs/0���������2
"�
inputs/1���������2
p 

 
� "�����������
(__inference_model_1_layer_call_fn_656152�*$%5634@A>?UVghefop�����������b�_
X�U
K�H
"�
inputs/0���������2
"�
inputs/1���������2
p

 
� "�����������
$__inference_signature_wrapper_656724�*$%6354A>@?UVhegfop�����������i�f
� 
_�\
,
input_5!�
input_5���������2
,
input_6!�
input_6���������2"1�.
,
dense_8!�
dense_8���������