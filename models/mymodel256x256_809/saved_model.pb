Ыў-
ч╩
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
Щ
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02unknown8Х№%
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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
К
Adam/v/column_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/v/column_output/bias
Г
-Adam/v/column_output/bias/Read/ReadVariableOpReadVariableOpAdam/v/column_output/bias*
_output_shapes
:*
dtype0
К
Adam/m/column_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/m/column_output/bias
Г
-Adam/m/column_output/bias/Read/ReadVariableOpReadVariableOpAdam/m/column_output/bias*
_output_shapes
:*
dtype0
Ы
Adam/v/column_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*,
shared_nameAdam/v/column_output/kernel
Ф
/Adam/v/column_output/kernel/Read/ReadVariableOpReadVariableOpAdam/v/column_output/kernel*'
_output_shapes
:А
*
dtype0
Ы
Adam/m/column_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*,
shared_nameAdam/m/column_output/kernel
Ф
/Adam/m/column_output/kernel/Read/ReadVariableOpReadVariableOpAdam/m/column_output/kernel*'
_output_shapes
:А
*
dtype0
И
Adam/v/table_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/table_output/bias
Б
,Adam/v/table_output/bias/Read/ReadVariableOpReadVariableOpAdam/v/table_output/bias*
_output_shapes
:*
dtype0
И
Adam/m/table_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/table_output/bias
Б
,Adam/m/table_output/bias/Read/ReadVariableOpReadVariableOpAdam/m/table_output/bias*
_output_shapes
:*
dtype0
Щ
Adam/v/table_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*+
shared_nameAdam/v/table_output/kernel
Т
.Adam/v/table_output/kernel/Read/ReadVariableOpReadVariableOpAdam/v/table_output/kernel*'
_output_shapes
:А
*
dtype0
Щ
Adam/m/table_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*+
shared_nameAdam/m/table_output/kernel
Т
.Adam/m/table_output/kernel/Read/ReadVariableOpReadVariableOpAdam/m/table_output/kernel*'
_output_shapes
:А
*
dtype0
Ч
Adam/v/block8_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/v/block8_conv1_column/bias
Р
3Adam/v/block8_conv1_column/bias/Read/ReadVariableOpReadVariableOpAdam/v/block8_conv1_column/bias*
_output_shapes	
:А*
dtype0
Ч
Adam/m/block8_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/m/block8_conv1_column/bias
Р
3Adam/m/block8_conv1_column/bias/Read/ReadVariableOpReadVariableOpAdam/m/block8_conv1_column/bias*
_output_shapes	
:А*
dtype0
и
!Adam/v/block8_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/v/block8_conv1_column/kernel
б
5Adam/v/block8_conv1_column/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/block8_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
и
!Adam/m/block8_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/m/block8_conv1_column/kernel
б
5Adam/m/block8_conv1_column/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/block8_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
З
Adam/v/conv7_table/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/v/conv7_table/bias
А
+Adam/v/conv7_table/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv7_table/bias*
_output_shapes	
:А*
dtype0
З
Adam/m/conv7_table/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/m/conv7_table/bias
А
+Adam/m/conv7_table/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv7_table/bias*
_output_shapes	
:А*
dtype0
Ш
Adam/v/conv7_table/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdam/v/conv7_table/kernel
С
-Adam/v/conv7_table/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv7_table/kernel*(
_output_shapes
:АА*
dtype0
Ш
Adam/m/conv7_table/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdam/m/conv7_table/kernel
С
-Adam/m/conv7_table/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv7_table/kernel*(
_output_shapes
:АА*
dtype0
Ч
Adam/v/block7_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/v/block7_conv1_column/bias
Р
3Adam/v/block7_conv1_column/bias/Read/ReadVariableOpReadVariableOpAdam/v/block7_conv1_column/bias*
_output_shapes	
:А*
dtype0
Ч
Adam/m/block7_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/m/block7_conv1_column/bias
Р
3Adam/m/block7_conv1_column/bias/Read/ReadVariableOpReadVariableOpAdam/m/block7_conv1_column/bias*
_output_shapes	
:А*
dtype0
и
!Adam/v/block7_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/v/block7_conv1_column/kernel
б
5Adam/v/block7_conv1_column/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/block7_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
и
!Adam/m/block7_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/m/block7_conv1_column/kernel
б
5Adam/m/block7_conv1_column/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/block7_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
Й
Adam/v/block6_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/v/block6_conv2/bias
В
,Adam/v/block6_conv2/bias/Read/ReadVariableOpReadVariableOpAdam/v/block6_conv2/bias*
_output_shapes	
:А*
dtype0
Й
Adam/m/block6_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/m/block6_conv2/bias
В
,Adam/m/block6_conv2/bias/Read/ReadVariableOpReadVariableOpAdam/m/block6_conv2/bias*
_output_shapes	
:А*
dtype0
Ъ
Adam/v/block6_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/v/block6_conv2/kernel
У
.Adam/v/block6_conv2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/block6_conv2/kernel*(
_output_shapes
:АА*
dtype0
Ъ
Adam/m/block6_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/m/block6_conv2/kernel
У
.Adam/m/block6_conv2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/block6_conv2/kernel*(
_output_shapes
:АА*
dtype0
Й
Adam/v/block6_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/v/block6_conv1/bias
В
,Adam/v/block6_conv1/bias/Read/ReadVariableOpReadVariableOpAdam/v/block6_conv1/bias*
_output_shapes	
:А*
dtype0
Й
Adam/m/block6_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/m/block6_conv1/bias
В
,Adam/m/block6_conv1/bias/Read/ReadVariableOpReadVariableOpAdam/m/block6_conv1/bias*
_output_shapes	
:А*
dtype0
Ъ
Adam/v/block6_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/v/block6_conv1/kernel
У
.Adam/v/block6_conv1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/block6_conv1/kernel*(
_output_shapes
:АА*
dtype0
Ъ
Adam/m/block6_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameAdam/m/block6_conv1/kernel
У
.Adam/m/block6_conv1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/block6_conv1/kernel*(
_output_shapes
:АА*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
{
block5_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv4/bias
t
%block5_conv4/bias/Read/ReadVariableOpReadVariableOpblock5_conv4/bias*
_output_shapes	
:А*
dtype0
М
block5_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv4/kernel
Е
'block5_conv4/kernel/Read/ReadVariableOpReadVariableOpblock5_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:А*
dtype0
М
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv3/kernel
Е
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:А*
dtype0
М
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv2/kernel
Е
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:А*
dtype0
М
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv1/kernel
Е
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv4/bias
t
%block4_conv4/bias/Read/ReadVariableOpReadVariableOpblock4_conv4/bias*
_output_shapes	
:А*
dtype0
М
block4_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv4/kernel
Е
'block4_conv4/kernel/Read/ReadVariableOpReadVariableOpblock4_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:А*
dtype0
М
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv3/kernel
Е
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:А*
dtype0
М
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv2/kernel
Е
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:А*
dtype0
М
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv1/kernel
Е
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv4/bias
t
%block3_conv4/bias/Read/ReadVariableOpReadVariableOpblock3_conv4/bias*
_output_shapes	
:А*
dtype0
М
block3_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv4/kernel
Е
'block3_conv4/kernel/Read/ReadVariableOpReadVariableOpblock3_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:А*
dtype0
М
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv3/kernel
Е
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv2/kernel
Е
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:А*
dtype0
М
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv1/kernel
Е
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:А*
dtype0
М
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock2_conv2/kernel
Е
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:А*
dtype0
Л
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*$
shared_nameblock2_conv1/kernel
Д
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@А*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
К
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
Г
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
К
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
Г
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
|
column_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namecolumn_output/bias
u
&column_output/bias/Read/ReadVariableOpReadVariableOpcolumn_output/bias*
_output_shapes
:*
dtype0
Н
column_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*%
shared_namecolumn_output/kernel
Ж
(column_output/kernel/Read/ReadVariableOpReadVariableOpcolumn_output/kernel*'
_output_shapes
:А
*
dtype0
z
table_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nametable_output/bias
s
%table_output/bias/Read/ReadVariableOpReadVariableOptable_output/bias*
_output_shapes
:*
dtype0
Л
table_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А
*$
shared_nametable_output/kernel
Д
'table_output/kernel/Read/ReadVariableOpReadVariableOptable_output/kernel*'
_output_shapes
:А
*
dtype0
Й
block8_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameblock8_conv1_column/bias
В
,block8_conv1_column/bias/Read/ReadVariableOpReadVariableOpblock8_conv1_column/bias*
_output_shapes	
:А*
dtype0
Ъ
block8_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameblock8_conv1_column/kernel
У
.block8_conv1_column/kernel/Read/ReadVariableOpReadVariableOpblock8_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
y
conv7_table/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv7_table/bias
r
$conv7_table/bias/Read/ReadVariableOpReadVariableOpconv7_table/bias*
_output_shapes	
:А*
dtype0
К
conv7_table/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*#
shared_nameconv7_table/kernel
Г
&conv7_table/kernel/Read/ReadVariableOpReadVariableOpconv7_table/kernel*(
_output_shapes
:АА*
dtype0
Й
block7_conv1_column/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameblock7_conv1_column/bias
В
,block7_conv1_column/bias/Read/ReadVariableOpReadVariableOpblock7_conv1_column/bias*
_output_shapes	
:А*
dtype0
Ъ
block7_conv1_column/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameblock7_conv1_column/kernel
У
.block7_conv1_column/kernel/Read/ReadVariableOpReadVariableOpblock7_conv1_column/kernel*(
_output_shapes
:АА*
dtype0
{
block6_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock6_conv2/bias
t
%block6_conv2/bias/Read/ReadVariableOpReadVariableOpblock6_conv2/bias*
_output_shapes	
:А*
dtype0
М
block6_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock6_conv2/kernel
Е
'block6_conv2/kernel/Read/ReadVariableOpReadVariableOpblock6_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block6_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock6_conv1/bias
t
%block6_conv1/bias/Read/ReadVariableOpReadVariableOpblock6_conv1/bias*
_output_shapes	
:А*
dtype0
М
block6_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock6_conv1/kernel
Е
'block6_conv1/kernel/Read/ReadVariableOpReadVariableOpblock6_conv1/kernel*(
_output_shapes
:АА*
dtype0
М
serving_default_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
щ

StatefulPartitionedCallStatefulPartitionedCallserving_default_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biasblock6_conv1/kernelblock6_conv1/biasblock6_conv2/kernelblock6_conv2/biasblock7_conv1_column/kernelblock7_conv1_column/biasblock8_conv1_column/kernelblock8_conv1_column/biasconv7_table/kernelconv7_table/biascolumn_output/kernelcolumn_output/biastable_output/kerneltable_output/bias*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::         АА:         АА*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_1504169

NoOpNoOp
┼л
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* к
valueЇкBЁк Bшк
ь
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-6
layer-22
layer_with_weights-7
layer-23
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
 	optimizer
!loss
"
signatures*
* 
р
#layer-0
$layer_with_weights-0
$layer-1
%layer_with_weights-1
%layer-2
&layer-3
'layer_with_weights-2
'layer-4
(layer_with_weights-3
(layer-5
)layer-6
*layer_with_weights-4
*layer-7
+layer_with_weights-5
+layer-8
,layer_with_weights-6
,layer-9
-layer_with_weights-7
-layer-10
.layer-11
/layer_with_weights-8
/layer-12
0layer_with_weights-9
0layer-13
1layer_with_weights-10
1layer-14
2layer_with_weights-11
2layer-15
3layer-16
4layer_with_weights-12
4layer-17
5layer_with_weights-13
5layer-18
6layer_with_weights-14
6layer-19
7layer_with_weights-15
7layer-20
8layer-21
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses*
╚
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias
 G_jit_compiled_convolution_op*
е
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator* 
╚
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op*
е
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator* 
╚
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias
 g_jit_compiled_convolution_op*
е
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses
n_random_generator* 
╚
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

ukernel
vbias
 w_jit_compiled_convolution_op*
╔
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!А_jit_compiled_convolution_op*
Ф
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses* 
Ф
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses* 
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
Ф
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses* 
Ф
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses* 
Ф
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses* 
Ф
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses* 
Ф
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+░&call_and_return_all_conditional_losses* 
Ф
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
╡__call__
+╢&call_and_return_all_conditional_losses* 
Ф
╖	variables
╕trainable_variables
╣regularization_losses
║	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses* 
Ф
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses* 
Ф
├	variables
─trainable_variables
┼regularization_losses
╞	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses* 
╤
╔	variables
╩trainable_variables
╦regularization_losses
╠	keras_api
═__call__
+╬&call_and_return_all_conditional_losses
╧kernel
	╨bias
!╤_jit_compiled_convolution_op*
╤
╥	variables
╙trainable_variables
╘regularization_losses
╒	keras_api
╓__call__
+╫&call_and_return_all_conditional_losses
╪kernel
	┘bias
!┌_jit_compiled_convolution_op*
О
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31
E32
F33
U34
V35
e36
f37
u38
v39
~40
41
╧42
╨43
╪44
┘45*
n
E0
F1
U2
V3
e4
f5
u6
v7
~8
9
╧10
╨11
╪12
┘13*
* 
╡
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Аtrace_0
Бtrace_1
Вtrace_2
Гtrace_3* 
:
Дtrace_0
Еtrace_1
Жtrace_2
Зtrace_3* 
* 
И
И
_variables
Й_iterations
К_learning_rate
Л_index_dict
М
_momentums
Н_velocities
О_update_step_xla*
* 

Пserving_default* 

Р_init_input_shape* 
╤
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses
█kernel
	▄bias
!Ч_jit_compiled_convolution_op*
╤
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
▌kernel
	▐bias
!Ю_jit_compiled_convolution_op*
Ф
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses* 
╤
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
▀kernel
	рbias
!л_jit_compiled_convolution_op*
╤
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
░__call__
+▒&call_and_return_all_conditional_losses
сkernel
	тbias
!▓_jit_compiled_convolution_op*
Ф
│	variables
┤trainable_variables
╡regularization_losses
╢	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses* 
╤
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses
уkernel
	фbias
!┐_jit_compiled_convolution_op*
╤
└	variables
┴trainable_variables
┬regularization_losses
├	keras_api
─__call__
+┼&call_and_return_all_conditional_losses
хkernel
	цbias
!╞_jit_compiled_convolution_op*
╤
╟	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses
чkernel
	шbias
!═_jit_compiled_convolution_op*
╤
╬	variables
╧trainable_variables
╨regularization_losses
╤	keras_api
╥__call__
+╙&call_and_return_all_conditional_losses
щkernel
	ъbias
!╘_jit_compiled_convolution_op*
Ф
╒	variables
╓trainable_variables
╫regularization_losses
╪	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses* 
╤
█	variables
▄trainable_variables
▌regularization_losses
▐	keras_api
▀__call__
+р&call_and_return_all_conditional_losses
ыkernel
	ьbias
!с_jit_compiled_convolution_op*
╤
т	variables
уtrainable_variables
фregularization_losses
х	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses
эkernel
	юbias
!ш_jit_compiled_convolution_op*
╤
щ	variables
ъtrainable_variables
ыregularization_losses
ь	keras_api
э__call__
+ю&call_and_return_all_conditional_losses
яkernel
	Ёbias
!я_jit_compiled_convolution_op*
╤
Ё	variables
ёtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses
ёkernel
	Єbias
!Ў_jit_compiled_convolution_op*
Ф
ў	variables
°trainable_variables
∙regularization_losses
·	keras_api
√__call__
+№&call_and_return_all_conditional_losses* 
╤
¤	variables
■trainable_variables
 regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
єkernel
	Їbias
!Г_jit_compiled_convolution_op*
╤
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses
їkernel
	Ўbias
!К_jit_compiled_convolution_op*
╤
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
ўkernel
	°bias
!С_jit_compiled_convolution_op*
╤
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
∙kernel
	·bias
!Ш_jit_compiled_convolution_op*
Ф
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses* 
Ъ
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31*
* 
* 
Ш
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*
:
дtrace_0
еtrace_1
жtrace_2
зtrace_3* 
:
иtrace_0
йtrace_1
кtrace_2
лtrace_3* 

E0
F1*

E0
F1*
* 
Ш
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

▒trace_0* 

▓trace_0* 
c]
VARIABLE_VALUEblock6_conv1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock6_conv1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

╕trace_0
╣trace_1* 

║trace_0
╗trace_1* 
* 

U0
V1*

U0
V1*
* 
Ш
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

┴trace_0* 

┬trace_0* 
c]
VARIABLE_VALUEblock6_conv2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEblock6_conv2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

╚trace_0
╔trace_1* 

╩trace_0
╦trace_1* 
* 

e0
f1*

e0
f1*
* 
Ш
╠non_trainable_variables
═layers
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

╤trace_0* 

╥trace_0* 
jd
VARIABLE_VALUEblock7_conv1_column/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEblock7_conv1_column/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses* 

╪trace_0
┘trace_1* 

┌trace_0
█trace_1* 
* 

u0
v1*

u0
v1*
* 
Ш
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*

сtrace_0* 

тtrace_0* 
b\
VARIABLE_VALUEconv7_table/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv7_table/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

~0
1*

~0
1*
* 
Ш
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

шtrace_0* 

щtrace_0* 
jd
VARIABLE_VALUEblock8_conv1_column/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEblock8_conv1_column/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses* 

яtrace_0* 

Ёtrace_0* 
* 
* 
* 
Ь
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses* 

Ўtrace_0* 

ўtrace_0* 
* 
* 
* 
Ь
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 

¤trace_0* 

■trace_0* 
* 
* 
* 
Ь
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 

Дtrace_0* 

Еtrace_0* 
* 
* 
* 
Ь
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses* 

Лtrace_0* 

Мtrace_0* 
* 
* 
* 
Ь
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses* 

Тtrace_0* 

Уtrace_0* 
* 
* 
* 
Ь
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses* 

Щtrace_0* 

Ъtrace_0* 
* 
* 
* 
Ь
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses* 

аtrace_0* 

бtrace_0* 
* 
* 
* 
Ь
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
╡__call__
+╢&call_and_return_all_conditional_losses
'╢"call_and_return_conditional_losses* 

зtrace_0* 

иtrace_0* 
* 
* 
* 
Ь
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
╖	variables
╕trainable_variables
╣regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses* 

оtrace_0* 

пtrace_0* 
* 
* 
* 
Ь
░non_trainable_variables
▒layers
▓metrics
 │layer_regularization_losses
┤layer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses* 

╡trace_0* 

╢trace_0* 
* 
* 
* 
Ь
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
├	variables
─trainable_variables
┼regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses* 

╝trace_0* 

╜trace_0* 

╧0
╨1*

╧0
╨1*
* 
Ю
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
╔	variables
╩trainable_variables
╦regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses*

├trace_0* 

─trace_0* 
c]
VARIABLE_VALUEtable_output/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEtable_output/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

╪0
┘1*

╪0
┘1*
* 
Ю
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
╥	variables
╙trainable_variables
╘regularization_losses
╓__call__
+╫&call_and_return_all_conditional_losses
'╫"call_and_return_conditional_losses*

╩trace_0* 

╦trace_0* 
d^
VARIABLE_VALUEcolumn_output/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEcolumn_output/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
SM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv4/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv4/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv3/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv3/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv4/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv4/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv1/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv1/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv2/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv2/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv3/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv3/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv4/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv4/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
Ъ
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31*
║
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
18
19
20
21
22
23*
,
╠0
═1
╬2
╧3
╨4*
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
 
Й0
╤1
╥2
╙3
╘4
╒5
╓6
╫7
╪8
┘9
┌10
█11
▄12
▌13
▐14
▀15
р16
с17
т18
у19
ф20
х21
ц22
ч23
ш24
щ25
ъ26
ы27
ь28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
╤0
╙1
╒2
╫3
┘4
█5
▌6
▀7
с8
у9
х10
ч11
щ12
ы13*
x
╥0
╘1
╓2
╪3
┌4
▄5
▐6
р7
т8
ф9
ц10
ш11
ъ12
ь13*
* 
* 
* 

█0
▄1*
* 
* 
Ю
эnon_trainable_variables
юlayers
яmetrics
 Ёlayer_regularization_losses
ёlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses*

Єtrace_0* 

єtrace_0* 
* 

▌0
▐1*
* 
* 
Ю
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses*

∙trace_0* 

·trace_0* 
* 
* 
* 
* 
Ь
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses* 

Аtrace_0* 

Бtrace_0* 

▀0
р1*
* 
* 
Ю
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*

Зtrace_0* 

Иtrace_0* 
* 

с0
т1*
* 
* 
Ю
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
░__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses*

Оtrace_0* 

Пtrace_0* 
* 
* 
* 
* 
Ь
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
│	variables
┤trainable_variables
╡regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses* 

Хtrace_0* 

Цtrace_0* 

у0
ф1*
* 
* 
Ю
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses*

Ьtrace_0* 

Эtrace_0* 
* 

х0
ц1*
* 
* 
Ю
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
└	variables
┴trainable_variables
┬regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
* 

ч0
ш1*
* 
* 
Ю
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
╟	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses*

кtrace_0* 

лtrace_0* 
* 

щ0
ъ1*
* 
* 
Ю
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
╬	variables
╧trainable_variables
╨regularization_losses
╥__call__
+╙&call_and_return_all_conditional_losses
'╙"call_and_return_conditional_losses*

▒trace_0* 

▓trace_0* 
* 
* 
* 
* 
Ь
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
╒	variables
╓trainable_variables
╫regularization_losses
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses* 

╕trace_0* 

╣trace_0* 

ы0
ь1*
* 
* 
Ю
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
█	variables
▄trainable_variables
▌regularization_losses
▀__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses*

┐trace_0* 

└trace_0* 
* 

э0
ю1*
* 
* 
Ю
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
т	variables
уtrainable_variables
фregularization_losses
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses*

╞trace_0* 

╟trace_0* 
* 

я0
Ё1*
* 
* 
Ю
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
щ	variables
ъtrainable_variables
ыregularization_losses
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses*

═trace_0* 

╬trace_0* 
* 

ё0
Є1*
* 
* 
Ю
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
Ё	variables
ёtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses*

╘trace_0* 

╒trace_0* 
* 
* 
* 
* 
Ь
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
ў	variables
°trainable_variables
∙regularization_losses
√__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses* 

█trace_0* 

▄trace_0* 

є0
Ї1*
* 
* 
Ю
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
¤	variables
■trainable_variables
 regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses*

тtrace_0* 

уtrace_0* 
* 

ї0
Ў1*
* 
* 
Ю
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses*

щtrace_0* 

ъtrace_0* 
* 

ў0
°1*
* 
* 
Ю
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*

Ёtrace_0* 

ёtrace_0* 
* 

∙0
·1*
* 
* 
Ю
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses*

ўtrace_0* 

°trace_0* 
* 
* 
* 
* 
Ь
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses* 

■trace_0* 

 trace_0* 
Ъ
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31*
к
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821*
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
* 
<
А	variables
Б	keras_api

Вtotal

Гcount*
<
Д	variables
Е	keras_api

Жtotal

Зcount*
<
И	variables
Й	keras_api

Кtotal

Лcount*
M
М	variables
Н	keras_api

Оtotal

Пcount
Р
_fn_kwargs*
M
С	variables
Т	keras_api

Уtotal

Фcount
Х
_fn_kwargs*
e_
VARIABLE_VALUEAdam/m/block6_conv1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/block6_conv1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/block6_conv1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/block6_conv1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/block6_conv2/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/block6_conv2/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/block6_conv2/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/block6_conv2/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/block7_conv1_column/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/block7_conv1_column/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/block7_conv1_column/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/block7_conv1_column/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/conv7_table/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/conv7_table/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv7_table/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv7_table/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/block8_conv1_column/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/block8_conv1_column/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/block8_conv1_column/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/block8_conv1_column/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/table_output/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/table_output/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/table_output/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/table_output/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/column_output/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/column_output/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/column_output/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/column_output/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*

█0
▄1*
* 
* 
* 
* 
* 
* 

▌0
▐1*
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

▀0
р1*
* 
* 
* 
* 
* 
* 

с0
т1*
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

у0
ф1*
* 
* 
* 
* 
* 
* 

х0
ц1*
* 
* 
* 
* 
* 
* 

ч0
ш1*
* 
* 
* 
* 
* 
* 

щ0
ъ1*
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

ы0
ь1*
* 
* 
* 
* 
* 
* 

э0
ю1*
* 
* 
* 
* 
* 
* 

я0
Ё1*
* 
* 
* 
* 
* 
* 

ё0
Є1*
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

є0
Ї1*
* 
* 
* 
* 
* 
* 

ї0
Ў1*
* 
* 
* 
* 
* 
* 

ў0
°1*
* 
* 
* 
* 
* 
* 

∙0
·1*
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

В0
Г1*

А	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ж0
З1*

Д	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

К0
Л1*

И	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

О0
П1*

М	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

У0
Ф1*

С	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
·
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'block6_conv1/kernel/Read/ReadVariableOp%block6_conv1/bias/Read/ReadVariableOp'block6_conv2/kernel/Read/ReadVariableOp%block6_conv2/bias/Read/ReadVariableOp.block7_conv1_column/kernel/Read/ReadVariableOp,block7_conv1_column/bias/Read/ReadVariableOp&conv7_table/kernel/Read/ReadVariableOp$conv7_table/bias/Read/ReadVariableOp.block8_conv1_column/kernel/Read/ReadVariableOp,block8_conv1_column/bias/Read/ReadVariableOp'table_output/kernel/Read/ReadVariableOp%table_output/bias/Read/ReadVariableOp(column_output/kernel/Read/ReadVariableOp&column_output/bias/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block3_conv4/kernel/Read/ReadVariableOp%block3_conv4/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block4_conv4/kernel/Read/ReadVariableOp%block4_conv4/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp'block5_conv4/kernel/Read/ReadVariableOp%block5_conv4/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp.Adam/m/block6_conv1/kernel/Read/ReadVariableOp.Adam/v/block6_conv1/kernel/Read/ReadVariableOp,Adam/m/block6_conv1/bias/Read/ReadVariableOp,Adam/v/block6_conv1/bias/Read/ReadVariableOp.Adam/m/block6_conv2/kernel/Read/ReadVariableOp.Adam/v/block6_conv2/kernel/Read/ReadVariableOp,Adam/m/block6_conv2/bias/Read/ReadVariableOp,Adam/v/block6_conv2/bias/Read/ReadVariableOp5Adam/m/block7_conv1_column/kernel/Read/ReadVariableOp5Adam/v/block7_conv1_column/kernel/Read/ReadVariableOp3Adam/m/block7_conv1_column/bias/Read/ReadVariableOp3Adam/v/block7_conv1_column/bias/Read/ReadVariableOp-Adam/m/conv7_table/kernel/Read/ReadVariableOp-Adam/v/conv7_table/kernel/Read/ReadVariableOp+Adam/m/conv7_table/bias/Read/ReadVariableOp+Adam/v/conv7_table/bias/Read/ReadVariableOp5Adam/m/block8_conv1_column/kernel/Read/ReadVariableOp5Adam/v/block8_conv1_column/kernel/Read/ReadVariableOp3Adam/m/block8_conv1_column/bias/Read/ReadVariableOp3Adam/v/block8_conv1_column/bias/Read/ReadVariableOp.Adam/m/table_output/kernel/Read/ReadVariableOp.Adam/v/table_output/kernel/Read/ReadVariableOp,Adam/m/table_output/bias/Read/ReadVariableOp,Adam/v/table_output/bias/Read/ReadVariableOp/Adam/m/column_output/kernel/Read/ReadVariableOp/Adam/v/column_output/kernel/Read/ReadVariableOp-Adam/m/column_output/bias/Read/ReadVariableOp-Adam/v/column_output/bias/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*c
Tin\
Z2X	*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_1506361
╜
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock6_conv1/kernelblock6_conv1/biasblock6_conv2/kernelblock6_conv2/biasblock7_conv1_column/kernelblock7_conv1_column/biasconv7_table/kernelconv7_table/biasblock8_conv1_column/kernelblock8_conv1_column/biastable_output/kerneltable_output/biascolumn_output/kernelcolumn_output/biasblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/bias	iterationlearning_rateAdam/m/block6_conv1/kernelAdam/v/block6_conv1/kernelAdam/m/block6_conv1/biasAdam/v/block6_conv1/biasAdam/m/block6_conv2/kernelAdam/v/block6_conv2/kernelAdam/m/block6_conv2/biasAdam/v/block6_conv2/bias!Adam/m/block7_conv1_column/kernel!Adam/v/block7_conv1_column/kernelAdam/m/block7_conv1_column/biasAdam/v/block7_conv1_column/biasAdam/m/conv7_table/kernelAdam/v/conv7_table/kernelAdam/m/conv7_table/biasAdam/v/conv7_table/bias!Adam/m/block8_conv1_column/kernel!Adam/v/block8_conv1_column/kernelAdam/m/block8_conv1_column/biasAdam/v/block8_conv1_column/biasAdam/m/table_output/kernelAdam/v/table_output/kernelAdam/m/table_output/biasAdam/v/table_output/biasAdam/m/column_output/kernelAdam/v/column_output/kernelAdam/m/column_output/biasAdam/v/column_output/biastotal_4count_4total_3count_3total_2count_2total_1count_1totalcount*b
Tin[
Y2W*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_1506629┬с!
Р
d
H__inference_block2_pool_layer_call_and_return_conditional_losses_1501634

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1502794

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И
[
/__inference_concatenate_3_layer_call_fn_1505550
inputs_0
inputs_1
identity╦
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1503132i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:           А
"
_user_specified_name
inputs_1
Р
d
H__inference_block2_pool_layer_call_and_return_conditional_losses_1505809

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
√
ж
.__inference_block5_conv3_layer_call_fn_1506038

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1501933x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╒ 
Ч
I__inference_table_output_layer_call_and_return_conditional_losses_1502872

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1502813

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
└
Ю	
(__inference_VGG-19_layer_call_fn_1502031
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_VGG-19_layer_call_and_return_conditional_losses_1501960x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           Аz

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:         Аz

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         АА
!
_user_specified_name	input_1
Ф
Е
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1505829

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Ф
Е
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1506069

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
║
M
1__inference_up_sampling2d_6_layer_call_fn_1505579

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1502794Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
f
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1502699

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Х
Е
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1503032

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┼r
┌
E__inference_tablenet_layer_call_and_return_conditional_losses_1503626

inputs(
vgg_19_1503507:@
vgg_19_1503509:@(
vgg_19_1503511:@@
vgg_19_1503513:@)
vgg_19_1503515:@А
vgg_19_1503517:	А*
vgg_19_1503519:АА
vgg_19_1503521:	А*
vgg_19_1503523:АА
vgg_19_1503525:	А*
vgg_19_1503527:АА
vgg_19_1503529:	А*
vgg_19_1503531:АА
vgg_19_1503533:	А*
vgg_19_1503535:АА
vgg_19_1503537:	А*
vgg_19_1503539:АА
vgg_19_1503541:	А*
vgg_19_1503543:АА
vgg_19_1503545:	А*
vgg_19_1503547:АА
vgg_19_1503549:	А*
vgg_19_1503551:АА
vgg_19_1503553:	А*
vgg_19_1503555:АА
vgg_19_1503557:	А*
vgg_19_1503559:АА
vgg_19_1503561:	А*
vgg_19_1503563:АА
vgg_19_1503565:	А*
vgg_19_1503567:АА
vgg_19_1503569:	А0
block6_conv1_1503574:АА#
block6_conv1_1503576:	А0
block6_conv2_1503580:АА#
block6_conv2_1503582:	А7
block7_conv1_column_1503586:АА*
block7_conv1_column_1503588:	А7
block8_conv1_column_1503592:АА*
block8_conv1_column_1503594:	А/
conv7_table_1503597:АА"
conv7_table_1503599:	А0
column_output_1503614:А
#
column_output_1503616:/
table_output_1503619:А
"
table_output_1503621:
identity

identity_1ИвVGG-19/StatefulPartitionedCallв$block6_conv1/StatefulPartitionedCallв$block6_conv2/StatefulPartitionedCallв'block6_dropout1/StatefulPartitionedCallв'block6_dropout2/StatefulPartitionedCallв+block7_conv1_column/StatefulPartitionedCallв-block7_dropout_column/StatefulPartitionedCallв+block8_conv1_column/StatefulPartitionedCallв%column_output/StatefulPartitionedCallв#conv7_table/StatefulPartitionedCallв$table_output/StatefulPartitionedCall╩
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg_19_1503507vgg_19_1503509vgg_19_1503511vgg_19_1503513vgg_19_1503515vgg_19_1503517vgg_19_1503519vgg_19_1503521vgg_19_1503523vgg_19_1503525vgg_19_1503527vgg_19_1503529vgg_19_1503531vgg_19_1503533vgg_19_1503535vgg_19_1503537vgg_19_1503539vgg_19_1503541vgg_19_1503543vgg_19_1503545vgg_19_1503547vgg_19_1503549vgg_19_1503551vgg_19_1503553vgg_19_1503555vgg_19_1503557vgg_19_1503559vgg_19_1503561vgg_19_1503563vgg_19_1503565vgg_19_1503567vgg_19_1503569*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502357н
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_1503574block6_conv1_1503576*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1503008З
'block6_dropout1/StatefulPartitionedCallStatefulPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1503390╢
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout1/StatefulPartitionedCall:output:0block6_conv2_1503580block6_conv2_1503582*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1503032▒
'block6_dropout2/StatefulPartitionedCallStatefulPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0(^block6_dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1503357╥
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0block7_conv1_column_1503586block7_conv1_column_1503588*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1503056─
-block7_dropout_column/StatefulPartitionedCallStatefulPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0(^block6_dropout2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1503324╪
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall6block7_dropout_column/StatefulPartitionedCall:output:0block8_conv1_column_1503592block8_conv1_column_1503594*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1503080▓
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0conv7_table_1503597conv7_table_1503599*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv7_table_layer_call_and_return_conditional_losses_1503097Р
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1502718Д
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1502699Ш
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1503112Т
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1503121В
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1502756А
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1502737Ш
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1503132Ш
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1503141В
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1502794В
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1502775Д
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1502832Д
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1502813├
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_1503614column_output_1503616*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_column_output_layer_call_and_return_conditional_losses_1502916┐
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_1503619table_output_1503621*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_table_output_layer_call_and_return_conditional_losses_1502872Ц
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Щ

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           К
NoOpNoOp^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall(^block6_dropout1/StatefulPartitionedCall(^block6_dropout2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall.^block7_dropout_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2R
'block6_dropout1/StatefulPartitionedCall'block6_dropout1/StatefulPartitionedCall2R
'block6_dropout2/StatefulPartitionedCall'block6_dropout2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2^
-block7_dropout_column/StatefulPartitionedCall-block7_dropout_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ь
М
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1505370

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
√
ж
.__inference_block4_conv4_layer_call_fn_1505968

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1501881x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
╤

k
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1503390

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Г
j
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1505291

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
№
г
.__inference_block1_conv2_layer_call_fn_1505738

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1501708y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
Ф
Е
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1501950

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Е
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1505889

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Ф
Е
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1505979

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1505531

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Х
t
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1503141

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:XT
0
_output_shapes
:           А
 
_user_specified_nameinputs
√
ж
.__inference_block5_conv1_layer_call_fn_1505998

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1501899x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
└
Ю	
(__inference_VGG-19_layer_call_fn_1502501
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502357x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           Аz

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:         Аz

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         АА
!
_user_specified_name	input_1
Й
p
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1503067

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
Е
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1503008

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▓
I
-__inference_block5_pool_layer_call_fn_1506074

inputs
identity╓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_1501670Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
Е
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1505869

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Ф
Е
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1501916

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
√
ж
.__inference_block4_conv1_layer_call_fn_1505908

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1501830x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Р
d
H__inference_block1_pool_layer_call_and_return_conditional_losses_1501622

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1502775

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1502832

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
║
M
1__inference_up_sampling2d_2_layer_call_fn_1505562

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1502775Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1502718

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И
[
/__inference_concatenate_1_layer_call_fn_1505537
inputs_0
inputs_1
identity╦
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1503141i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:           А
"
_user_specified_name
inputs_1
√
ж
.__inference_block5_conv2_layer_call_fn_1506018

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1501916x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╜
Э	
(__inference_VGG-19_layer_call_fn_1505010

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502357x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           Аz

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:         Аz

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
Е
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1506009

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╓ 
Ш
J__inference_column_output_layer_call_and_return_conditional_losses_1505709

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
▓
I
-__inference_block1_pool_layer_call_fn_1505754

inputs
identity╓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_1501622Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й
н
5__inference_block7_conv1_column_layer_call_fn_1505359

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1503056x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Е
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1501899

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
п
p
7__inference_block7_dropout_column_layer_call_fn_1505380

inputs
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1503324x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╤

k
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1503357

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
Е
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1505323

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╓ 
Ш
J__inference_column_output_layer_call_and_return_conditional_losses_1502916

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
Сm
╓
E__inference_tablenet_layer_call_and_return_conditional_losses_1503159

inputs(
vgg_19_1502930:@
vgg_19_1502932:@(
vgg_19_1502934:@@
vgg_19_1502936:@)
vgg_19_1502938:@А
vgg_19_1502940:	А*
vgg_19_1502942:АА
vgg_19_1502944:	А*
vgg_19_1502946:АА
vgg_19_1502948:	А*
vgg_19_1502950:АА
vgg_19_1502952:	А*
vgg_19_1502954:АА
vgg_19_1502956:	А*
vgg_19_1502958:АА
vgg_19_1502960:	А*
vgg_19_1502962:АА
vgg_19_1502964:	А*
vgg_19_1502966:АА
vgg_19_1502968:	А*
vgg_19_1502970:АА
vgg_19_1502972:	А*
vgg_19_1502974:АА
vgg_19_1502976:	А*
vgg_19_1502978:АА
vgg_19_1502980:	А*
vgg_19_1502982:АА
vgg_19_1502984:	А*
vgg_19_1502986:АА
vgg_19_1502988:	А*
vgg_19_1502990:АА
vgg_19_1502992:	А0
block6_conv1_1503009:АА#
block6_conv1_1503011:	А0
block6_conv2_1503033:АА#
block6_conv2_1503035:	А7
block7_conv1_column_1503057:АА*
block7_conv1_column_1503059:	А7
block8_conv1_column_1503081:АА*
block8_conv1_column_1503083:	А/
conv7_table_1503098:АА"
conv7_table_1503100:	А0
column_output_1503147:А
#
column_output_1503149:/
table_output_1503152:А
"
table_output_1503154:
identity

identity_1ИвVGG-19/StatefulPartitionedCallв$block6_conv1/StatefulPartitionedCallв$block6_conv2/StatefulPartitionedCallв+block7_conv1_column/StatefulPartitionedCallв+block8_conv1_column/StatefulPartitionedCallв%column_output/StatefulPartitionedCallв#conv7_table/StatefulPartitionedCallв$table_output/StatefulPartitionedCall╩
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg_19_1502930vgg_19_1502932vgg_19_1502934vgg_19_1502936vgg_19_1502938vgg_19_1502940vgg_19_1502942vgg_19_1502944vgg_19_1502946vgg_19_1502948vgg_19_1502950vgg_19_1502952vgg_19_1502954vgg_19_1502956vgg_19_1502958vgg_19_1502960vgg_19_1502962vgg_19_1502964vgg_19_1502966vgg_19_1502968vgg_19_1502970vgg_19_1502972vgg_19_1502974vgg_19_1502976vgg_19_1502978vgg_19_1502980vgg_19_1502982vgg_19_1502984vgg_19_1502986vgg_19_1502988vgg_19_1502990vgg_19_1502992*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_VGG-19_layer_call_and_return_conditional_losses_1501960н
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_1503009block6_conv1_1503011*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1503008ў
block6_dropout1/PartitionedCallPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1503019о
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout1/PartitionedCall:output:0block6_conv2_1503033block6_conv2_1503035*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1503032ў
block6_dropout2/PartitionedCallPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1503043╩
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0block7_conv1_column_1503057block7_conv1_column_1503059*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1503056К
%block7_dropout_column/PartitionedCallPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1503067╨
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall.block7_dropout_column/PartitionedCall:output:0block8_conv1_column_1503081block8_conv1_column_1503083*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1503080к
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0conv7_table_1503098conv7_table_1503100*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv7_table_layer_call_and_return_conditional_losses_1503097Р
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1502718Д
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1502699Ш
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1503112Т
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1503121В
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1502756А
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1502737Ш
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1503132Ш
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1503141В
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1502794В
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1502775Д
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1502832Д
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1502813├
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_1503147column_output_1503149*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_column_output_layer_call_and_return_conditional_losses_1502916┐
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_1503152table_output_1503154*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_table_output_layer_call_and_return_conditional_losses_1502872Ц
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Щ

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Ж
NoOpNoOp^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
В
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1505749

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
Ь
t
H__inference_concatenate_layer_call_and_return_conditional_losses_1505484
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:         А
"
_user_specified_name
inputs_1
╒ 
Ч
I__inference_table_output_layer_call_and_return_conditional_losses_1505667

inputsC
(conv2d_transpose_readvariableop_resource:А
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1505608

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
Е
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1505849

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Ю
v
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1505544
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:           А
"
_user_specified_name
inputs_1
Ф
Е
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1505959

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
║
M
1__inference_up_sampling2d_5_layer_call_fn_1505519

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1502756Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
Е
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1505919

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
№
г
.__inference_block1_conv1_layer_call_fn_1505718

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1501691y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1502756

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╫

q
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1505397

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
б
Е
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1505799

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         АААl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         АААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ААА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:         ААА
 
_user_specified_nameinputs
╤

k
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1505350

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Е
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1505939

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Й
p
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1505385

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▓
I
-__inference_block2_pool_layer_call_fn_1505804

inputs
identity╓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_1501634Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
Е
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1501812

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
┬
е
/__inference_column_output_layer_call_fn_1505676

inputs"
unknown:А

	unknown_0:
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_column_output_layer_call_and_return_conditional_losses_1502916Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
║
M
1__inference_up_sampling2d_4_layer_call_fn_1505459

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1502718Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
Е
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1501864

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Г
j
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1503043

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
зj
█
C__inference_VGG-19_layer_call_and_return_conditional_losses_1501960

inputs.
block1_conv1_1501692:@"
block1_conv1_1501694:@.
block1_conv2_1501709:@@"
block1_conv2_1501711:@/
block2_conv1_1501727:@А#
block2_conv1_1501729:	А0
block2_conv2_1501744:АА#
block2_conv2_1501746:	А0
block3_conv1_1501762:АА#
block3_conv1_1501764:	А0
block3_conv2_1501779:АА#
block3_conv2_1501781:	А0
block3_conv3_1501796:АА#
block3_conv3_1501798:	А0
block3_conv4_1501813:АА#
block3_conv4_1501815:	А0
block4_conv1_1501831:АА#
block4_conv1_1501833:	А0
block4_conv2_1501848:АА#
block4_conv2_1501850:	А0
block4_conv3_1501865:АА#
block4_conv3_1501867:	А0
block4_conv4_1501882:АА#
block4_conv4_1501884:	А0
block5_conv1_1501900:АА#
block5_conv1_1501902:	А0
block5_conv2_1501917:АА#
block5_conv2_1501919:	А0
block5_conv3_1501934:АА#
block5_conv3_1501936:	А0
block5_conv4_1501951:АА#
block5_conv4_1501953:	А
identity

identity_1

identity_2Ив$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block3_conv4/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block4_conv4/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallв$block5_conv4/StatefulPartitionedCallН
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_1501692block1_conv1_1501694*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1501691┤
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_1501709block1_conv2_1501711*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1501708Ё
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_1501622м
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_1501727block2_conv1_1501729*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1501726╡
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_1501744block2_conv2_1501746*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1501743я
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_1501634к
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_1501762block3_conv1_1501764*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1501761│
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_1501779block3_conv2_1501781*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1501778│
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_1501796block3_conv3_1501798*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1501795│
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_1501813block3_conv4_1501815*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1501812я
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_1501646к
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_1501831block4_conv1_1501833*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1501830│
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_1501848block4_conv2_1501850*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1501847│
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_1501865block4_conv3_1501867*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1501864│
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_1501882block4_conv4_1501884*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1501881я
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_1501658к
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_1501900block5_conv1_1501902*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1501899│
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_1501917block5_conv2_1501919*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1501916│
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_1501934block5_conv3_1501936*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1501933│
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_1501951block5_conv4_1501953*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1501950я
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_1501670|
IdentityIdentity$block3_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А~

Identity_1Identity$block4_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А~

Identity_2Identity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А╢
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╜√
ш0
"__inference__wrapped_model_1501613	
inputU
;tablenet_vgg_19_block1_conv1_conv2d_readvariableop_resource:@J
<tablenet_vgg_19_block1_conv1_biasadd_readvariableop_resource:@U
;tablenet_vgg_19_block1_conv2_conv2d_readvariableop_resource:@@J
<tablenet_vgg_19_block1_conv2_biasadd_readvariableop_resource:@V
;tablenet_vgg_19_block2_conv1_conv2d_readvariableop_resource:@АK
<tablenet_vgg_19_block2_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block2_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block2_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block3_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block3_conv4_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block4_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block4_conv4_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv1_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv1_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv2_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv2_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv3_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv3_biasadd_readvariableop_resource:	АW
;tablenet_vgg_19_block5_conv4_conv2d_readvariableop_resource:ААK
<tablenet_vgg_19_block5_conv4_biasadd_readvariableop_resource:	АP
4tablenet_block6_conv1_conv2d_readvariableop_resource:ААD
5tablenet_block6_conv1_biasadd_readvariableop_resource:	АP
4tablenet_block6_conv2_conv2d_readvariableop_resource:ААD
5tablenet_block6_conv2_biasadd_readvariableop_resource:	АW
;tablenet_block7_conv1_column_conv2d_readvariableop_resource:ААK
<tablenet_block7_conv1_column_biasadd_readvariableop_resource:	АW
;tablenet_block8_conv1_column_conv2d_readvariableop_resource:ААK
<tablenet_block8_conv1_column_biasadd_readvariableop_resource:	АO
3tablenet_conv7_table_conv2d_readvariableop_resource:ААC
4tablenet_conv7_table_biasadd_readvariableop_resource:	АZ
?tablenet_column_output_conv2d_transpose_readvariableop_resource:А
D
6tablenet_column_output_biasadd_readvariableop_resource:Y
>tablenet_table_output_conv2d_transpose_readvariableop_resource:А
C
5tablenet_table_output_biasadd_readvariableop_resource:
identity

identity_1Ив3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOpв3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOpв3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOpв3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOpв3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOpв3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOpв3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOpв3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOpв2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOpв,tablenet/block6_conv1/BiasAdd/ReadVariableOpв+tablenet/block6_conv1/Conv2D/ReadVariableOpв,tablenet/block6_conv2/BiasAdd/ReadVariableOpв+tablenet/block6_conv2/Conv2D/ReadVariableOpв3tablenet/block7_conv1_column/BiasAdd/ReadVariableOpв2tablenet/block7_conv1_column/Conv2D/ReadVariableOpв3tablenet/block8_conv1_column/BiasAdd/ReadVariableOpв2tablenet/block8_conv1_column/Conv2D/ReadVariableOpв-tablenet/column_output/BiasAdd/ReadVariableOpв6tablenet/column_output/conv2d_transpose/ReadVariableOpв+tablenet/conv7_table/BiasAdd/ReadVariableOpв*tablenet/conv7_table/Conv2D/ReadVariableOpв,tablenet/table_output/BiasAdd/ReadVariableOpв5tablenet/table_output/conv2d_transpose/ReadVariableOp╢
2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╘
#tablenet/VGG-19/block1_conv1/Conv2DConv2Dinput:tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
м
3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╓
$tablenet/VGG-19/block1_conv1/BiasAddBiasAdd,tablenet/VGG-19/block1_conv1/Conv2D:output:0;tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Ф
!tablenet/VGG-19/block1_conv1/ReluRelu-tablenet/VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@╢
2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0■
#tablenet/VGG-19/block1_conv2/Conv2DConv2D/tablenet/VGG-19/block1_conv1/Relu:activations:0:tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
м
3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╓
$tablenet/VGG-19/block1_conv2/BiasAddBiasAdd,tablenet/VGG-19/block1_conv2/Conv2D:output:0;tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Ф
!tablenet/VGG-19/block1_conv2/ReluRelu-tablenet/VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@╬
#tablenet/VGG-19/block1_pool/MaxPoolMaxPool/tablenet/VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
╖
2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0№
#tablenet/VGG-19/block2_conv1/Conv2DConv2D,tablenet/VGG-19/block1_pool/MaxPool:output:0:tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
н
3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╫
$tablenet/VGG-19/block2_conv1/BiasAddBiasAdd,tablenet/VGG-19/block2_conv1/Conv2D:output:0;tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААХ
!tablenet/VGG-19/block2_conv1/ReluRelu-tablenet/VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         ААА╕
2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0 
#tablenet/VGG-19/block2_conv2/Conv2DConv2D/tablenet/VGG-19/block2_conv1/Relu:activations:0:tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
н
3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╫
$tablenet/VGG-19/block2_conv2/BiasAddBiasAdd,tablenet/VGG-19/block2_conv2/Conv2D:output:0;tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААХ
!tablenet/VGG-19/block2_conv2/ReluRelu-tablenet/VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         ААА═
#tablenet/VGG-19/block2_pool/MaxPoolMaxPool/tablenet/VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
╕
2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0·
#tablenet/VGG-19/block3_conv1/Conv2DConv2D,tablenet/VGG-19/block2_pool/MaxPool:output:0:tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
н
3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block3_conv1/BiasAddBiasAdd,tablenet/VGG-19/block3_conv1/Conv2D:output:0;tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АУ
!tablenet/VGG-19/block3_conv1/ReluRelu-tablenet/VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╕
2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block3_conv2/Conv2DConv2D/tablenet/VGG-19/block3_conv1/Relu:activations:0:tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
н
3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block3_conv2/BiasAddBiasAdd,tablenet/VGG-19/block3_conv2/Conv2D:output:0;tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АУ
!tablenet/VGG-19/block3_conv2/ReluRelu-tablenet/VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╕
2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block3_conv3/Conv2DConv2D/tablenet/VGG-19/block3_conv2/Relu:activations:0:tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
н
3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block3_conv3/BiasAddBiasAdd,tablenet/VGG-19/block3_conv3/Conv2D:output:0;tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АУ
!tablenet/VGG-19/block3_conv3/ReluRelu-tablenet/VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╕
2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block3_conv4/Conv2DConv2D/tablenet/VGG-19/block3_conv3/Relu:activations:0:tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
н
3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block3_conv4/BiasAddBiasAdd,tablenet/VGG-19/block3_conv4/Conv2D:output:0;tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АУ
!tablenet/VGG-19/block3_conv4/ReluRelu-tablenet/VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А═
#tablenet/VGG-19/block3_pool/MaxPoolMaxPool/tablenet/VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
╕
2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0·
#tablenet/VGG-19/block4_conv1/Conv2DConv2D,tablenet/VGG-19/block3_pool/MaxPool:output:0:tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
н
3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block4_conv1/BiasAddBiasAdd,tablenet/VGG-19/block4_conv1/Conv2D:output:0;tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АУ
!tablenet/VGG-19/block4_conv1/ReluRelu-tablenet/VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           А╕
2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block4_conv2/Conv2DConv2D/tablenet/VGG-19/block4_conv1/Relu:activations:0:tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
н
3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block4_conv2/BiasAddBiasAdd,tablenet/VGG-19/block4_conv2/Conv2D:output:0;tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АУ
!tablenet/VGG-19/block4_conv2/ReluRelu-tablenet/VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           А╕
2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block4_conv3/Conv2DConv2D/tablenet/VGG-19/block4_conv2/Relu:activations:0:tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
н
3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block4_conv3/BiasAddBiasAdd,tablenet/VGG-19/block4_conv3/Conv2D:output:0;tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АУ
!tablenet/VGG-19/block4_conv3/ReluRelu-tablenet/VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           А╕
2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block4_conv4/Conv2DConv2D/tablenet/VGG-19/block4_conv3/Relu:activations:0:tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
н
3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block4_conv4/BiasAddBiasAdd,tablenet/VGG-19/block4_conv4/Conv2D:output:0;tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АУ
!tablenet/VGG-19/block4_conv4/ReluRelu-tablenet/VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           А═
#tablenet/VGG-19/block4_pool/MaxPoolMaxPool/tablenet/VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
╕
2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0·
#tablenet/VGG-19/block5_conv1/Conv2DConv2D,tablenet/VGG-19/block4_pool/MaxPool:output:0:tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
н
3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block5_conv1/BiasAddBiasAdd,tablenet/VGG-19/block5_conv1/Conv2D:output:0;tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/VGG-19/block5_conv1/ReluRelu-tablenet/VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А╕
2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block5_conv2/Conv2DConv2D/tablenet/VGG-19/block5_conv1/Relu:activations:0:tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
н
3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block5_conv2/BiasAddBiasAdd,tablenet/VGG-19/block5_conv2/Conv2D:output:0;tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/VGG-19/block5_conv2/ReluRelu-tablenet/VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А╕
2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block5_conv3/Conv2DConv2D/tablenet/VGG-19/block5_conv2/Relu:activations:0:tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
н
3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block5_conv3/BiasAddBiasAdd,tablenet/VGG-19/block5_conv3/Conv2D:output:0;tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/VGG-19/block5_conv3/ReluRelu-tablenet/VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А╕
2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp;tablenet_vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0¤
#tablenet/VGG-19/block5_conv4/Conv2DConv2D/tablenet/VGG-19/block5_conv3/Relu:activations:0:tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
н
3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp<tablenet_vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/VGG-19/block5_conv4/BiasAddBiasAdd,tablenet/VGG-19/block5_conv4/Conv2D:output:0;tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/VGG-19/block5_conv4/ReluRelu-tablenet/VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         А═
#tablenet/VGG-19/block5_pool/MaxPoolMaxPool/tablenet/VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
к
+tablenet/block6_conv1/Conv2D/ReadVariableOpReadVariableOp4tablenet_block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0э
tablenet/block6_conv1/Conv2DConv2D,tablenet/VGG-19/block5_pool/MaxPool:output:03tablenet/block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Я
,tablenet/block6_conv1/BiasAdd/ReadVariableOpReadVariableOp5tablenet_block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
tablenet/block6_conv1/BiasAddBiasAdd%tablenet/block6_conv1/Conv2D:output:04tablenet/block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЕ
tablenet/block6_conv1/ReluRelu&tablenet/block6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
!tablenet/block6_dropout1/IdentityIdentity(tablenet/block6_conv1/Relu:activations:0*
T0*0
_output_shapes
:         Ак
+tablenet/block6_conv2/Conv2D/ReadVariableOpReadVariableOp4tablenet_block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ы
tablenet/block6_conv2/Conv2DConv2D*tablenet/block6_dropout1/Identity:output:03tablenet/block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Я
,tablenet/block6_conv2/BiasAdd/ReadVariableOpReadVariableOp5tablenet_block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
tablenet/block6_conv2/BiasAddBiasAdd%tablenet/block6_conv2/Conv2D:output:04tablenet/block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЕ
tablenet/block6_conv2/ReluRelu&tablenet/block6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АТ
!tablenet/block6_dropout2/IdentityIdentity(tablenet/block6_conv2/Relu:activations:0*
T0*0
_output_shapes
:         А╕
2tablenet/block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp;tablenet_block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0∙
#tablenet/block7_conv1_column/Conv2DConv2D*tablenet/block6_dropout2/Identity:output:0:tablenet/block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
н
3tablenet/block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp<tablenet_block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/block7_conv1_column/BiasAddBiasAdd,tablenet/block7_conv1_column/Conv2D:output:0;tablenet/block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/block7_conv1_column/ReluRelu-tablenet/block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         АЯ
'tablenet/block7_dropout_column/IdentityIdentity/tablenet/block7_conv1_column/Relu:activations:0*
T0*0
_output_shapes
:         А╕
2tablenet/block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp;tablenet_block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0 
#tablenet/block8_conv1_column/Conv2DConv2D0tablenet/block7_dropout_column/Identity:output:0:tablenet/block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
н
3tablenet/block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp<tablenet_block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╒
$tablenet/block8_conv1_column/BiasAddBiasAdd,tablenet/block8_conv1_column/Conv2D:output:0;tablenet/block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АУ
!tablenet/block8_conv1_column/ReluRelu-tablenet/block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         Аи
*tablenet/conv7_table/Conv2D/ReadVariableOpReadVariableOp3tablenet_conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0щ
tablenet/conv7_table/Conv2DConv2D*tablenet/block6_dropout2/Identity:output:02tablenet/conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Э
+tablenet/conv7_table/BiasAdd/ReadVariableOpReadVariableOp4tablenet_conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╜
tablenet/conv7_table/BiasAddBiasAdd$tablenet/conv7_table/Conv2D:output:03tablenet/conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АГ
tablenet/conv7_table/ReluRelu%tablenet/conv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:         Аo
tablenet/up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      q
 tablenet/up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_4/mulMul'tablenet/up_sampling2d_4/Const:output:0)tablenet/up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:Ў
5tablenet/up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor/tablenet/block8_conv1_column/Relu:activations:0 tablenet/up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers(m
tablenet/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      o
tablenet/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ц
tablenet/up_sampling2d/mulMul%tablenet/up_sampling2d/Const:output:0'tablenet/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:ъ
3tablenet/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor'tablenet/conv7_table/Relu:activations:0tablenet/up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers(d
"tablenet/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Р
tablenet/concatenate_2/concatConcatV2Ftablenet/up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block4_pool/MaxPool:output:0+tablenet/concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:         Аb
 tablenet/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :К
tablenet/concatenate/concatConcatV2Dtablenet/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block4_pool/MaxPool:output:0)tablenet/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:         Аo
tablenet/up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      q
 tablenet/up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_5/mulMul'tablenet/up_sampling2d_5/Const:output:0)tablenet/up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:э
5tablenet/up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_2/concat:output:0 tablenet/up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers(o
tablenet/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      q
 tablenet/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_1/mulMul'tablenet/up_sampling2d_1/Const:output:0)tablenet/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:ы
5tablenet/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor$tablenet/concatenate/concat:output:0 tablenet/up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers(d
"tablenet/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Р
tablenet/concatenate_3/concatConcatV2Ftablenet/up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block3_pool/MaxPool:output:0+tablenet/concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
d
"tablenet/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Р
tablenet/concatenate_1/concatConcatV2Ftablenet/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0,tablenet/VGG-19/block3_pool/MaxPool:output:0+tablenet/concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
o
tablenet/up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        q
 tablenet/up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_6/mulMul'tablenet/up_sampling2d_6/Const:output:0)tablenet/up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:э
5tablenet/up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_3/concat:output:0 tablenet/up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(o
tablenet/up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        q
 tablenet/up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_2/mulMul'tablenet/up_sampling2d_2/Const:output:0)tablenet/up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:э
5tablenet/up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor&tablenet/concatenate_1/concat:output:0 tablenet/up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(o
tablenet/up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   q
 tablenet/up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_7/mulMul'tablenet/up_sampling2d_7/Const:output:0)tablenet/up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:П
5tablenet/up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighborFtablenet/up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0 tablenet/up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(o
tablenet/up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   q
 tablenet/up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ь
tablenet/up_sampling2d_3/mulMul'tablenet/up_sampling2d_3/Const:output:0)tablenet/up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:П
5tablenet/up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighborFtablenet/up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0 tablenet/up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(Т
tablenet/column_output/ShapeShapeFtablenet/up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:t
*tablenet/column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,tablenet/column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,tablenet/column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$tablenet/column_output/strided_sliceStridedSlice%tablenet/column_output/Shape:output:03tablenet/column_output/strided_slice/stack:output:05tablenet/column_output/strided_slice/stack_1:output:05tablenet/column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
tablenet/column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :Аa
tablenet/column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А`
tablenet/column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :№
tablenet/column_output/stackPack-tablenet/column_output/strided_slice:output:0'tablenet/column_output/stack/1:output:0'tablenet/column_output/stack/2:output:0'tablenet/column_output/stack/3:output:0*
N*
T0*
_output_shapes
:v
,tablenet/column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.tablenet/column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.tablenet/column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╠
&tablenet/column_output/strided_slice_1StridedSlice%tablenet/column_output/stack:output:05tablenet/column_output/strided_slice_1/stack:output:07tablenet/column_output/strided_slice_1/stack_1:output:07tablenet/column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask┐
6tablenet/column_output/conv2d_transpose/ReadVariableOpReadVariableOp?tablenet_column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0╤
'tablenet/column_output/conv2d_transposeConv2DBackpropInput%tablenet/column_output/stack:output:0>tablenet/column_output/conv2d_transpose/ReadVariableOp:value:0Ftablenet/up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
а
-tablenet/column_output/BiasAdd/ReadVariableOpReadVariableOp6tablenet_column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╬
tablenet/column_output/BiasAddBiasAdd0tablenet/column_output/conv2d_transpose:output:05tablenet/column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААС
tablenet/table_output/ShapeShapeFtablenet/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:s
)tablenet/table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+tablenet/table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+tablenet/table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#tablenet/table_output/strided_sliceStridedSlice$tablenet/table_output/Shape:output:02tablenet/table_output/strided_slice/stack:output:04tablenet/table_output/strided_slice/stack_1:output:04tablenet/table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
tablenet/table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А`
tablenet/table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :А_
tablenet/table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ў
tablenet/table_output/stackPack,tablenet/table_output/strided_slice:output:0&tablenet/table_output/stack/1:output:0&tablenet/table_output/stack/2:output:0&tablenet/table_output/stack/3:output:0*
N*
T0*
_output_shapes
:u
+tablenet/table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-tablenet/table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-tablenet/table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╟
%tablenet/table_output/strided_slice_1StridedSlice$tablenet/table_output/stack:output:04tablenet/table_output/strided_slice_1/stack:output:06tablenet/table_output/strided_slice_1/stack_1:output:06tablenet/table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╜
5tablenet/table_output/conv2d_transpose/ReadVariableOpReadVariableOp>tablenet_table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0╬
&tablenet/table_output/conv2d_transposeConv2DBackpropInput$tablenet/table_output/stack:output:0=tablenet/table_output/conv2d_transpose/ReadVariableOp:value:0Ftablenet/up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
Ю
,tablenet/table_output/BiasAdd/ReadVariableOpReadVariableOp5tablenet_table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╦
tablenet/table_output/BiasAddBiasAdd/tablenet/table_output/conv2d_transpose:output:04tablenet/table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААА
IdentityIdentity'tablenet/column_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААБ

Identity_1Identity&tablenet/table_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         АА▒
NoOpNoOp4^tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp4^tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp3^tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp-^tablenet/block6_conv1/BiasAdd/ReadVariableOp,^tablenet/block6_conv1/Conv2D/ReadVariableOp-^tablenet/block6_conv2/BiasAdd/ReadVariableOp,^tablenet/block6_conv2/Conv2D/ReadVariableOp4^tablenet/block7_conv1_column/BiasAdd/ReadVariableOp3^tablenet/block7_conv1_column/Conv2D/ReadVariableOp4^tablenet/block8_conv1_column/BiasAdd/ReadVariableOp3^tablenet/block8_conv1_column/Conv2D/ReadVariableOp.^tablenet/column_output/BiasAdd/ReadVariableOp7^tablenet/column_output/conv2d_transpose/ReadVariableOp,^tablenet/conv7_table/BiasAdd/ReadVariableOp+^tablenet/conv7_table/Conv2D/ReadVariableOp-^tablenet/table_output/BiasAdd/ReadVariableOp6^tablenet/table_output/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2j
3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block1_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block1_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block1_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block1_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block2_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block2_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block2_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block2_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block3_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block3_conv4/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block4_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block4_conv4/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv1/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv1/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv2/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv2/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv3/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv3/Conv2D/ReadVariableOp2j
3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp3tablenet/VGG-19/block5_conv4/BiasAdd/ReadVariableOp2h
2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp2tablenet/VGG-19/block5_conv4/Conv2D/ReadVariableOp2\
,tablenet/block6_conv1/BiasAdd/ReadVariableOp,tablenet/block6_conv1/BiasAdd/ReadVariableOp2Z
+tablenet/block6_conv1/Conv2D/ReadVariableOp+tablenet/block6_conv1/Conv2D/ReadVariableOp2\
,tablenet/block6_conv2/BiasAdd/ReadVariableOp,tablenet/block6_conv2/BiasAdd/ReadVariableOp2Z
+tablenet/block6_conv2/Conv2D/ReadVariableOp+tablenet/block6_conv2/Conv2D/ReadVariableOp2j
3tablenet/block7_conv1_column/BiasAdd/ReadVariableOp3tablenet/block7_conv1_column/BiasAdd/ReadVariableOp2h
2tablenet/block7_conv1_column/Conv2D/ReadVariableOp2tablenet/block7_conv1_column/Conv2D/ReadVariableOp2j
3tablenet/block8_conv1_column/BiasAdd/ReadVariableOp3tablenet/block8_conv1_column/BiasAdd/ReadVariableOp2h
2tablenet/block8_conv1_column/Conv2D/ReadVariableOp2tablenet/block8_conv1_column/Conv2D/ReadVariableOp2^
-tablenet/column_output/BiasAdd/ReadVariableOp-tablenet/column_output/BiasAdd/ReadVariableOp2p
6tablenet/column_output/conv2d_transpose/ReadVariableOp6tablenet/column_output/conv2d_transpose/ReadVariableOp2Z
+tablenet/conv7_table/BiasAdd/ReadVariableOp+tablenet/conv7_table/BiasAdd/ReadVariableOp2X
*tablenet/conv7_table/Conv2D/ReadVariableOp*tablenet/conv7_table/Conv2D/ReadVariableOp2\
,tablenet/table_output/BiasAdd/ReadVariableOp,tablenet/table_output/BiasAdd/ReadVariableOp2n
5tablenet/table_output/conv2d_transpose/ReadVariableOp5tablenet/table_output/conv2d_transpose/ReadVariableOp:X T
1
_output_shapes
:         АА

_user_specified_nameinput
кj
▄
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502683
input_1.
block1_conv1_1502595:@"
block1_conv1_1502597:@.
block1_conv2_1502600:@@"
block1_conv2_1502602:@/
block2_conv1_1502606:@А#
block2_conv1_1502608:	А0
block2_conv2_1502611:АА#
block2_conv2_1502613:	А0
block3_conv1_1502617:АА#
block3_conv1_1502619:	А0
block3_conv2_1502622:АА#
block3_conv2_1502624:	А0
block3_conv3_1502627:АА#
block3_conv3_1502629:	А0
block3_conv4_1502632:АА#
block3_conv4_1502634:	А0
block4_conv1_1502638:АА#
block4_conv1_1502640:	А0
block4_conv2_1502643:АА#
block4_conv2_1502645:	А0
block4_conv3_1502648:АА#
block4_conv3_1502650:	А0
block4_conv4_1502653:АА#
block4_conv4_1502655:	А0
block5_conv1_1502659:АА#
block5_conv1_1502661:	А0
block5_conv2_1502664:АА#
block5_conv2_1502666:	А0
block5_conv3_1502669:АА#
block5_conv3_1502671:	А0
block5_conv4_1502674:АА#
block5_conv4_1502676:	А
identity

identity_1

identity_2Ив$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block3_conv4/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block4_conv4/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallв$block5_conv4/StatefulPartitionedCallО
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_1502595block1_conv1_1502597*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1501691┤
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_1502600block1_conv2_1502602*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1501708Ё
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_1501622м
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_1502606block2_conv1_1502608*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1501726╡
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_1502611block2_conv2_1502613*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1501743я
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_1501634к
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_1502617block3_conv1_1502619*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1501761│
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_1502622block3_conv2_1502624*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1501778│
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_1502627block3_conv3_1502629*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1501795│
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_1502632block3_conv4_1502634*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1501812я
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_1501646к
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_1502638block4_conv1_1502640*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1501830│
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_1502643block4_conv2_1502645*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1501847│
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_1502648block4_conv3_1502650*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1501864│
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_1502653block4_conv4_1502655*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1501881я
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_1501658к
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_1502659block5_conv1_1502661*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1501899│
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_1502664block5_conv2_1502666*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1501916│
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_1502669block5_conv3_1502671*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1501933│
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_1502674block5_conv4_1502676*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1501950я
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_1501670|
IdentityIdentity$block3_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А~

Identity_1Identity$block4_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А~

Identity_2Identity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А╢
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Z V
1
_output_shapes
:         АА
!
_user_specified_name	input_1
╤
M
1__inference_block6_dropout1_layer_call_fn_1505281

inputs
identity└
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1503019i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ъ
▀
*__inference_tablenet_layer_call_fn_1503822	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+                           :+                           *P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_tablenet_layer_call_and_return_conditional_losses_1503626Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Л

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
╤

k
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1505303

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
├═
╨*
E__inference_tablenet_layer_call_and_return_conditional_losses_1504605

inputsL
2vgg_19_block1_conv1_conv2d_readvariableop_resource:@A
3vgg_19_block1_conv1_biasadd_readvariableop_resource:@L
2vgg_19_block1_conv2_conv2d_readvariableop_resource:@@A
3vgg_19_block1_conv2_biasadd_readvariableop_resource:@M
2vgg_19_block2_conv1_conv2d_readvariableop_resource:@АB
3vgg_19_block2_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block2_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block2_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv4_biasadd_readvariableop_resource:	АG
+block6_conv1_conv2d_readvariableop_resource:АА;
,block6_conv1_biasadd_readvariableop_resource:	АG
+block6_conv2_conv2d_readvariableop_resource:АА;
,block6_conv2_biasadd_readvariableop_resource:	АN
2block7_conv1_column_conv2d_readvariableop_resource:ААB
3block7_conv1_column_biasadd_readvariableop_resource:	АN
2block8_conv1_column_conv2d_readvariableop_resource:ААB
3block8_conv1_column_biasadd_readvariableop_resource:	АF
*conv7_table_conv2d_readvariableop_resource:АА:
+conv7_table_biasadd_readvariableop_resource:	АQ
6column_output_conv2d_transpose_readvariableop_resource:А
;
-column_output_biasadd_readvariableop_resource:P
5table_output_conv2d_transpose_readvariableop_resource:А
:
,table_output_biasadd_readvariableop_resource:
identity

identity_1Ив*VGG-19/block1_conv1/BiasAdd/ReadVariableOpв)VGG-19/block1_conv1/Conv2D/ReadVariableOpв*VGG-19/block1_conv2/BiasAdd/ReadVariableOpв)VGG-19/block1_conv2/Conv2D/ReadVariableOpв*VGG-19/block2_conv1/BiasAdd/ReadVariableOpв)VGG-19/block2_conv1/Conv2D/ReadVariableOpв*VGG-19/block2_conv2/BiasAdd/ReadVariableOpв)VGG-19/block2_conv2/Conv2D/ReadVariableOpв*VGG-19/block3_conv1/BiasAdd/ReadVariableOpв)VGG-19/block3_conv1/Conv2D/ReadVariableOpв*VGG-19/block3_conv2/BiasAdd/ReadVariableOpв)VGG-19/block3_conv2/Conv2D/ReadVariableOpв*VGG-19/block3_conv3/BiasAdd/ReadVariableOpв)VGG-19/block3_conv3/Conv2D/ReadVariableOpв*VGG-19/block3_conv4/BiasAdd/ReadVariableOpв)VGG-19/block3_conv4/Conv2D/ReadVariableOpв*VGG-19/block4_conv1/BiasAdd/ReadVariableOpв)VGG-19/block4_conv1/Conv2D/ReadVariableOpв*VGG-19/block4_conv2/BiasAdd/ReadVariableOpв)VGG-19/block4_conv2/Conv2D/ReadVariableOpв*VGG-19/block4_conv3/BiasAdd/ReadVariableOpв)VGG-19/block4_conv3/Conv2D/ReadVariableOpв*VGG-19/block4_conv4/BiasAdd/ReadVariableOpв)VGG-19/block4_conv4/Conv2D/ReadVariableOpв*VGG-19/block5_conv1/BiasAdd/ReadVariableOpв)VGG-19/block5_conv1/Conv2D/ReadVariableOpв*VGG-19/block5_conv2/BiasAdd/ReadVariableOpв)VGG-19/block5_conv2/Conv2D/ReadVariableOpв*VGG-19/block5_conv3/BiasAdd/ReadVariableOpв)VGG-19/block5_conv3/Conv2D/ReadVariableOpв*VGG-19/block5_conv4/BiasAdd/ReadVariableOpв)VGG-19/block5_conv4/Conv2D/ReadVariableOpв#block6_conv1/BiasAdd/ReadVariableOpв"block6_conv1/Conv2D/ReadVariableOpв#block6_conv2/BiasAdd/ReadVariableOpв"block6_conv2/Conv2D/ReadVariableOpв*block7_conv1_column/BiasAdd/ReadVariableOpв)block7_conv1_column/Conv2D/ReadVariableOpв*block8_conv1_column/BiasAdd/ReadVariableOpв)block8_conv1_column/Conv2D/ReadVariableOpв$column_output/BiasAdd/ReadVariableOpв-column_output/conv2d_transpose/ReadVariableOpв"conv7_table/BiasAdd/ReadVariableOpв!conv7_table/Conv2D/ReadVariableOpв#table_output/BiasAdd/ReadVariableOpв,table_output/conv2d_transpose/ReadVariableOpд
)VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0├
VGG-19/block1_conv1/Conv2DConv2Dinputs1VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
Ъ
*VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
VGG-19/block1_conv1/BiasAddBiasAdd#VGG-19/block1_conv1/Conv2D:output:02VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@В
VGG-19/block1_conv1/ReluRelu$VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@д
)VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
VGG-19/block1_conv2/Conv2DConv2D&VGG-19/block1_conv1/Relu:activations:01VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
Ъ
*VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
VGG-19/block1_conv2/BiasAddBiasAdd#VGG-19/block1_conv2/Conv2D:output:02VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@В
VGG-19/block1_conv2/ReluRelu$VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@╝
VGG-19/block1_pool/MaxPoolMaxPool&VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
е
)VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0с
VGG-19/block2_conv1/Conv2DConv2D#VGG-19/block1_pool/MaxPool:output:01VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Ы
*VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
VGG-19/block2_conv1/BiasAddBiasAdd#VGG-19/block2_conv1/Conv2D:output:02VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААГ
VGG-19/block2_conv1/ReluRelu$VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААж
)VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ф
VGG-19/block2_conv2/Conv2DConv2D&VGG-19/block2_conv1/Relu:activations:01VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Ы
*VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
VGG-19/block2_conv2/BiasAddBiasAdd#VGG-19/block2_conv2/Conv2D:output:02VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААГ
VGG-19/block2_conv2/ReluRelu$VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         ААА╗
VGG-19/block2_pool/MaxPoolMaxPool&VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block3_conv1/Conv2DConv2D#VGG-19/block2_pool/MaxPool:output:01VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv1/BiasAddBiasAdd#VGG-19/block3_conv1/Conv2D:output:02VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv1/ReluRelu$VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv2/Conv2DConv2D&VGG-19/block3_conv1/Relu:activations:01VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv2/BiasAddBiasAdd#VGG-19/block3_conv2/Conv2D:output:02VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv2/ReluRelu$VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv3/Conv2DConv2D&VGG-19/block3_conv2/Relu:activations:01VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv3/BiasAddBiasAdd#VGG-19/block3_conv3/Conv2D:output:02VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv3/ReluRelu$VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv4/Conv2DConv2D&VGG-19/block3_conv3/Relu:activations:01VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv4/BiasAddBiasAdd#VGG-19/block3_conv4/Conv2D:output:02VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv4/ReluRelu$VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╗
VGG-19/block3_pool/MaxPoolMaxPool&VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block4_conv1/Conv2DConv2D#VGG-19/block3_pool/MaxPool:output:01VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv1/BiasAddBiasAdd#VGG-19/block4_conv1/Conv2D:output:02VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv1/ReluRelu$VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv2/Conv2DConv2D&VGG-19/block4_conv1/Relu:activations:01VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv2/BiasAddBiasAdd#VGG-19/block4_conv2/Conv2D:output:02VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv2/ReluRelu$VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv3/Conv2DConv2D&VGG-19/block4_conv2/Relu:activations:01VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv3/BiasAddBiasAdd#VGG-19/block4_conv3/Conv2D:output:02VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv3/ReluRelu$VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv4/Conv2DConv2D&VGG-19/block4_conv3/Relu:activations:01VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv4/BiasAddBiasAdd#VGG-19/block4_conv4/Conv2D:output:02VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv4/ReluRelu$VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           А╗
VGG-19/block4_pool/MaxPoolMaxPool&VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block5_conv1/Conv2DConv2D#VGG-19/block4_pool/MaxPool:output:01VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv1/BiasAddBiasAdd#VGG-19/block5_conv1/Conv2D:output:02VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv1/ReluRelu$VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv2/Conv2DConv2D&VGG-19/block5_conv1/Relu:activations:01VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv2/BiasAddBiasAdd#VGG-19/block5_conv2/Conv2D:output:02VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv2/ReluRelu$VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv3/Conv2DConv2D&VGG-19/block5_conv2/Relu:activations:01VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv3/BiasAddBiasAdd#VGG-19/block5_conv3/Conv2D:output:02VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv3/ReluRelu$VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv4/Conv2DConv2D&VGG-19/block5_conv3/Relu:activations:01VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv4/BiasAddBiasAdd#VGG-19/block5_conv4/Conv2D:output:02VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv4/ReluRelu$VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         А╗
VGG-19/block5_pool/MaxPoolMaxPool&VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block6_conv1/Conv2D/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╥
block6_conv1/Conv2DConv2D#VGG-19/block5_pool/MaxPool:output:0*block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Н
#block6_conv1/BiasAdd/ReadVariableOpReadVariableOp,block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block6_conv1/BiasAddBiasAddblock6_conv1/Conv2D:output:0+block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block6_conv1/ReluRelublock6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АА
block6_dropout1/IdentityIdentityblock6_conv1/Relu:activations:0*
T0*0
_output_shapes
:         АШ
"block6_conv2/Conv2D/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╨
block6_conv2/Conv2DConv2D!block6_dropout1/Identity:output:0*block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Н
#block6_conv2/BiasAdd/ReadVariableOpReadVariableOp,block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block6_conv2/BiasAddBiasAddblock6_conv2/Conv2D:output:0+block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block6_conv2/ReluRelublock6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АА
block6_dropout2/IdentityIdentityblock6_conv2/Relu:activations:0*
T0*0
_output_shapes
:         Аж
)block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▐
block7_conv1_column/Conv2DConv2D!block6_dropout2/Identity:output:01block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
block7_conv1_column/BiasAddBiasAdd#block7_conv1_column/Conv2D:output:02block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
block7_conv1_column/ReluRelu$block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         АН
block7_dropout_column/IdentityIdentity&block7_conv1_column/Relu:activations:0*
T0*0
_output_shapes
:         Аж
)block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ф
block8_conv1_column/Conv2DConv2D'block7_dropout_column/Identity:output:01block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
block8_conv1_column/BiasAddBiasAdd#block8_conv1_column/Conv2D:output:02block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
block8_conv1_column/ReluRelu$block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         АЦ
!conv7_table/Conv2D/ReadVariableOpReadVariableOp*conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╬
conv7_table/Conv2DConv2D!block6_dropout2/Identity:output:0)conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Л
"conv7_table/BiasAdd/ReadVariableOpReadVariableOp+conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
conv7_table/BiasAddBiasAddconv7_table/Conv2D:output:0*conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
conv7_table/ReluReluconv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:         Аf
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:█
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor&block8_conv1_column/Relu:activations:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers(d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:╧
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconv7_table/Relu:activations:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers([
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_2/concatConcatV2=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:         АY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate/concatConcatV2;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:         Аf
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers(f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:╨
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers([
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_3/concatConcatV2=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_1/concatConcatV2=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
f
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(f
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(f
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:Ї
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:Ї
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(А
column_output/ShapeShape=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:k
!column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
column_output/strided_sliceStridedSlicecolumn_output/Shape:output:0*column_output/strided_slice/stack:output:0,column_output/strided_slice/stack_1:output:0,column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :АX
column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :АW
column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╧
column_output/stackPack$column_output/strided_slice:output:0column_output/stack/1:output:0column_output/stack/2:output:0column_output/stack/3:output:0*
N*
T0*
_output_shapes
:m
#column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
column_output/strided_slice_1StridedSlicecolumn_output/stack:output:0,column_output/strided_slice_1/stack:output:0.column_output/strided_slice_1/stack_1:output:0.column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskн
-column_output/conv2d_transpose/ReadVariableOpReadVariableOp6column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0н
column_output/conv2d_transposeConv2DBackpropInputcolumn_output/stack:output:05column_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
О
$column_output/BiasAdd/ReadVariableOpReadVariableOp-column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
column_output/BiasAddBiasAdd'column_output/conv2d_transpose:output:0,column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА
table_output/ShapeShape=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:j
 table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
table_output/strided_sliceStridedSlicetable_output/Shape:output:0)table_output/strided_slice/stack:output:0+table_output/strided_slice/stack_1:output:0+table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :АW
table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :АV
table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╩
table_output/stackPack#table_output/strided_slice:output:0table_output/stack/1:output:0table_output/stack/2:output:0table_output/stack/3:output:0*
N*
T0*
_output_shapes
:l
"table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ъ
table_output/strided_slice_1StridedSlicetable_output/stack:output:0+table_output/strided_slice_1/stack:output:0-table_output/strided_slice_1/stack_1:output:0-table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskл
,table_output/conv2d_transpose/ReadVariableOpReadVariableOp5table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0к
table_output/conv2d_transposeConv2DBackpropInputtable_output/stack:output:04table_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
М
#table_output/BiasAdd/ReadVariableOpReadVariableOp,table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0░
table_output/BiasAddBiasAdd&table_output/conv2d_transpose:output:0+table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААv
IdentityIdentitytable_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААy

Identity_1Identitycolumn_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААУ
NoOpNoOp+^VGG-19/block1_conv1/BiasAdd/ReadVariableOp*^VGG-19/block1_conv1/Conv2D/ReadVariableOp+^VGG-19/block1_conv2/BiasAdd/ReadVariableOp*^VGG-19/block1_conv2/Conv2D/ReadVariableOp+^VGG-19/block2_conv1/BiasAdd/ReadVariableOp*^VGG-19/block2_conv1/Conv2D/ReadVariableOp+^VGG-19/block2_conv2/BiasAdd/ReadVariableOp*^VGG-19/block2_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv1/BiasAdd/ReadVariableOp*^VGG-19/block3_conv1/Conv2D/ReadVariableOp+^VGG-19/block3_conv2/BiasAdd/ReadVariableOp*^VGG-19/block3_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv3/BiasAdd/ReadVariableOp*^VGG-19/block3_conv3/Conv2D/ReadVariableOp+^VGG-19/block3_conv4/BiasAdd/ReadVariableOp*^VGG-19/block3_conv4/Conv2D/ReadVariableOp+^VGG-19/block4_conv1/BiasAdd/ReadVariableOp*^VGG-19/block4_conv1/Conv2D/ReadVariableOp+^VGG-19/block4_conv2/BiasAdd/ReadVariableOp*^VGG-19/block4_conv2/Conv2D/ReadVariableOp+^VGG-19/block4_conv3/BiasAdd/ReadVariableOp*^VGG-19/block4_conv3/Conv2D/ReadVariableOp+^VGG-19/block4_conv4/BiasAdd/ReadVariableOp*^VGG-19/block4_conv4/Conv2D/ReadVariableOp+^VGG-19/block5_conv1/BiasAdd/ReadVariableOp*^VGG-19/block5_conv1/Conv2D/ReadVariableOp+^VGG-19/block5_conv2/BiasAdd/ReadVariableOp*^VGG-19/block5_conv2/Conv2D/ReadVariableOp+^VGG-19/block5_conv3/BiasAdd/ReadVariableOp*^VGG-19/block5_conv3/Conv2D/ReadVariableOp+^VGG-19/block5_conv4/BiasAdd/ReadVariableOp*^VGG-19/block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp+^block7_conv1_column/BiasAdd/ReadVariableOp*^block7_conv1_column/Conv2D/ReadVariableOp+^block8_conv1_column/BiasAdd/ReadVariableOp*^block8_conv1_column/Conv2D/ReadVariableOp%^column_output/BiasAdd/ReadVariableOp.^column_output/conv2d_transpose/ReadVariableOp#^conv7_table/BiasAdd/ReadVariableOp"^conv7_table/Conv2D/ReadVariableOp$^table_output/BiasAdd/ReadVariableOp-^table_output/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*VGG-19/block1_conv1/BiasAdd/ReadVariableOp*VGG-19/block1_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv1/Conv2D/ReadVariableOp)VGG-19/block1_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block1_conv2/BiasAdd/ReadVariableOp*VGG-19/block1_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv2/Conv2D/ReadVariableOp)VGG-19/block1_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv1/BiasAdd/ReadVariableOp*VGG-19/block2_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv1/Conv2D/ReadVariableOp)VGG-19/block2_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv2/BiasAdd/ReadVariableOp*VGG-19/block2_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv2/Conv2D/ReadVariableOp)VGG-19/block2_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv1/BiasAdd/ReadVariableOp*VGG-19/block3_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv1/Conv2D/ReadVariableOp)VGG-19/block3_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv2/BiasAdd/ReadVariableOp*VGG-19/block3_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv2/Conv2D/ReadVariableOp)VGG-19/block3_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv3/BiasAdd/ReadVariableOp*VGG-19/block3_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv3/Conv2D/ReadVariableOp)VGG-19/block3_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv4/BiasAdd/ReadVariableOp*VGG-19/block3_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv4/Conv2D/ReadVariableOp)VGG-19/block3_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv1/BiasAdd/ReadVariableOp*VGG-19/block4_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv1/Conv2D/ReadVariableOp)VGG-19/block4_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv2/BiasAdd/ReadVariableOp*VGG-19/block4_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv2/Conv2D/ReadVariableOp)VGG-19/block4_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv3/BiasAdd/ReadVariableOp*VGG-19/block4_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv3/Conv2D/ReadVariableOp)VGG-19/block4_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv4/BiasAdd/ReadVariableOp*VGG-19/block4_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv4/Conv2D/ReadVariableOp)VGG-19/block4_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv1/BiasAdd/ReadVariableOp*VGG-19/block5_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv1/Conv2D/ReadVariableOp)VGG-19/block5_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv2/BiasAdd/ReadVariableOp*VGG-19/block5_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv2/Conv2D/ReadVariableOp)VGG-19/block5_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv3/BiasAdd/ReadVariableOp*VGG-19/block5_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv3/Conv2D/ReadVariableOp)VGG-19/block5_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv4/BiasAdd/ReadVariableOp*VGG-19/block5_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv4/Conv2D/ReadVariableOp)VGG-19/block5_conv4/Conv2D/ReadVariableOp2J
#block6_conv1/BiasAdd/ReadVariableOp#block6_conv1/BiasAdd/ReadVariableOp2H
"block6_conv1/Conv2D/ReadVariableOp"block6_conv1/Conv2D/ReadVariableOp2J
#block6_conv2/BiasAdd/ReadVariableOp#block6_conv2/BiasAdd/ReadVariableOp2H
"block6_conv2/Conv2D/ReadVariableOp"block6_conv2/Conv2D/ReadVariableOp2X
*block7_conv1_column/BiasAdd/ReadVariableOp*block7_conv1_column/BiasAdd/ReadVariableOp2V
)block7_conv1_column/Conv2D/ReadVariableOp)block7_conv1_column/Conv2D/ReadVariableOp2X
*block8_conv1_column/BiasAdd/ReadVariableOp*block8_conv1_column/BiasAdd/ReadVariableOp2V
)block8_conv1_column/Conv2D/ReadVariableOp)block8_conv1_column/Conv2D/ReadVariableOp2L
$column_output/BiasAdd/ReadVariableOp$column_output/BiasAdd/ReadVariableOp2^
-column_output/conv2d_transpose/ReadVariableOp-column_output/conv2d_transpose/ReadVariableOp2H
"conv7_table/BiasAdd/ReadVariableOp"conv7_table/BiasAdd/ReadVariableOp2F
!conv7_table/Conv2D/ReadVariableOp!conv7_table/Conv2D/ReadVariableOp2J
#table_output/BiasAdd/ReadVariableOp#table_output/BiasAdd/ReadVariableOp2\
,table_output/conv2d_transpose/ReadVariableOp,table_output/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
r
H__inference_concatenate_layer_call_and_return_conditional_losses_1503121

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:XT
0
_output_shapes
:         А
 
_user_specified_nameinputs
кj
▄
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502592
input_1.
block1_conv1_1502504:@"
block1_conv1_1502506:@.
block1_conv2_1502509:@@"
block1_conv2_1502511:@/
block2_conv1_1502515:@А#
block2_conv1_1502517:	А0
block2_conv2_1502520:АА#
block2_conv2_1502522:	А0
block3_conv1_1502526:АА#
block3_conv1_1502528:	А0
block3_conv2_1502531:АА#
block3_conv2_1502533:	А0
block3_conv3_1502536:АА#
block3_conv3_1502538:	А0
block3_conv4_1502541:АА#
block3_conv4_1502543:	А0
block4_conv1_1502547:АА#
block4_conv1_1502549:	А0
block4_conv2_1502552:АА#
block4_conv2_1502554:	А0
block4_conv3_1502557:АА#
block4_conv3_1502559:	А0
block4_conv4_1502562:АА#
block4_conv4_1502564:	А0
block5_conv1_1502568:АА#
block5_conv1_1502570:	А0
block5_conv2_1502573:АА#
block5_conv2_1502575:	А0
block5_conv3_1502578:АА#
block5_conv3_1502580:	А0
block5_conv4_1502583:АА#
block5_conv4_1502585:	А
identity

identity_1

identity_2Ив$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block3_conv4/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block4_conv4/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallв$block5_conv4/StatefulPartitionedCallО
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_1502504block1_conv1_1502506*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1501691┤
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_1502509block1_conv2_1502511*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1501708Ё
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_1501622м
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_1502515block2_conv1_1502517*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1501726╡
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_1502520block2_conv2_1502522*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1501743я
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_1501634к
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_1502526block3_conv1_1502528*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1501761│
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_1502531block3_conv2_1502533*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1501778│
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_1502536block3_conv3_1502538*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1501795│
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_1502541block3_conv4_1502543*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1501812я
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_1501646к
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_1502547block4_conv1_1502549*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1501830│
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_1502552block4_conv2_1502554*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1501847│
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_1502557block4_conv3_1502559*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1501864│
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_1502562block4_conv4_1502564*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1501881я
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_1501658к
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_1502568block5_conv1_1502570*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1501899│
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_1502573block5_conv2_1502575*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1501916│
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_1502578block5_conv3_1502580*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1501933│
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_1502583block5_conv4_1502585*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1501950я
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_1501670|
IdentityIdentity$block3_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А~

Identity_1Identity$block4_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А~

Identity_2Identity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А╢
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Z V
1
_output_shapes
:         АА
!
_user_specified_name	input_1
А
┌
%__inference_signature_wrapper_1504169	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCall╜
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::         АА:         АА*P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_1501613y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:         АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
Ф
Е
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1506049

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Аз
Л
C__inference_VGG-19_layer_call_and_return_conditional_losses_1505256

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block3_conv4_conv2d_readvariableop_resource:АА;
,block3_conv4_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block4_conv4_conv2d_readvariableop_resource:АА;
,block4_conv4_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	АG
+block5_conv4_conv2d_readvariableop_resource:АА;
,block5_conv4_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2Ив#block1_conv1/BiasAdd/ReadVariableOpв"block1_conv1/Conv2D/ReadVariableOpв#block1_conv2/BiasAdd/ReadVariableOpв"block1_conv2/Conv2D/ReadVariableOpв#block2_conv1/BiasAdd/ReadVariableOpв"block2_conv1/Conv2D/ReadVariableOpв#block2_conv2/BiasAdd/ReadVariableOpв"block2_conv2/Conv2D/ReadVariableOpв#block3_conv1/BiasAdd/ReadVariableOpв"block3_conv1/Conv2D/ReadVariableOpв#block3_conv2/BiasAdd/ReadVariableOpв"block3_conv2/Conv2D/ReadVariableOpв#block3_conv3/BiasAdd/ReadVariableOpв"block3_conv3/Conv2D/ReadVariableOpв#block3_conv4/BiasAdd/ReadVariableOpв"block3_conv4/Conv2D/ReadVariableOpв#block4_conv1/BiasAdd/ReadVariableOpв"block4_conv1/Conv2D/ReadVariableOpв#block4_conv2/BiasAdd/ReadVariableOpв"block4_conv2/Conv2D/ReadVariableOpв#block4_conv3/BiasAdd/ReadVariableOpв"block4_conv3/Conv2D/ReadVariableOpв#block4_conv4/BiasAdd/ReadVariableOpв"block4_conv4/Conv2D/ReadVariableOpв#block5_conv1/BiasAdd/ReadVariableOpв"block5_conv1/Conv2D/ReadVariableOpв#block5_conv2/BiasAdd/ReadVariableOpв"block5_conv2/Conv2D/ReadVariableOpв#block5_conv3/BiasAdd/ReadVariableOpв"block5_conv3/Conv2D/ReadVariableOpв#block5_conv4/BiasAdd/ReadVariableOpв"block5_conv4/Conv2D/ReadVariableOpЦ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╡
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
М
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@Ц
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╬
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
М
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@о
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
Ч
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╠
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Н
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААu
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААШ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╧
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Н
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААu
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААн
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
Ш
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Ан
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
Ш
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           Ан
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock3_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:           Аv

Identity_1Identityblock4_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         Аv

Identity_2Identityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         АЎ	
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ю
v
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1505497
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:         А
"
_user_specified_name
inputs_1
Ф
h
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1502737

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ь
М
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1505437

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Д
H__inference_conv7_table_layer_call_and_return_conditional_losses_1505417

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Р
d
H__inference_block3_pool_layer_call_and_return_conditional_losses_1501646

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1505625

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
√
ж
.__inference_block5_conv4_layer_call_fn_1506058

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1501950x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Р
d
H__inference_block1_pool_layer_call_and_return_conditional_losses_1505759

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1505574

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Э
Д
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1505779

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         АААl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         АААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
║
M
1__inference_up_sampling2d_7_layer_call_fn_1505613

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1502832Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓
I
-__inference_block3_pool_layer_call_fn_1505894

inputs
identity╓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_1501646Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
И
[
/__inference_concatenate_2_layer_call_fn_1505490
inputs_0
inputs_1
identity╦
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1503112i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:         А
"
_user_specified_name
inputs_1
Оm
╒
E__inference_tablenet_layer_call_and_return_conditional_losses_1503944	
input(
vgg_19_1503825:@
vgg_19_1503827:@(
vgg_19_1503829:@@
vgg_19_1503831:@)
vgg_19_1503833:@А
vgg_19_1503835:	А*
vgg_19_1503837:АА
vgg_19_1503839:	А*
vgg_19_1503841:АА
vgg_19_1503843:	А*
vgg_19_1503845:АА
vgg_19_1503847:	А*
vgg_19_1503849:АА
vgg_19_1503851:	А*
vgg_19_1503853:АА
vgg_19_1503855:	А*
vgg_19_1503857:АА
vgg_19_1503859:	А*
vgg_19_1503861:АА
vgg_19_1503863:	А*
vgg_19_1503865:АА
vgg_19_1503867:	А*
vgg_19_1503869:АА
vgg_19_1503871:	А*
vgg_19_1503873:АА
vgg_19_1503875:	А*
vgg_19_1503877:АА
vgg_19_1503879:	А*
vgg_19_1503881:АА
vgg_19_1503883:	А*
vgg_19_1503885:АА
vgg_19_1503887:	А0
block6_conv1_1503892:АА#
block6_conv1_1503894:	А0
block6_conv2_1503898:АА#
block6_conv2_1503900:	А7
block7_conv1_column_1503904:АА*
block7_conv1_column_1503906:	А7
block8_conv1_column_1503910:АА*
block8_conv1_column_1503912:	А/
conv7_table_1503915:АА"
conv7_table_1503917:	А0
column_output_1503932:А
#
column_output_1503934:/
table_output_1503937:А
"
table_output_1503939:
identity

identity_1ИвVGG-19/StatefulPartitionedCallв$block6_conv1/StatefulPartitionedCallв$block6_conv2/StatefulPartitionedCallв+block7_conv1_column/StatefulPartitionedCallв+block8_conv1_column/StatefulPartitionedCallв%column_output/StatefulPartitionedCallв#conv7_table/StatefulPartitionedCallв$table_output/StatefulPartitionedCall╔
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputvgg_19_1503825vgg_19_1503827vgg_19_1503829vgg_19_1503831vgg_19_1503833vgg_19_1503835vgg_19_1503837vgg_19_1503839vgg_19_1503841vgg_19_1503843vgg_19_1503845vgg_19_1503847vgg_19_1503849vgg_19_1503851vgg_19_1503853vgg_19_1503855vgg_19_1503857vgg_19_1503859vgg_19_1503861vgg_19_1503863vgg_19_1503865vgg_19_1503867vgg_19_1503869vgg_19_1503871vgg_19_1503873vgg_19_1503875vgg_19_1503877vgg_19_1503879vgg_19_1503881vgg_19_1503883vgg_19_1503885vgg_19_1503887*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_VGG-19_layer_call_and_return_conditional_losses_1501960н
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_1503892block6_conv1_1503894*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1503008ў
block6_dropout1/PartitionedCallPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1503019о
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout1/PartitionedCall:output:0block6_conv2_1503898block6_conv2_1503900*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1503032ў
block6_dropout2/PartitionedCallPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1503043╩
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0block7_conv1_column_1503904block7_conv1_column_1503906*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1503056К
%block7_dropout_column/PartitionedCallPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1503067╨
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall.block7_dropout_column/PartitionedCall:output:0block8_conv1_column_1503910block8_conv1_column_1503912*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1503080к
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall(block6_dropout2/PartitionedCall:output:0conv7_table_1503915conv7_table_1503917*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv7_table_layer_call_and_return_conditional_losses_1503097Р
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1502718Д
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1502699Ш
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1503112Т
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1503121В
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1502756А
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1502737Ш
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1503132Ш
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1503141В
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1502794В
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1502775Д
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1502832Д
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1502813├
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_1503932column_output_1503934*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_column_output_layer_call_and_return_conditional_losses_1502916┐
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_1503937table_output_1503939*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_table_output_layer_call_and_return_conditional_losses_1502872Ц
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Щ

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Ж
NoOpNoOp^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
Ь
М
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1503056

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
t
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1503112

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:         А`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:XT
0
_output_shapes
:         А
 
_user_specified_nameinputs
Э
Д
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1501726

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         АААl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         АААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
б
Е
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1501743

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0А
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         АААl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:         АААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ААА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:         ААА
 
_user_specified_nameinputs
√
ж
.__inference_block3_conv2_layer_call_fn_1505838

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1501778x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         @@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Г
ж
.__inference_block2_conv2_layer_call_fn_1505788

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1501743z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:         ААА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ААА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:         ААА
 
_user_specified_nameinputs
зj
█
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502357

inputs.
block1_conv1_1502269:@"
block1_conv1_1502271:@.
block1_conv2_1502274:@@"
block1_conv2_1502276:@/
block2_conv1_1502280:@А#
block2_conv1_1502282:	А0
block2_conv2_1502285:АА#
block2_conv2_1502287:	А0
block3_conv1_1502291:АА#
block3_conv1_1502293:	А0
block3_conv2_1502296:АА#
block3_conv2_1502298:	А0
block3_conv3_1502301:АА#
block3_conv3_1502303:	А0
block3_conv4_1502306:АА#
block3_conv4_1502308:	А0
block4_conv1_1502312:АА#
block4_conv1_1502314:	А0
block4_conv2_1502317:АА#
block4_conv2_1502319:	А0
block4_conv3_1502322:АА#
block4_conv3_1502324:	А0
block4_conv4_1502327:АА#
block4_conv4_1502329:	А0
block5_conv1_1502333:АА#
block5_conv1_1502335:	А0
block5_conv2_1502338:АА#
block5_conv2_1502340:	А0
block5_conv3_1502343:АА#
block5_conv3_1502345:	А0
block5_conv4_1502348:АА#
block5_conv4_1502350:	А
identity

identity_1

identity_2Ив$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block3_conv4/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block4_conv4/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallв$block5_conv4/StatefulPartitionedCallН
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_1502269block1_conv1_1502271*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1501691┤
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_1502274block1_conv2_1502276*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1501708Ё
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block1_pool_layer_call_and_return_conditional_losses_1501622м
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_1502280block2_conv1_1502282*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1501726╡
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_1502285block2_conv2_1502287*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1501743я
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block2_pool_layer_call_and_return_conditional_losses_1501634к
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_1502291block3_conv1_1502293*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1501761│
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_1502296block3_conv2_1502298*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1501778│
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_1502301block3_conv3_1502303*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1501795│
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_1502306block3_conv4_1502308*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1501812я
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block3_pool_layer_call_and_return_conditional_losses_1501646к
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_1502312block4_conv1_1502314*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1501830│
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_1502317block4_conv2_1502319*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1501847│
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_1502322block4_conv3_1502324*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1501864│
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_1502327block4_conv4_1502329*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1501881я
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_1501658к
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_1502333block5_conv1_1502335*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1501899│
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_1502338block5_conv2_1502340*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1501916│
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_1502343block5_conv3_1502345*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1501933│
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_1502348block5_conv4_1502350*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1501950я
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block5_pool_layer_call_and_return_conditional_losses_1501670|
IdentityIdentity$block3_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А~

Identity_1Identity$block4_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А~

Identity_2Identity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А╢
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
√
ж
.__inference_block6_conv2_layer_call_fn_1505312

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1503032x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Е
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1501847

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Р
d
H__inference_block3_pool_layer_call_and_return_conditional_losses_1505899

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╢
K
/__inference_up_sampling2d_layer_call_fn_1505442

inputs
identity╪
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1502699Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
э
р
*__inference_tablenet_layer_call_fn_1504268

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+                           :+                           *P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_tablenet_layer_call_and_return_conditional_losses_1503159Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Л

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
√
ж
.__inference_block4_conv2_layer_call_fn_1505928

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1501847x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Х
t
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1503132

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs:XT
0
_output_shapes
:           А
 
_user_specified_nameinputs
Р
d
H__inference_block5_pool_layer_call_and_return_conditional_losses_1506079

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
║
M
1__inference_up_sampling2d_1_layer_call_fn_1505502

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1502737Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Р
d
H__inference_block4_pool_layer_call_and_return_conditional_losses_1505989

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
f
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1505454

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┬r
┘
E__inference_tablenet_layer_call_and_return_conditional_losses_1504066	
input(
vgg_19_1503947:@
vgg_19_1503949:@(
vgg_19_1503951:@@
vgg_19_1503953:@)
vgg_19_1503955:@А
vgg_19_1503957:	А*
vgg_19_1503959:АА
vgg_19_1503961:	А*
vgg_19_1503963:АА
vgg_19_1503965:	А*
vgg_19_1503967:АА
vgg_19_1503969:	А*
vgg_19_1503971:АА
vgg_19_1503973:	А*
vgg_19_1503975:АА
vgg_19_1503977:	А*
vgg_19_1503979:АА
vgg_19_1503981:	А*
vgg_19_1503983:АА
vgg_19_1503985:	А*
vgg_19_1503987:АА
vgg_19_1503989:	А*
vgg_19_1503991:АА
vgg_19_1503993:	А*
vgg_19_1503995:АА
vgg_19_1503997:	А*
vgg_19_1503999:АА
vgg_19_1504001:	А*
vgg_19_1504003:АА
vgg_19_1504005:	А*
vgg_19_1504007:АА
vgg_19_1504009:	А0
block6_conv1_1504014:АА#
block6_conv1_1504016:	А0
block6_conv2_1504020:АА#
block6_conv2_1504022:	А7
block7_conv1_column_1504026:АА*
block7_conv1_column_1504028:	А7
block8_conv1_column_1504032:АА*
block8_conv1_column_1504034:	А/
conv7_table_1504037:АА"
conv7_table_1504039:	А0
column_output_1504054:А
#
column_output_1504056:/
table_output_1504059:А
"
table_output_1504061:
identity

identity_1ИвVGG-19/StatefulPartitionedCallв$block6_conv1/StatefulPartitionedCallв$block6_conv2/StatefulPartitionedCallв'block6_dropout1/StatefulPartitionedCallв'block6_dropout2/StatefulPartitionedCallв+block7_conv1_column/StatefulPartitionedCallв-block7_dropout_column/StatefulPartitionedCallв+block8_conv1_column/StatefulPartitionedCallв%column_output/StatefulPartitionedCallв#conv7_table/StatefulPartitionedCallв$table_output/StatefulPartitionedCall╔
VGG-19/StatefulPartitionedCallStatefulPartitionedCallinputvgg_19_1503947vgg_19_1503949vgg_19_1503951vgg_19_1503953vgg_19_1503955vgg_19_1503957vgg_19_1503959vgg_19_1503961vgg_19_1503963vgg_19_1503965vgg_19_1503967vgg_19_1503969vgg_19_1503971vgg_19_1503973vgg_19_1503975vgg_19_1503977vgg_19_1503979vgg_19_1503981vgg_19_1503983vgg_19_1503985vgg_19_1503987vgg_19_1503989vgg_19_1503991vgg_19_1503993vgg_19_1503995vgg_19_1503997vgg_19_1503999vgg_19_1504001vgg_19_1504003vgg_19_1504005vgg_19_1504007vgg_19_1504009*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502357н
$block6_conv1/StatefulPartitionedCallStatefulPartitionedCall'VGG-19/StatefulPartitionedCall:output:2block6_conv1_1504014block6_conv1_1504016*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1503008З
'block6_dropout1/StatefulPartitionedCallStatefulPartitionedCall-block6_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1503390╢
$block6_conv2/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout1/StatefulPartitionedCall:output:0block6_conv2_1504020block6_conv2_1504022*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1503032▒
'block6_dropout2/StatefulPartitionedCallStatefulPartitionedCall-block6_conv2/StatefulPartitionedCall:output:0(^block6_dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1503357╥
+block7_conv1_column/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0block7_conv1_column_1504026block7_conv1_column_1504028*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1503056─
-block7_dropout_column/StatefulPartitionedCallStatefulPartitionedCall4block7_conv1_column/StatefulPartitionedCall:output:0(^block6_dropout2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1503324╪
+block8_conv1_column/StatefulPartitionedCallStatefulPartitionedCall6block7_dropout_column/StatefulPartitionedCall:output:0block8_conv1_column_1504032block8_conv1_column_1504034*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1503080▓
#conv7_table/StatefulPartitionedCallStatefulPartitionedCall0block6_dropout2/StatefulPartitionedCall:output:0conv7_table_1504037conv7_table_1504039*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv7_table_layer_call_and_return_conditional_losses_1503097Р
up_sampling2d_4/PartitionedCallPartitionedCall4block8_conv1_column/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1502718Д
up_sampling2d/PartitionedCallPartitionedCall,conv7_table/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1502699Ш
concatenate_2/PartitionedCallPartitionedCall(up_sampling2d_4/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1503112Т
concatenate/PartitionedCallPartitionedCall&up_sampling2d/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1503121В
up_sampling2d_5/PartitionedCallPartitionedCall&concatenate_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1502756А
up_sampling2d_1/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1502737Ш
concatenate_3/PartitionedCallPartitionedCall(up_sampling2d_5/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1503132Ш
concatenate_1/PartitionedCallPartitionedCall(up_sampling2d_1/PartitionedCall:output:0'VGG-19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1503141В
up_sampling2d_6/PartitionedCallPartitionedCall&concatenate_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1502794В
up_sampling2d_2/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1502775Д
up_sampling2d_7/PartitionedCallPartitionedCall(up_sampling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1502832Д
up_sampling2d_3/PartitionedCallPartitionedCall(up_sampling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1502813├
%column_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_7/PartitionedCall:output:0column_output_1504054column_output_1504056*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_column_output_layer_call_and_return_conditional_losses_1502916┐
$table_output/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_3/PartitionedCall:output:0table_output_1504059table_output_1504061*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_table_output_layer_call_and_return_conditional_losses_1502872Ц
IdentityIdentity-table_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Щ

Identity_1Identity.column_output/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           К
NoOpNoOp^VGG-19/StatefulPartitionedCall%^block6_conv1/StatefulPartitionedCall%^block6_conv2/StatefulPartitionedCall(^block6_dropout1/StatefulPartitionedCall(^block6_dropout2/StatefulPartitionedCall,^block7_conv1_column/StatefulPartitionedCall.^block7_dropout_column/StatefulPartitionedCall,^block8_conv1_column/StatefulPartitionedCall&^column_output/StatefulPartitionedCall$^conv7_table/StatefulPartitionedCall%^table_output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
VGG-19/StatefulPartitionedCallVGG-19/StatefulPartitionedCall2L
$block6_conv1/StatefulPartitionedCall$block6_conv1/StatefulPartitionedCall2L
$block6_conv2/StatefulPartitionedCall$block6_conv2/StatefulPartitionedCall2R
'block6_dropout1/StatefulPartitionedCall'block6_dropout1/StatefulPartitionedCall2R
'block6_dropout2/StatefulPartitionedCall'block6_dropout2/StatefulPartitionedCall2Z
+block7_conv1_column/StatefulPartitionedCall+block7_conv1_column/StatefulPartitionedCall2^
-block7_dropout_column/StatefulPartitionedCall-block7_dropout_column/StatefulPartitionedCall2Z
+block8_conv1_column/StatefulPartitionedCall+block8_conv1_column/StatefulPartitionedCall2N
%column_output/StatefulPartitionedCall%column_output/StatefulPartitionedCall2J
#conv7_table/StatefulPartitionedCall#conv7_table/StatefulPartitionedCall2L
$table_output/StatefulPartitionedCall$table_output/StatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
Р
d
H__inference_block5_pool_layer_call_and_return_conditional_losses_1501670

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
А
е
.__inference_block2_conv1_layer_call_fn_1505768

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         ААА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1501726z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:         ААА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
Р
d
H__inference_block4_pool_layer_call_and_return_conditional_losses_1501658

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1505514

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
э
р
*__inference_tablenet_layer_call_fn_1504367

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+                           :+                           *P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_tablenet_layer_call_and_return_conditional_losses_1503626Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Л

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
Е
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1501933

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1505591

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
h
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1505471

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
Е
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1501795

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Ю
v
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1505557
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:           А
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:           А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:           А
"
_user_specified_name
inputs_1
Аз
Л
C__inference_VGG-19_layer_call_and_return_conditional_losses_1505133

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block3_conv4_conv2d_readvariableop_resource:АА;
,block3_conv4_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block4_conv4_conv2d_readvariableop_resource:АА;
,block4_conv4_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	АG
+block5_conv4_conv2d_readvariableop_resource:АА;
,block5_conv4_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2Ив#block1_conv1/BiasAdd/ReadVariableOpв"block1_conv1/Conv2D/ReadVariableOpв#block1_conv2/BiasAdd/ReadVariableOpв"block1_conv2/Conv2D/ReadVariableOpв#block2_conv1/BiasAdd/ReadVariableOpв"block2_conv1/Conv2D/ReadVariableOpв#block2_conv2/BiasAdd/ReadVariableOpв"block2_conv2/Conv2D/ReadVariableOpв#block3_conv1/BiasAdd/ReadVariableOpв"block3_conv1/Conv2D/ReadVariableOpв#block3_conv2/BiasAdd/ReadVariableOpв"block3_conv2/Conv2D/ReadVariableOpв#block3_conv3/BiasAdd/ReadVariableOpв"block3_conv3/Conv2D/ReadVariableOpв#block3_conv4/BiasAdd/ReadVariableOpв"block3_conv4/Conv2D/ReadVariableOpв#block4_conv1/BiasAdd/ReadVariableOpв"block4_conv1/Conv2D/ReadVariableOpв#block4_conv2/BiasAdd/ReadVariableOpв"block4_conv2/Conv2D/ReadVariableOpв#block4_conv3/BiasAdd/ReadVariableOpв"block4_conv3/Conv2D/ReadVariableOpв#block4_conv4/BiasAdd/ReadVariableOpв"block4_conv4/Conv2D/ReadVariableOpв#block5_conv1/BiasAdd/ReadVariableOpв"block5_conv1/Conv2D/ReadVariableOpв#block5_conv2/BiasAdd/ReadVariableOpв"block5_conv2/Conv2D/ReadVariableOpв#block5_conv3/BiasAdd/ReadVariableOpв"block5_conv3/Conv2D/ReadVariableOpв#block5_conv4/BiasAdd/ReadVariableOpв"block5_conv4/Conv2D/ReadVariableOpЦ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0╡
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
М
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@Ц
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╬
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
М
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ж
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@о
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
Ч
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╠
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Н
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААu
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААШ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╧
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Н
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0з
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААu
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААн
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
Ш
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@АШ
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Н
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@Аs
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Ан
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
Ш
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           АШ
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Н
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           Аs
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           Ан
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╩
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         АШ
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0═
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Н
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         Ан
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock3_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:           Аv

Identity_1Identityblock4_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         Аv

Identity_2Identityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:         АЎ	
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
└
д
.__inference_table_output_layer_call_fn_1505634

inputs"
unknown:А

	unknown_0:
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_table_output_layer_call_and_return_conditional_losses_1502872Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А
: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А

 
_user_specified_nameinputs
√
ж
.__inference_block3_conv3_layer_call_fn_1505858

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1501795x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         @@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Ь
М
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1503080

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
Е
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1505276

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
∙
е
-__inference_conv7_table_layer_call_fn_1505406

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv7_table_layer_call_and_return_conditional_losses_1503097x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
√
ж
.__inference_block3_conv1_layer_call_fn_1505818

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1501761x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         @@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
╜
Э	
(__inference_VGG-19_layer_call_fn_1504937

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А
identity

identity_1

identity_2ИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:           А:         А:         А*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_VGG-19_layer_call_and_return_conditional_losses_1501960x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           Аz

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:         Аz

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╤
M
1__inference_block6_dropout2_layer_call_fn_1505328

inputs
identity└
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1503043i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Е
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1501881

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Ф
В
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1501691

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
Е
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1501778

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
КЫ
з$
 __inference__traced_save_1506361
file_prefix2
.savev2_block6_conv1_kernel_read_readvariableop0
,savev2_block6_conv1_bias_read_readvariableop2
.savev2_block6_conv2_kernel_read_readvariableop0
,savev2_block6_conv2_bias_read_readvariableop9
5savev2_block7_conv1_column_kernel_read_readvariableop7
3savev2_block7_conv1_column_bias_read_readvariableop1
-savev2_conv7_table_kernel_read_readvariableop/
+savev2_conv7_table_bias_read_readvariableop9
5savev2_block8_conv1_column_kernel_read_readvariableop7
3savev2_block8_conv1_column_bias_read_readvariableop2
.savev2_table_output_kernel_read_readvariableop0
,savev2_table_output_bias_read_readvariableop3
/savev2_column_output_kernel_read_readvariableop1
-savev2_column_output_bias_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block3_conv4_kernel_read_readvariableop0
,savev2_block3_conv4_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block4_conv4_kernel_read_readvariableop0
,savev2_block4_conv4_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop2
.savev2_block5_conv4_kernel_read_readvariableop0
,savev2_block5_conv4_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop9
5savev2_adam_m_block6_conv1_kernel_read_readvariableop9
5savev2_adam_v_block6_conv1_kernel_read_readvariableop7
3savev2_adam_m_block6_conv1_bias_read_readvariableop7
3savev2_adam_v_block6_conv1_bias_read_readvariableop9
5savev2_adam_m_block6_conv2_kernel_read_readvariableop9
5savev2_adam_v_block6_conv2_kernel_read_readvariableop7
3savev2_adam_m_block6_conv2_bias_read_readvariableop7
3savev2_adam_v_block6_conv2_bias_read_readvariableop@
<savev2_adam_m_block7_conv1_column_kernel_read_readvariableop@
<savev2_adam_v_block7_conv1_column_kernel_read_readvariableop>
:savev2_adam_m_block7_conv1_column_bias_read_readvariableop>
:savev2_adam_v_block7_conv1_column_bias_read_readvariableop8
4savev2_adam_m_conv7_table_kernel_read_readvariableop8
4savev2_adam_v_conv7_table_kernel_read_readvariableop6
2savev2_adam_m_conv7_table_bias_read_readvariableop6
2savev2_adam_v_conv7_table_bias_read_readvariableop@
<savev2_adam_m_block8_conv1_column_kernel_read_readvariableop@
<savev2_adam_v_block8_conv1_column_kernel_read_readvariableop>
:savev2_adam_m_block8_conv1_column_bias_read_readvariableop>
:savev2_adam_v_block8_conv1_column_bias_read_readvariableop9
5savev2_adam_m_table_output_kernel_read_readvariableop9
5savev2_adam_v_table_output_kernel_read_readvariableop7
3savev2_adam_m_table_output_bias_read_readvariableop7
3savev2_adam_v_table_output_bias_read_readvariableop:
6savev2_adam_m_column_output_kernel_read_readvariableop:
6savev2_adam_v_column_output_kernel_read_readvariableop8
4savev2_adam_m_column_output_bias_read_readvariableop8
4savev2_adam_v_column_output_bias_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ╠!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*ї 
valueы Bш WB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЮ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*├
value╣B╢WB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Р#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_block6_conv1_kernel_read_readvariableop,savev2_block6_conv1_bias_read_readvariableop.savev2_block6_conv2_kernel_read_readvariableop,savev2_block6_conv2_bias_read_readvariableop5savev2_block7_conv1_column_kernel_read_readvariableop3savev2_block7_conv1_column_bias_read_readvariableop-savev2_conv7_table_kernel_read_readvariableop+savev2_conv7_table_bias_read_readvariableop5savev2_block8_conv1_column_kernel_read_readvariableop3savev2_block8_conv1_column_bias_read_readvariableop.savev2_table_output_kernel_read_readvariableop,savev2_table_output_bias_read_readvariableop/savev2_column_output_kernel_read_readvariableop-savev2_column_output_bias_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block3_conv4_kernel_read_readvariableop,savev2_block3_conv4_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block4_conv4_kernel_read_readvariableop,savev2_block4_conv4_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop.savev2_block5_conv4_kernel_read_readvariableop,savev2_block5_conv4_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop5savev2_adam_m_block6_conv1_kernel_read_readvariableop5savev2_adam_v_block6_conv1_kernel_read_readvariableop3savev2_adam_m_block6_conv1_bias_read_readvariableop3savev2_adam_v_block6_conv1_bias_read_readvariableop5savev2_adam_m_block6_conv2_kernel_read_readvariableop5savev2_adam_v_block6_conv2_kernel_read_readvariableop3savev2_adam_m_block6_conv2_bias_read_readvariableop3savev2_adam_v_block6_conv2_bias_read_readvariableop<savev2_adam_m_block7_conv1_column_kernel_read_readvariableop<savev2_adam_v_block7_conv1_column_kernel_read_readvariableop:savev2_adam_m_block7_conv1_column_bias_read_readvariableop:savev2_adam_v_block7_conv1_column_bias_read_readvariableop4savev2_adam_m_conv7_table_kernel_read_readvariableop4savev2_adam_v_conv7_table_kernel_read_readvariableop2savev2_adam_m_conv7_table_bias_read_readvariableop2savev2_adam_v_conv7_table_bias_read_readvariableop<savev2_adam_m_block8_conv1_column_kernel_read_readvariableop<savev2_adam_v_block8_conv1_column_kernel_read_readvariableop:savev2_adam_m_block8_conv1_column_bias_read_readvariableop:savev2_adam_v_block8_conv1_column_bias_read_readvariableop5savev2_adam_m_table_output_kernel_read_readvariableop5savev2_adam_v_table_output_kernel_read_readvariableop3savev2_adam_m_table_output_bias_read_readvariableop3savev2_adam_v_table_output_bias_read_readvariableop6savev2_adam_m_column_output_kernel_read_readvariableop6savev2_adam_v_column_output_kernel_read_readvariableop4savev2_adam_m_column_output_bias_read_readvariableop4savev2_adam_v_column_output_bias_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *e
dtypes[
Y2W	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*Е
_input_shapesє
Ё: :АА:А:АА:А:АА:А:АА:А:АА:А:А
::А
::@:@:@@:@:@А:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А: : :АА:АА:А:А:АА:АА:А:А:АА:АА:А:А:АА:АА:А:А:АА:АА:А:А:А
:А
:::А
:А
::: : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:-)
'
_output_shapes
:А
: 

_output_shapes
::-)
'
_output_shapes
:А
: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:! 

_output_shapes	
:А:.!*
(
_output_shapes
:АА:!"

_output_shapes	
:А:.#*
(
_output_shapes
:АА:!$

_output_shapes	
:А:.%*
(
_output_shapes
:АА:!&

_output_shapes	
:А:.'*
(
_output_shapes
:АА:!(

_output_shapes	
:А:.)*
(
_output_shapes
:АА:!*

_output_shapes	
:А:.+*
(
_output_shapes
:АА:!,

_output_shapes	
:А:.-*
(
_output_shapes
:АА:!.

_output_shapes	
:А:/

_output_shapes
: :0

_output_shapes
: :.1*
(
_output_shapes
:АА:.2*
(
_output_shapes
:АА:!3

_output_shapes	
:А:!4

_output_shapes	
:А:.5*
(
_output_shapes
:АА:.6*
(
_output_shapes
:АА:!7

_output_shapes	
:А:!8

_output_shapes	
:А:.9*
(
_output_shapes
:АА:.:*
(
_output_shapes
:АА:!;

_output_shapes	
:А:!<

_output_shapes	
:А:.=*
(
_output_shapes
:АА:.>*
(
_output_shapes
:АА:!?

_output_shapes	
:А:!@

_output_shapes	
:А:.A*
(
_output_shapes
:АА:.B*
(
_output_shapes
:АА:!C

_output_shapes	
:А:!D

_output_shapes	
:А:-E)
'
_output_shapes
:А
:-F)
'
_output_shapes
:А
: G

_output_shapes
:: H

_output_shapes
::-I)
'
_output_shapes
:А
:-J)
'
_output_shapes
:А
: K

_output_shapes
:: L

_output_shapes
::M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: :V

_output_shapes
: :W

_output_shapes
: 
▌
S
7__inference_block7_dropout_column_layer_call_fn_1505375

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1503067i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
г
j
1__inference_block6_dropout1_layer_call_fn_1505286

inputs
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1503390x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Чх
║8
#__inference__traced_restore_1506629
file_prefix@
$assignvariableop_block6_conv1_kernel:АА3
$assignvariableop_1_block6_conv1_bias:	АB
&assignvariableop_2_block6_conv2_kernel:АА3
$assignvariableop_3_block6_conv2_bias:	АI
-assignvariableop_4_block7_conv1_column_kernel:АА:
+assignvariableop_5_block7_conv1_column_bias:	АA
%assignvariableop_6_conv7_table_kernel:АА2
#assignvariableop_7_conv7_table_bias:	АI
-assignvariableop_8_block8_conv1_column_kernel:АА:
+assignvariableop_9_block8_conv1_column_bias:	АB
'assignvariableop_10_table_output_kernel:А
3
%assignvariableop_11_table_output_bias:C
(assignvariableop_12_column_output_kernel:А
4
&assignvariableop_13_column_output_bias:A
'assignvariableop_14_block1_conv1_kernel:@3
%assignvariableop_15_block1_conv1_bias:@A
'assignvariableop_16_block1_conv2_kernel:@@3
%assignvariableop_17_block1_conv2_bias:@B
'assignvariableop_18_block2_conv1_kernel:@А4
%assignvariableop_19_block2_conv1_bias:	АC
'assignvariableop_20_block2_conv2_kernel:АА4
%assignvariableop_21_block2_conv2_bias:	АC
'assignvariableop_22_block3_conv1_kernel:АА4
%assignvariableop_23_block3_conv1_bias:	АC
'assignvariableop_24_block3_conv2_kernel:АА4
%assignvariableop_25_block3_conv2_bias:	АC
'assignvariableop_26_block3_conv3_kernel:АА4
%assignvariableop_27_block3_conv3_bias:	АC
'assignvariableop_28_block3_conv4_kernel:АА4
%assignvariableop_29_block3_conv4_bias:	АC
'assignvariableop_30_block4_conv1_kernel:АА4
%assignvariableop_31_block4_conv1_bias:	АC
'assignvariableop_32_block4_conv2_kernel:АА4
%assignvariableop_33_block4_conv2_bias:	АC
'assignvariableop_34_block4_conv3_kernel:АА4
%assignvariableop_35_block4_conv3_bias:	АC
'assignvariableop_36_block4_conv4_kernel:АА4
%assignvariableop_37_block4_conv4_bias:	АC
'assignvariableop_38_block5_conv1_kernel:АА4
%assignvariableop_39_block5_conv1_bias:	АC
'assignvariableop_40_block5_conv2_kernel:АА4
%assignvariableop_41_block5_conv2_bias:	АC
'assignvariableop_42_block5_conv3_kernel:АА4
%assignvariableop_43_block5_conv3_bias:	АC
'assignvariableop_44_block5_conv4_kernel:АА4
%assignvariableop_45_block5_conv4_bias:	А'
assignvariableop_46_iteration:	 +
!assignvariableop_47_learning_rate: J
.assignvariableop_48_adam_m_block6_conv1_kernel:ААJ
.assignvariableop_49_adam_v_block6_conv1_kernel:АА;
,assignvariableop_50_adam_m_block6_conv1_bias:	А;
,assignvariableop_51_adam_v_block6_conv1_bias:	АJ
.assignvariableop_52_adam_m_block6_conv2_kernel:ААJ
.assignvariableop_53_adam_v_block6_conv2_kernel:АА;
,assignvariableop_54_adam_m_block6_conv2_bias:	А;
,assignvariableop_55_adam_v_block6_conv2_bias:	АQ
5assignvariableop_56_adam_m_block7_conv1_column_kernel:ААQ
5assignvariableop_57_adam_v_block7_conv1_column_kernel:ААB
3assignvariableop_58_adam_m_block7_conv1_column_bias:	АB
3assignvariableop_59_adam_v_block7_conv1_column_bias:	АI
-assignvariableop_60_adam_m_conv7_table_kernel:ААI
-assignvariableop_61_adam_v_conv7_table_kernel:АА:
+assignvariableop_62_adam_m_conv7_table_bias:	А:
+assignvariableop_63_adam_v_conv7_table_bias:	АQ
5assignvariableop_64_adam_m_block8_conv1_column_kernel:ААQ
5assignvariableop_65_adam_v_block8_conv1_column_kernel:ААB
3assignvariableop_66_adam_m_block8_conv1_column_bias:	АB
3assignvariableop_67_adam_v_block8_conv1_column_bias:	АI
.assignvariableop_68_adam_m_table_output_kernel:А
I
.assignvariableop_69_adam_v_table_output_kernel:А
:
,assignvariableop_70_adam_m_table_output_bias::
,assignvariableop_71_adam_v_table_output_bias:J
/assignvariableop_72_adam_m_column_output_kernel:А
J
/assignvariableop_73_adam_v_column_output_kernel:А
;
-assignvariableop_74_adam_m_column_output_bias:;
-assignvariableop_75_adam_v_column_output_bias:%
assignvariableop_76_total_4: %
assignvariableop_77_count_4: %
assignvariableop_78_total_3: %
assignvariableop_79_count_3: %
assignvariableop_80_total_2: %
assignvariableop_81_count_2: %
assignvariableop_82_total_1: %
assignvariableop_83_count_1: #
assignvariableop_84_total: #
assignvariableop_85_count: 
identity_87ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_9╧!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*ї 
valueы Bш WB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHб
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*├
value╣B╢WB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╘
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Є
_output_shapes▀
▄:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*e
dtypes[
Y2W	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOpAssignVariableOp$assignvariableop_block6_conv1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_1AssignVariableOp$assignvariableop_1_block6_conv1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block6_conv2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block6_conv2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_4AssignVariableOp-assignvariableop_4_block7_conv1_column_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_5AssignVariableOp+assignvariableop_5_block7_conv1_column_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv7_table_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv7_table_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_8AssignVariableOp-assignvariableop_8_block8_conv1_column_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_9AssignVariableOp+assignvariableop_9_block8_conv1_column_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_10AssignVariableOp'assignvariableop_10_table_output_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_11AssignVariableOp%assignvariableop_11_table_output_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_12AssignVariableOp(assignvariableop_12_column_output_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_13AssignVariableOp&assignvariableop_13_column_output_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block1_conv1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block1_conv1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block1_conv2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block1_conv2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block2_conv1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block2_conv1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block2_conv2_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block2_conv2_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block3_conv1_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block3_conv1_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block3_conv2_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block3_conv2_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_26AssignVariableOp'assignvariableop_26_block3_conv3_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_27AssignVariableOp%assignvariableop_27_block3_conv3_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_28AssignVariableOp'assignvariableop_28_block3_conv4_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_29AssignVariableOp%assignvariableop_29_block3_conv4_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_30AssignVariableOp'assignvariableop_30_block4_conv1_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_31AssignVariableOp%assignvariableop_31_block4_conv1_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_32AssignVariableOp'assignvariableop_32_block4_conv2_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_33AssignVariableOp%assignvariableop_33_block4_conv2_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_34AssignVariableOp'assignvariableop_34_block4_conv3_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_35AssignVariableOp%assignvariableop_35_block4_conv3_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_36AssignVariableOp'assignvariableop_36_block4_conv4_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_37AssignVariableOp%assignvariableop_37_block4_conv4_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_38AssignVariableOp'assignvariableop_38_block5_conv1_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_39AssignVariableOp%assignvariableop_39_block5_conv1_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_40AssignVariableOp'assignvariableop_40_block5_conv2_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_41AssignVariableOp%assignvariableop_41_block5_conv2_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_42AssignVariableOp'assignvariableop_42_block5_conv3_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_43AssignVariableOp%assignvariableop_43_block5_conv3_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_44AssignVariableOp'assignvariableop_44_block5_conv4_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_45AssignVariableOp%assignvariableop_45_block5_conv4_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_46AssignVariableOpassignvariableop_46_iterationIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_47AssignVariableOp!assignvariableop_47_learning_rateIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_48AssignVariableOp.assignvariableop_48_adam_m_block6_conv1_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_49AssignVariableOp.assignvariableop_49_adam_v_block6_conv1_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_50AssignVariableOp,assignvariableop_50_adam_m_block6_conv1_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_51AssignVariableOp,assignvariableop_51_adam_v_block6_conv1_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_52AssignVariableOp.assignvariableop_52_adam_m_block6_conv2_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_53AssignVariableOp.assignvariableop_53_adam_v_block6_conv2_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_54AssignVariableOp,assignvariableop_54_adam_m_block6_conv2_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_v_block6_conv2_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_m_block7_conv1_column_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_v_block7_conv1_column_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_58AssignVariableOp3assignvariableop_58_adam_m_block7_conv1_column_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_59AssignVariableOp3assignvariableop_59_adam_v_block7_conv1_column_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_60AssignVariableOp-assignvariableop_60_adam_m_conv7_table_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_61AssignVariableOp-assignvariableop_61_adam_v_conv7_table_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_62AssignVariableOp+assignvariableop_62_adam_m_conv7_table_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_v_conv7_table_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_m_block8_conv1_column_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_v_block8_conv1_column_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_66AssignVariableOp3assignvariableop_66_adam_m_block8_conv1_column_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_67AssignVariableOp3assignvariableop_67_adam_v_block8_conv1_column_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_68AssignVariableOp.assignvariableop_68_adam_m_table_output_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_69AssignVariableOp.assignvariableop_69_adam_v_table_output_kernelIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_70AssignVariableOp,assignvariableop_70_adam_m_table_output_biasIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_v_table_output_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_72AssignVariableOp/assignvariableop_72_adam_m_column_output_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_73AssignVariableOp/assignvariableop_73_adam_v_column_output_kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_74AssignVariableOp-assignvariableop_74_adam_m_column_output_biasIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_75AssignVariableOp-assignvariableop_75_adam_v_column_output_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_76AssignVariableOpassignvariableop_76_total_4Identity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_77AssignVariableOpassignvariableop_77_count_4Identity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_78AssignVariableOpassignvariableop_78_total_3Identity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_79AssignVariableOpassignvariableop_79_count_3Identity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_80AssignVariableOpassignvariableop_80_total_2Identity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_81AssignVariableOpassignvariableop_81_count_2Identity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_82AssignVariableOpassignvariableop_82_total_1Identity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_83AssignVariableOpassignvariableop_83_count_1Identity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_84AssignVariableOpassignvariableop_84_totalIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_85AssignVariableOpassignvariableop_85_countIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 │
Identity_86Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_87IdentityIdentity_86:output:0^NoOp_1*
T0*
_output_shapes
: а
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_87Identity_87:output:0*├
_input_shapes▒
о: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Кш
╨*
E__inference_tablenet_layer_call_and_return_conditional_losses_1504864

inputsL
2vgg_19_block1_conv1_conv2d_readvariableop_resource:@A
3vgg_19_block1_conv1_biasadd_readvariableop_resource:@L
2vgg_19_block1_conv2_conv2d_readvariableop_resource:@@A
3vgg_19_block1_conv2_biasadd_readvariableop_resource:@M
2vgg_19_block2_conv1_conv2d_readvariableop_resource:@АB
3vgg_19_block2_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block2_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block2_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block3_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block3_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block4_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block4_conv4_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv1_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv1_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv2_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv2_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv3_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv3_biasadd_readvariableop_resource:	АN
2vgg_19_block5_conv4_conv2d_readvariableop_resource:ААB
3vgg_19_block5_conv4_biasadd_readvariableop_resource:	АG
+block6_conv1_conv2d_readvariableop_resource:АА;
,block6_conv1_biasadd_readvariableop_resource:	АG
+block6_conv2_conv2d_readvariableop_resource:АА;
,block6_conv2_biasadd_readvariableop_resource:	АN
2block7_conv1_column_conv2d_readvariableop_resource:ААB
3block7_conv1_column_biasadd_readvariableop_resource:	АN
2block8_conv1_column_conv2d_readvariableop_resource:ААB
3block8_conv1_column_biasadd_readvariableop_resource:	АF
*conv7_table_conv2d_readvariableop_resource:АА:
+conv7_table_biasadd_readvariableop_resource:	АQ
6column_output_conv2d_transpose_readvariableop_resource:А
;
-column_output_biasadd_readvariableop_resource:P
5table_output_conv2d_transpose_readvariableop_resource:А
:
,table_output_biasadd_readvariableop_resource:
identity

identity_1Ив*VGG-19/block1_conv1/BiasAdd/ReadVariableOpв)VGG-19/block1_conv1/Conv2D/ReadVariableOpв*VGG-19/block1_conv2/BiasAdd/ReadVariableOpв)VGG-19/block1_conv2/Conv2D/ReadVariableOpв*VGG-19/block2_conv1/BiasAdd/ReadVariableOpв)VGG-19/block2_conv1/Conv2D/ReadVariableOpв*VGG-19/block2_conv2/BiasAdd/ReadVariableOpв)VGG-19/block2_conv2/Conv2D/ReadVariableOpв*VGG-19/block3_conv1/BiasAdd/ReadVariableOpв)VGG-19/block3_conv1/Conv2D/ReadVariableOpв*VGG-19/block3_conv2/BiasAdd/ReadVariableOpв)VGG-19/block3_conv2/Conv2D/ReadVariableOpв*VGG-19/block3_conv3/BiasAdd/ReadVariableOpв)VGG-19/block3_conv3/Conv2D/ReadVariableOpв*VGG-19/block3_conv4/BiasAdd/ReadVariableOpв)VGG-19/block3_conv4/Conv2D/ReadVariableOpв*VGG-19/block4_conv1/BiasAdd/ReadVariableOpв)VGG-19/block4_conv1/Conv2D/ReadVariableOpв*VGG-19/block4_conv2/BiasAdd/ReadVariableOpв)VGG-19/block4_conv2/Conv2D/ReadVariableOpв*VGG-19/block4_conv3/BiasAdd/ReadVariableOpв)VGG-19/block4_conv3/Conv2D/ReadVariableOpв*VGG-19/block4_conv4/BiasAdd/ReadVariableOpв)VGG-19/block4_conv4/Conv2D/ReadVariableOpв*VGG-19/block5_conv1/BiasAdd/ReadVariableOpв)VGG-19/block5_conv1/Conv2D/ReadVariableOpв*VGG-19/block5_conv2/BiasAdd/ReadVariableOpв)VGG-19/block5_conv2/Conv2D/ReadVariableOpв*VGG-19/block5_conv3/BiasAdd/ReadVariableOpв)VGG-19/block5_conv3/Conv2D/ReadVariableOpв*VGG-19/block5_conv4/BiasAdd/ReadVariableOpв)VGG-19/block5_conv4/Conv2D/ReadVariableOpв#block6_conv1/BiasAdd/ReadVariableOpв"block6_conv1/Conv2D/ReadVariableOpв#block6_conv2/BiasAdd/ReadVariableOpв"block6_conv2/Conv2D/ReadVariableOpв*block7_conv1_column/BiasAdd/ReadVariableOpв)block7_conv1_column/Conv2D/ReadVariableOpв*block8_conv1_column/BiasAdd/ReadVariableOpв)block8_conv1_column/Conv2D/ReadVariableOpв$column_output/BiasAdd/ReadVariableOpв-column_output/conv2d_transpose/ReadVariableOpв"conv7_table/BiasAdd/ReadVariableOpв!conv7_table/Conv2D/ReadVariableOpв#table_output/BiasAdd/ReadVariableOpв,table_output/conv2d_transpose/ReadVariableOpд
)VGG-19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0├
VGG-19/block1_conv1/Conv2DConv2Dinputs1VGG-19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
Ъ
*VGG-19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
VGG-19/block1_conv1/BiasAddBiasAdd#VGG-19/block1_conv1/Conv2D:output:02VGG-19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@В
VGG-19/block1_conv1/ReluRelu$VGG-19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@д
)VGG-19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0у
VGG-19/block1_conv2/Conv2DConv2D&VGG-19/block1_conv1/Relu:activations:01VGG-19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
Ъ
*VGG-19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
VGG-19/block1_conv2/BiasAddBiasAdd#VGG-19/block1_conv2/Conv2D:output:02VGG-19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@В
VGG-19/block1_conv2/ReluRelu$VGG-19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         АА@╝
VGG-19/block1_pool/MaxPoolMaxPool&VGG-19/block1_conv2/Relu:activations:0*1
_output_shapes
:         АА@*
ksize
*
paddingVALID*
strides
е
)VGG-19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0с
VGG-19/block2_conv1/Conv2DConv2D#VGG-19/block1_pool/MaxPool:output:01VGG-19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Ы
*VGG-19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
VGG-19/block2_conv1/BiasAddBiasAdd#VGG-19/block2_conv1/Conv2D:output:02VGG-19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААГ
VGG-19/block2_conv1/ReluRelu$VGG-19/block2_conv1/BiasAdd:output:0*
T0*2
_output_shapes 
:         АААж
)VGG-19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ф
VGG-19/block2_conv2/Conv2DConv2D&VGG-19/block2_conv1/Relu:activations:01VGG-19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         ААА*
paddingSAME*
strides
Ы
*VGG-19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
VGG-19/block2_conv2/BiasAddBiasAdd#VGG-19/block2_conv2/Conv2D:output:02VGG-19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         АААГ
VGG-19/block2_conv2/ReluRelu$VGG-19/block2_conv2/BiasAdd:output:0*
T0*2
_output_shapes 
:         ААА╗
VGG-19/block2_pool/MaxPoolMaxPool&VGG-19/block2_conv2/Relu:activations:0*0
_output_shapes
:         @@А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block3_conv1/Conv2DConv2D#VGG-19/block2_pool/MaxPool:output:01VGG-19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv1/BiasAddBiasAdd#VGG-19/block3_conv1/Conv2D:output:02VGG-19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv1/ReluRelu$VGG-19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv2/Conv2DConv2D&VGG-19/block3_conv1/Relu:activations:01VGG-19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv2/BiasAddBiasAdd#VGG-19/block3_conv2/Conv2D:output:02VGG-19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv2/ReluRelu$VGG-19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv3/Conv2DConv2D&VGG-19/block3_conv2/Relu:activations:01VGG-19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv3/BiasAddBiasAdd#VGG-19/block3_conv3/Conv2D:output:02VGG-19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv3/ReluRelu$VGG-19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         @@Аж
)VGG-19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block3_conv4/Conv2DConv2D&VGG-19/block3_conv3/Relu:activations:01VGG-19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
Ы
*VGG-19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block3_conv4/BiasAddBiasAdd#VGG-19/block3_conv4/Conv2D:output:02VGG-19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АБ
VGG-19/block3_conv4/ReluRelu$VGG-19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         @@А╗
VGG-19/block3_pool/MaxPoolMaxPool&VGG-19/block3_conv4/Relu:activations:0*0
_output_shapes
:           А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block4_conv1/Conv2DConv2D#VGG-19/block3_pool/MaxPool:output:01VGG-19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv1/BiasAddBiasAdd#VGG-19/block4_conv1/Conv2D:output:02VGG-19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv1/ReluRelu$VGG-19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv2/Conv2DConv2D&VGG-19/block4_conv1/Relu:activations:01VGG-19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv2/BiasAddBiasAdd#VGG-19/block4_conv2/Conv2D:output:02VGG-19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv2/ReluRelu$VGG-19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv3/Conv2DConv2D&VGG-19/block4_conv2/Relu:activations:01VGG-19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv3/BiasAddBiasAdd#VGG-19/block4_conv3/Conv2D:output:02VGG-19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv3/ReluRelu$VGG-19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:           Аж
)VGG-19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block4_conv4/Conv2DConv2D&VGG-19/block4_conv3/Relu:activations:01VGG-19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
Ы
*VGG-19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block4_conv4/BiasAddBiasAdd#VGG-19/block4_conv4/Conv2D:output:02VGG-19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АБ
VGG-19/block4_conv4/ReluRelu$VGG-19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:           А╗
VGG-19/block4_pool/MaxPoolMaxPool&VGG-19/block4_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
ж
)VGG-19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0▀
VGG-19/block5_conv1/Conv2DConv2D#VGG-19/block4_pool/MaxPool:output:01VGG-19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv1/BiasAddBiasAdd#VGG-19/block5_conv1/Conv2D:output:02VGG-19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv1/ReluRelu$VGG-19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv2/Conv2DConv2D&VGG-19/block5_conv1/Relu:activations:01VGG-19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv2/BiasAddBiasAdd#VGG-19/block5_conv2/Conv2D:output:02VGG-19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv2/ReluRelu$VGG-19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv3/Conv2DConv2D&VGG-19/block5_conv2/Relu:activations:01VGG-19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv3/BiasAddBiasAdd#VGG-19/block5_conv3/Conv2D:output:02VGG-19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv3/ReluRelu$VGG-19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         Аж
)VGG-19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp2vgg_19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0т
VGG-19/block5_conv4/Conv2DConv2D&VGG-19/block5_conv3/Relu:activations:01VGG-19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Ы
*VGG-19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp3vgg_19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
VGG-19/block5_conv4/BiasAddBiasAdd#VGG-19/block5_conv4/Conv2D:output:02VGG-19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
VGG-19/block5_conv4/ReluRelu$VGG-19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:         А╗
VGG-19/block5_pool/MaxPoolMaxPool&VGG-19/block5_conv4/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ш
"block6_conv1/Conv2D/ReadVariableOpReadVariableOp+block6_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╥
block6_conv1/Conv2DConv2D#VGG-19/block5_pool/MaxPool:output:0*block6_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Н
#block6_conv1/BiasAdd/ReadVariableOpReadVariableOp,block6_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block6_conv1/BiasAddBiasAddblock6_conv1/Conv2D:output:0+block6_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block6_conv1/ReluRelublock6_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         Аb
block6_dropout1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@ж
block6_dropout1/dropout/MulMulblock6_conv1/Relu:activations:0&block6_dropout1/dropout/Const:output:0*
T0*0
_output_shapes
:         Аl
block6_dropout1/dropout/ShapeShapeblock6_conv1/Relu:activations:0*
T0*
_output_shapes
:╡
4block6_dropout1/dropout/random_uniform/RandomUniformRandomUniform&block6_dropout1/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0k
&block6_dropout1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?▀
$block6_dropout1/dropout/GreaterEqualGreaterEqual=block6_dropout1/dropout/random_uniform/RandomUniform:output:0/block6_dropout1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аd
block6_dropout1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
 block6_dropout1/dropout/SelectV2SelectV2(block6_dropout1/dropout/GreaterEqual:z:0block6_dropout1/dropout/Mul:z:0(block6_dropout1/dropout/Const_1:output:0*
T0*0
_output_shapes
:         АШ
"block6_conv2/Conv2D/ReadVariableOpReadVariableOp+block6_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╪
block6_conv2/Conv2DConv2D)block6_dropout1/dropout/SelectV2:output:0*block6_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Н
#block6_conv2/BiasAdd/ReadVariableOpReadVariableOp,block6_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0е
block6_conv2/BiasAddBiasAddblock6_conv2/Conv2D:output:0+block6_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аs
block6_conv2/ReluRelublock6_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         Аb
block6_dropout2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@ж
block6_dropout2/dropout/MulMulblock6_conv2/Relu:activations:0&block6_dropout2/dropout/Const:output:0*
T0*0
_output_shapes
:         Аl
block6_dropout2/dropout/ShapeShapeblock6_conv2/Relu:activations:0*
T0*
_output_shapes
:╡
4block6_dropout2/dropout/random_uniform/RandomUniformRandomUniform&block6_dropout2/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0k
&block6_dropout2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?▀
$block6_dropout2/dropout/GreaterEqualGreaterEqual=block6_dropout2/dropout/random_uniform/RandomUniform:output:0/block6_dropout2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аd
block6_dropout2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
 block6_dropout2/dropout/SelectV2SelectV2(block6_dropout2/dropout/GreaterEqual:z:0block6_dropout2/dropout/Mul:z:0(block6_dropout2/dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аж
)block7_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block7_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ц
block7_conv1_column/Conv2DConv2D)block6_dropout2/dropout/SelectV2:output:01block7_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*block7_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block7_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
block7_conv1_column/BiasAddBiasAdd#block7_conv1_column/Conv2D:output:02block7_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
block7_conv1_column/ReluRelu$block7_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         Аh
#block7_dropout_column/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@╣
!block7_dropout_column/dropout/MulMul&block7_conv1_column/Relu:activations:0,block7_dropout_column/dropout/Const:output:0*
T0*0
_output_shapes
:         Аy
#block7_dropout_column/dropout/ShapeShape&block7_conv1_column/Relu:activations:0*
T0*
_output_shapes
:┴
:block7_dropout_column/dropout/random_uniform/RandomUniformRandomUniform,block7_dropout_column/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0q
,block7_dropout_column/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?ё
*block7_dropout_column/dropout/GreaterEqualGreaterEqualCblock7_dropout_column/dropout/random_uniform/RandomUniform:output:05block7_dropout_column/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аj
%block7_dropout_column/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ї
&block7_dropout_column/dropout/SelectV2SelectV2.block7_dropout_column/dropout/GreaterEqual:z:0%block7_dropout_column/dropout/Mul:z:0.block7_dropout_column/dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аж
)block8_conv1_column/Conv2D/ReadVariableOpReadVariableOp2block8_conv1_column_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ь
block8_conv1_column/Conv2DConv2D/block7_dropout_column/dropout/SelectV2:output:01block8_conv1_column/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Ы
*block8_conv1_column/BiasAdd/ReadVariableOpReadVariableOp3block8_conv1_column_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
block8_conv1_column/BiasAddBiasAdd#block8_conv1_column/Conv2D:output:02block8_conv1_column/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АБ
block8_conv1_column/ReluRelu$block8_conv1_column/BiasAdd:output:0*
T0*0
_output_shapes
:         АЦ
!conv7_table/Conv2D/ReadVariableOpReadVariableOp*conv7_table_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╓
conv7_table/Conv2DConv2D)block6_dropout2/dropout/SelectV2:output:0)conv7_table/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Л
"conv7_table/BiasAdd/ReadVariableOpReadVariableOp+conv7_table_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
conv7_table/BiasAddBiasAddconv7_table/Conv2D:output:0*conv7_table/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
conv7_table/ReluReluconv7_table/BiasAdd:output:0*
T0*0
_output_shapes
:         Аf
up_sampling2d_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_4/mulMulup_sampling2d_4/Const:output:0 up_sampling2d_4/Const_1:output:0*
T0*
_output_shapes
:█
,up_sampling2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor&block8_conv1_column/Relu:activations:0up_sampling2d_4/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers(d
up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"      f
up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      {
up_sampling2d/mulMulup_sampling2d/Const:output:0up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:╧
*up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighborconv7_table/Relu:activations:0up_sampling2d/mul:z:0*
T0*0
_output_shapes
:         А*
half_pixel_centers([
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_2/concatConcatV2=up_sampling2d_4/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:         АY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ц
concatenate/concatConcatV2;up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block4_pool/MaxPool:output:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:         Аf
up_sampling2d_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_5/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_5/mulMulup_sampling2d_5/Const:output:0 up_sampling2d_5/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_5/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_2/concat:output:0up_sampling2d_5/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers(f
up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      h
up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_1/mulMulup_sampling2d_1/Const:output:0 up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:╨
,up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate/concat:output:0up_sampling2d_1/mul:z:0*
T0*0
_output_shapes
:           А*
half_pixel_centers([
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_3/concatConcatV2=up_sampling2d_5/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ь
concatenate_1/concatConcatV2=up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0#VGG-19/block3_pool/MaxPool:output:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:           А
f
up_sampling2d_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_6/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_6/mulMulup_sampling2d_6/Const:output:0 up_sampling2d_6/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_6/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_3/concat:output:0up_sampling2d_6/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(f
up_sampling2d_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"        h
up_sampling2d_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_2/mulMulup_sampling2d_2/Const:output:0 up_sampling2d_2/Const_1:output:0*
T0*
_output_shapes
:╥
,up_sampling2d_2/resize/ResizeNearestNeighborResizeNearestNeighborconcatenate_1/concat:output:0up_sampling2d_2/mul:z:0*
T0*0
_output_shapes
:         @@А
*
half_pixel_centers(f
up_sampling2d_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_7/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_7/mulMulup_sampling2d_7/Const:output:0 up_sampling2d_7/Const_1:output:0*
T0*
_output_shapes
:Ї
,up_sampling2d_7/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_6/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_7/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(f
up_sampling2d_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"@   @   h
up_sampling2d_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Б
up_sampling2d_3/mulMulup_sampling2d_3/Const:output:0 up_sampling2d_3/Const_1:output:0*
T0*
_output_shapes
:Ї
,up_sampling2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor=up_sampling2d_2/resize/ResizeNearestNeighbor:resized_images:0up_sampling2d_3/mul:z:0*
T0*2
_output_shapes 
:         ААА
*
half_pixel_centers(А
column_output/ShapeShape=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:k
!column_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#column_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#column_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
column_output/strided_sliceStridedSlicecolumn_output/Shape:output:0*column_output/strided_slice/stack:output:0,column_output/strided_slice/stack_1:output:0,column_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
column_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :АX
column_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :АW
column_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╧
column_output/stackPack$column_output/strided_slice:output:0column_output/stack/1:output:0column_output/stack/2:output:0column_output/stack/3:output:0*
N*
T0*
_output_shapes
:m
#column_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%column_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%column_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
column_output/strided_slice_1StridedSlicecolumn_output/stack:output:0,column_output/strided_slice_1/stack:output:0.column_output/strided_slice_1/stack_1:output:0.column_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskн
-column_output/conv2d_transpose/ReadVariableOpReadVariableOp6column_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0н
column_output/conv2d_transposeConv2DBackpropInputcolumn_output/stack:output:05column_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_7/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
О
$column_output/BiasAdd/ReadVariableOpReadVariableOp-column_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
column_output/BiasAddBiasAdd'column_output/conv2d_transpose:output:0,column_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА
table_output/ShapeShape=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:j
 table_output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"table_output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"table_output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
table_output/strided_sliceStridedSlicetable_output/Shape:output:0)table_output/strided_slice/stack:output:0+table_output/strided_slice/stack_1:output:0+table_output/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
table_output/stack/1Const*
_output_shapes
: *
dtype0*
value
B :АW
table_output/stack/2Const*
_output_shapes
: *
dtype0*
value
B :АV
table_output/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╩
table_output/stackPack#table_output/strided_slice:output:0table_output/stack/1:output:0table_output/stack/2:output:0table_output/stack/3:output:0*
N*
T0*
_output_shapes
:l
"table_output/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$table_output/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$table_output/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ъ
table_output/strided_slice_1StridedSlicetable_output/stack:output:0+table_output/strided_slice_1/stack:output:0-table_output/strided_slice_1/stack_1:output:0-table_output/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskл
,table_output/conv2d_transpose/ReadVariableOpReadVariableOp5table_output_conv2d_transpose_readvariableop_resource*'
_output_shapes
:А
*
dtype0к
table_output/conv2d_transposeConv2DBackpropInputtable_output/stack:output:04table_output/conv2d_transpose/ReadVariableOp:value:0=up_sampling2d_3/resize/ResizeNearestNeighbor:resized_images:0*
T0*1
_output_shapes
:         АА*
paddingSAME*
strides
М
#table_output/BiasAdd/ReadVariableOpReadVariableOp,table_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0░
table_output/BiasAddBiasAdd&table_output/conv2d_transpose:output:0+table_output/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ААv
IdentityIdentitytable_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААy

Identity_1Identitycolumn_output/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ААУ
NoOpNoOp+^VGG-19/block1_conv1/BiasAdd/ReadVariableOp*^VGG-19/block1_conv1/Conv2D/ReadVariableOp+^VGG-19/block1_conv2/BiasAdd/ReadVariableOp*^VGG-19/block1_conv2/Conv2D/ReadVariableOp+^VGG-19/block2_conv1/BiasAdd/ReadVariableOp*^VGG-19/block2_conv1/Conv2D/ReadVariableOp+^VGG-19/block2_conv2/BiasAdd/ReadVariableOp*^VGG-19/block2_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv1/BiasAdd/ReadVariableOp*^VGG-19/block3_conv1/Conv2D/ReadVariableOp+^VGG-19/block3_conv2/BiasAdd/ReadVariableOp*^VGG-19/block3_conv2/Conv2D/ReadVariableOp+^VGG-19/block3_conv3/BiasAdd/ReadVariableOp*^VGG-19/block3_conv3/Conv2D/ReadVariableOp+^VGG-19/block3_conv4/BiasAdd/ReadVariableOp*^VGG-19/block3_conv4/Conv2D/ReadVariableOp+^VGG-19/block4_conv1/BiasAdd/ReadVariableOp*^VGG-19/block4_conv1/Conv2D/ReadVariableOp+^VGG-19/block4_conv2/BiasAdd/ReadVariableOp*^VGG-19/block4_conv2/Conv2D/ReadVariableOp+^VGG-19/block4_conv3/BiasAdd/ReadVariableOp*^VGG-19/block4_conv3/Conv2D/ReadVariableOp+^VGG-19/block4_conv4/BiasAdd/ReadVariableOp*^VGG-19/block4_conv4/Conv2D/ReadVariableOp+^VGG-19/block5_conv1/BiasAdd/ReadVariableOp*^VGG-19/block5_conv1/Conv2D/ReadVariableOp+^VGG-19/block5_conv2/BiasAdd/ReadVariableOp*^VGG-19/block5_conv2/Conv2D/ReadVariableOp+^VGG-19/block5_conv3/BiasAdd/ReadVariableOp*^VGG-19/block5_conv3/Conv2D/ReadVariableOp+^VGG-19/block5_conv4/BiasAdd/ReadVariableOp*^VGG-19/block5_conv4/Conv2D/ReadVariableOp$^block6_conv1/BiasAdd/ReadVariableOp#^block6_conv1/Conv2D/ReadVariableOp$^block6_conv2/BiasAdd/ReadVariableOp#^block6_conv2/Conv2D/ReadVariableOp+^block7_conv1_column/BiasAdd/ReadVariableOp*^block7_conv1_column/Conv2D/ReadVariableOp+^block8_conv1_column/BiasAdd/ReadVariableOp*^block8_conv1_column/Conv2D/ReadVariableOp%^column_output/BiasAdd/ReadVariableOp.^column_output/conv2d_transpose/ReadVariableOp#^conv7_table/BiasAdd/ReadVariableOp"^conv7_table/Conv2D/ReadVariableOp$^table_output/BiasAdd/ReadVariableOp-^table_output/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*VGG-19/block1_conv1/BiasAdd/ReadVariableOp*VGG-19/block1_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv1/Conv2D/ReadVariableOp)VGG-19/block1_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block1_conv2/BiasAdd/ReadVariableOp*VGG-19/block1_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block1_conv2/Conv2D/ReadVariableOp)VGG-19/block1_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv1/BiasAdd/ReadVariableOp*VGG-19/block2_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv1/Conv2D/ReadVariableOp)VGG-19/block2_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block2_conv2/BiasAdd/ReadVariableOp*VGG-19/block2_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block2_conv2/Conv2D/ReadVariableOp)VGG-19/block2_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv1/BiasAdd/ReadVariableOp*VGG-19/block3_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv1/Conv2D/ReadVariableOp)VGG-19/block3_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv2/BiasAdd/ReadVariableOp*VGG-19/block3_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv2/Conv2D/ReadVariableOp)VGG-19/block3_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv3/BiasAdd/ReadVariableOp*VGG-19/block3_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv3/Conv2D/ReadVariableOp)VGG-19/block3_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block3_conv4/BiasAdd/ReadVariableOp*VGG-19/block3_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block3_conv4/Conv2D/ReadVariableOp)VGG-19/block3_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv1/BiasAdd/ReadVariableOp*VGG-19/block4_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv1/Conv2D/ReadVariableOp)VGG-19/block4_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv2/BiasAdd/ReadVariableOp*VGG-19/block4_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv2/Conv2D/ReadVariableOp)VGG-19/block4_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv3/BiasAdd/ReadVariableOp*VGG-19/block4_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv3/Conv2D/ReadVariableOp)VGG-19/block4_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block4_conv4/BiasAdd/ReadVariableOp*VGG-19/block4_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block4_conv4/Conv2D/ReadVariableOp)VGG-19/block4_conv4/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv1/BiasAdd/ReadVariableOp*VGG-19/block5_conv1/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv1/Conv2D/ReadVariableOp)VGG-19/block5_conv1/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv2/BiasAdd/ReadVariableOp*VGG-19/block5_conv2/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv2/Conv2D/ReadVariableOp)VGG-19/block5_conv2/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv3/BiasAdd/ReadVariableOp*VGG-19/block5_conv3/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv3/Conv2D/ReadVariableOp)VGG-19/block5_conv3/Conv2D/ReadVariableOp2X
*VGG-19/block5_conv4/BiasAdd/ReadVariableOp*VGG-19/block5_conv4/BiasAdd/ReadVariableOp2V
)VGG-19/block5_conv4/Conv2D/ReadVariableOp)VGG-19/block5_conv4/Conv2D/ReadVariableOp2J
#block6_conv1/BiasAdd/ReadVariableOp#block6_conv1/BiasAdd/ReadVariableOp2H
"block6_conv1/Conv2D/ReadVariableOp"block6_conv1/Conv2D/ReadVariableOp2J
#block6_conv2/BiasAdd/ReadVariableOp#block6_conv2/BiasAdd/ReadVariableOp2H
"block6_conv2/Conv2D/ReadVariableOp"block6_conv2/Conv2D/ReadVariableOp2X
*block7_conv1_column/BiasAdd/ReadVariableOp*block7_conv1_column/BiasAdd/ReadVariableOp2V
)block7_conv1_column/Conv2D/ReadVariableOp)block7_conv1_column/Conv2D/ReadVariableOp2X
*block8_conv1_column/BiasAdd/ReadVariableOp*block8_conv1_column/BiasAdd/ReadVariableOp2V
)block8_conv1_column/Conv2D/ReadVariableOp)block8_conv1_column/Conv2D/ReadVariableOp2L
$column_output/BiasAdd/ReadVariableOp$column_output/BiasAdd/ReadVariableOp2^
-column_output/conv2d_transpose/ReadVariableOp-column_output/conv2d_transpose/ReadVariableOp2H
"conv7_table/BiasAdd/ReadVariableOp"conv7_table/BiasAdd/ReadVariableOp2F
!conv7_table/Conv2D/ReadVariableOp!conv7_table/Conv2D/ReadVariableOp2J
#table_output/BiasAdd/ReadVariableOp#table_output/BiasAdd/ReadVariableOp2\
,table_output/conv2d_transpose/ReadVariableOp,table_output/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ъ
▀
*__inference_tablenet_layer_call_fn_1503256	
input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А&

unknown_25:АА

unknown_26:	А&

unknown_27:АА

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А&

unknown_35:АА

unknown_36:	А&

unknown_37:АА

unknown_38:	А&

unknown_39:АА

unknown_40:	А%

unknown_41:А


unknown_42:%

unknown_43:А


unknown_44:
identity

identity_1ИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *n
_output_shapes\
Z:+                           :+                           *P
_read_only_resource_inputs2
0.	
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_tablenet_layer_call_and_return_conditional_losses_1503159Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Л

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*М
_input_shapes{
y:         АА: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:         АА

_user_specified_nameinput
√
ж
.__inference_block4_conv3_layer_call_fn_1505948

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1501864x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
Ф
В
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1501708

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА@
 
_user_specified_nameinputs
Г
j
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1505338

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Е
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1506029

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Д
H__inference_conv7_table_layer_call_and_return_conditional_losses_1503097

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
г
j
1__inference_block6_dropout2_layer_call_fn_1505333

inputs
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1503357x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
√
ж
.__inference_block3_conv4_layer_call_fn_1505878

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         @@А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1501812x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         @@А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Г
j
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1503019

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Д
Y
-__inference_concatenate_layer_call_fn_1505477
inputs_0
inputs_1
identity╔
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_1503121i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,                           А:         А:l h
B
_output_shapes0
.:,                           А
"
_user_specified_name
inputs_0:ZV
0
_output_shapes
:         А
"
_user_specified_name
inputs_1
√
ж
.__inference_block6_conv1_layer_call_fn_1505265

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1503008x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
Е
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1501761

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         @@АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         @@Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         @@Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         @@А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         @@А
 
_user_specified_nameinputs
Й
н
5__inference_block8_conv1_column_layer_call_fn_1505426

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1503080x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▓
I
-__inference_block4_pool_layer_call_fn_1505984

inputs
identity╓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_block4_pool_layer_call_and_return_conditional_losses_1501658Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╫

q
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1503324

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а@m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L?п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ф
В
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1505729

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АА@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         АА@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         АА@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
Е
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1501830

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:           А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:           АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:           Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:           Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:           А
 
_user_specified_nameinputs
║
M
1__inference_up_sampling2d_3_layer_call_fn_1505596

inputs
identity┌
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1502813Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*М
serving_default°
A
input8
serving_default_input:0         ААK
column_output:
StatefulPartitionedCall:0         ААJ
table_output:
StatefulPartitionedCall:1         ААtensorflow/serving/predict:╓▐
Г
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-6
layer-22
layer_with_weights-7
layer-23
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
 	optimizer
!loss
"
signatures"
_tf_keras_network
"
_tf_keras_input_layer
ў
#layer-0
$layer_with_weights-0
$layer-1
%layer_with_weights-1
%layer-2
&layer-3
'layer_with_weights-2
'layer-4
(layer_with_weights-3
(layer-5
)layer-6
*layer_with_weights-4
*layer-7
+layer_with_weights-5
+layer-8
,layer_with_weights-6
,layer-9
-layer_with_weights-7
-layer-10
.layer-11
/layer_with_weights-8
/layer-12
0layer_with_weights-9
0layer-13
1layer_with_weights-10
1layer-14
2layer_with_weights-11
2layer-15
3layer-16
4layer_with_weights-12
4layer-17
5layer_with_weights-13
5layer-18
6layer_with_weights-14
6layer-19
7layer_with_weights-15
7layer-20
8layer-21
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_network
▌
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias
 G_jit_compiled_convolution_op"
_tf_keras_layer
╝
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator"
_tf_keras_layer
▌
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op"
_tf_keras_layer
╝
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^_random_generator"
_tf_keras_layer
▌
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias
 g_jit_compiled_convolution_op"
_tf_keras_layer
╝
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses
n_random_generator"
_tf_keras_layer
▌
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses

ukernel
vbias
 w_jit_compiled_convolution_op"
_tf_keras_layer
▐
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
!А_jit_compiled_convolution_op"
_tf_keras_layer
л
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
л
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
л
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
л
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
л
л	variables
мtrainable_variables
нregularization_losses
о	keras_api
п__call__
+░&call_and_return_all_conditional_losses"
_tf_keras_layer
л
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
╡__call__
+╢&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╖	variables
╕trainable_variables
╣regularization_losses
║	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"
_tf_keras_layer
л
├	variables
─trainable_variables
┼regularization_losses
╞	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
╔	variables
╩trainable_variables
╦regularization_losses
╠	keras_api
═__call__
+╬&call_and_return_all_conditional_losses
╧kernel
	╨bias
!╤_jit_compiled_convolution_op"
_tf_keras_layer
ц
╥	variables
╙trainable_variables
╘regularization_losses
╒	keras_api
╓__call__
+╫&call_and_return_all_conditional_losses
╪kernel
	┘bias
!┌_jit_compiled_convolution_op"
_tf_keras_layer
к
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31
E32
F33
U34
V35
e36
f37
u38
v39
~40
41
╧42
╨43
╪44
┘45"
trackable_list_wrapper
К
E0
F1
U2
V3
e4
f5
u6
v7
~8
9
╧10
╨11
╪12
┘13"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
Аtrace_0
Бtrace_1
Вtrace_2
Гtrace_32Є
*__inference_tablenet_layer_call_fn_1503256
*__inference_tablenet_layer_call_fn_1504268
*__inference_tablenet_layer_call_fn_1504367
*__inference_tablenet_layer_call_fn_1503822┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0zБtrace_1zВtrace_2zГtrace_3
╤
Дtrace_0
Еtrace_1
Жtrace_2
Зtrace_32▐
E__inference_tablenet_layer_call_and_return_conditional_losses_1504605
E__inference_tablenet_layer_call_and_return_conditional_losses_1504864
E__inference_tablenet_layer_call_and_return_conditional_losses_1503944
E__inference_tablenet_layer_call_and_return_conditional_losses_1504066┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0zЕtrace_1zЖtrace_2zЗtrace_3
╦B╚
"__inference__wrapped_model_1501613input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
г
И
_variables
Й_iterations
К_learning_rate
Л_index_dict
М
_momentums
Н_velocities
О_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
-
Пserving_default"
signature_map
7
Р_init_input_shape"
_tf_keras_input_layer
ц
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses
█kernel
	▄bias
!Ч_jit_compiled_convolution_op"
_tf_keras_layer
ц
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
▌kernel
	▐bias
!Ю_jit_compiled_convolution_op"
_tf_keras_layer
л
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
▀kernel
	рbias
!л_jit_compiled_convolution_op"
_tf_keras_layer
ц
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
░__call__
+▒&call_and_return_all_conditional_losses
сkernel
	тbias
!▓_jit_compiled_convolution_op"
_tf_keras_layer
л
│	variables
┤trainable_variables
╡regularization_losses
╢	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses
уkernel
	фbias
!┐_jit_compiled_convolution_op"
_tf_keras_layer
ц
└	variables
┴trainable_variables
┬regularization_losses
├	keras_api
─__call__
+┼&call_and_return_all_conditional_losses
хkernel
	цbias
!╞_jit_compiled_convolution_op"
_tf_keras_layer
ц
╟	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses
чkernel
	шbias
!═_jit_compiled_convolution_op"
_tf_keras_layer
ц
╬	variables
╧trainable_variables
╨regularization_losses
╤	keras_api
╥__call__
+╙&call_and_return_all_conditional_losses
щkernel
	ъbias
!╘_jit_compiled_convolution_op"
_tf_keras_layer
л
╒	variables
╓trainable_variables
╫regularization_losses
╪	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
█	variables
▄trainable_variables
▌regularization_losses
▐	keras_api
▀__call__
+р&call_and_return_all_conditional_losses
ыkernel
	ьbias
!с_jit_compiled_convolution_op"
_tf_keras_layer
ц
т	variables
уtrainable_variables
фregularization_losses
х	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses
эkernel
	юbias
!ш_jit_compiled_convolution_op"
_tf_keras_layer
ц
щ	variables
ъtrainable_variables
ыregularization_losses
ь	keras_api
э__call__
+ю&call_and_return_all_conditional_losses
яkernel
	Ёbias
!я_jit_compiled_convolution_op"
_tf_keras_layer
ц
Ё	variables
ёtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses
ёkernel
	Єbias
!Ў_jit_compiled_convolution_op"
_tf_keras_layer
л
ў	variables
°trainable_variables
∙regularization_losses
·	keras_api
√__call__
+№&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
¤	variables
■trainable_variables
 regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
єkernel
	Їbias
!Г_jit_compiled_convolution_op"
_tf_keras_layer
ц
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses
їkernel
	Ўbias
!К_jit_compiled_convolution_op"
_tf_keras_layer
ц
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
ўkernel
	°bias
!С_jit_compiled_convolution_op"
_tf_keras_layer
ц
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
∙kernel
	·bias
!Ш_jit_compiled_convolution_op"
_tf_keras_layer
л
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
╢
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
▌
дtrace_0
еtrace_1
жtrace_2
зtrace_32ъ
(__inference_VGG-19_layer_call_fn_1502031
(__inference_VGG-19_layer_call_fn_1504937
(__inference_VGG-19_layer_call_fn_1505010
(__inference_VGG-19_layer_call_fn_1502501┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0zеtrace_1zжtrace_2zзtrace_3
╔
иtrace_0
йtrace_1
кtrace_2
лtrace_32╓
C__inference_VGG-19_layer_call_and_return_conditional_losses_1505133
C__inference_VGG-19_layer_call_and_return_conditional_losses_1505256
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502592
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502683┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0zйtrace_1zкtrace_2zлtrace_3
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
Ї
▒trace_02╒
.__inference_block6_conv1_layer_call_fn_1505265в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
П
▓trace_02Ё
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1505276в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0
/:-АА2block6_conv1/kernel
 :А2block6_conv1/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
╫
╕trace_0
╣trace_12Ь
1__inference_block6_dropout1_layer_call_fn_1505281
1__inference_block6_dropout1_layer_call_fn_1505286│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0z╣trace_1
Н
║trace_0
╗trace_12╥
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1505291
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1505303│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z║trace_0z╗trace_1
"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
Ї
┴trace_02╒
.__inference_block6_conv2_layer_call_fn_1505312в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┴trace_0
П
┬trace_02Ё
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1505323в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┬trace_0
/:-АА2block6_conv2/kernel
 :А2block6_conv2/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
╫
╚trace_0
╔trace_12Ь
1__inference_block6_dropout2_layer_call_fn_1505328
1__inference_block6_dropout2_layer_call_fn_1505333│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0z╔trace_1
Н
╩trace_0
╦trace_12╥
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1505338
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1505350│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╩trace_0z╦trace_1
"
_generic_user_object
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╠non_trainable_variables
═layers
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
√
╤trace_02▄
5__inference_block7_conv1_column_layer_call_fn_1505359в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╤trace_0
Ц
╥trace_02ў
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1505370в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╥trace_0
6:4АА2block7_conv1_column/kernel
':%А2block7_conv1_column/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
у
╪trace_0
┘trace_12и
7__inference_block7_dropout_column_layer_call_fn_1505375
7__inference_block7_dropout_column_layer_call_fn_1505380│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╪trace_0z┘trace_1
Щ
┌trace_0
█trace_12▐
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1505385
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1505397│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┌trace_0z█trace_1
"
_generic_user_object
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
є
сtrace_02╘
-__inference_conv7_table_layer_call_fn_1505406в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zсtrace_0
О
тtrace_02я
H__inference_conv7_table_layer_call_and_return_conditional_losses_1505417в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zтtrace_0
.:,АА2conv7_table/kernel
:А2conv7_table/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
√
шtrace_02▄
5__inference_block8_conv1_column_layer_call_fn_1505426в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zшtrace_0
Ц
щtrace_02ў
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1505437в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0
6:4АА2block8_conv1_column/kernel
':%А2block8_conv1_column/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
ї
яtrace_02╓
/__inference_up_sampling2d_layer_call_fn_1505442в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zяtrace_0
Р
Ёtrace_02ё
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1505454в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
ў
Ўtrace_02╪
1__inference_up_sampling2d_4_layer_call_fn_1505459в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0
Т
ўtrace_02є
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1505471в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
є
¤trace_02╘
-__inference_concatenate_layer_call_fn_1505477в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0
О
■trace_02я
H__inference_concatenate_layer_call_and_return_conditional_losses_1505484в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
ї
Дtrace_02╓
/__inference_concatenate_2_layer_call_fn_1505490в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0
Р
Еtrace_02ё
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1505497в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
ў
Лtrace_02╪
1__inference_up_sampling2d_1_layer_call_fn_1505502в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЛtrace_0
Т
Мtrace_02є
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1505514в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
ў
Тtrace_02╪
1__inference_up_sampling2d_5_layer_call_fn_1505519в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zТtrace_0
Т
Уtrace_02є
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1505531в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
ї
Щtrace_02╓
/__inference_concatenate_1_layer_call_fn_1505537в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЩtrace_0
Р
Ъtrace_02ё
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1505544в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
л	variables
мtrainable_variables
нregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
ї
аtrace_02╓
/__inference_concatenate_3_layer_call_fn_1505550в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0
Р
бtrace_02ё
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1505557в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
╡__call__
+╢&call_and_return_all_conditional_losses
'╢"call_and_return_conditional_losses"
_generic_user_object
ў
зtrace_02╪
1__inference_up_sampling2d_2_layer_call_fn_1505562в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zзtrace_0
Т
иtrace_02є
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1505574в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
╖	variables
╕trainable_variables
╣regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
ў
оtrace_02╪
1__inference_up_sampling2d_6_layer_call_fn_1505579в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zоtrace_0
Т
пtrace_02є
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1505591в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
░non_trainable_variables
▒layers
▓metrics
 │layer_regularization_losses
┤layer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
ў
╡trace_02╪
1__inference_up_sampling2d_3_layer_call_fn_1505596в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╡trace_0
Т
╢trace_02є
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1505608в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╖non_trainable_variables
╕layers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
├	variables
─trainable_variables
┼regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
ў
╝trace_02╪
1__inference_up_sampling2d_7_layer_call_fn_1505613в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╝trace_0
Т
╜trace_02є
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1505625в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0
0
╧0
╨1"
trackable_list_wrapper
0
╧0
╨1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
╔	variables
╩trainable_variables
╦regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
Ї
├trace_02╒
.__inference_table_output_layer_call_fn_1505634в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z├trace_0
П
─trace_02Ё
I__inference_table_output_layer_call_and_return_conditional_losses_1505667в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z─trace_0
.:,А
2table_output/kernel
:2table_output/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
╪0
┘1"
trackable_list_wrapper
0
╪0
┘1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
╥	variables
╙trainable_variables
╘regularization_losses
╓__call__
+╫&call_and_return_all_conditional_losses
'╫"call_and_return_conditional_losses"
_generic_user_object
ї
╩trace_02╓
/__inference_column_output_layer_call_fn_1505676в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╩trace_0
Р
╦trace_02ё
J__inference_column_output_layer_call_and_return_conditional_losses_1505709в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╦trace_0
/:-А
2column_output/kernel
 :2column_output/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@А2block2_conv1/kernel
 :А2block2_conv1/bias
/:-АА2block2_conv2/kernel
 :А2block2_conv2/bias
/:-АА2block3_conv1/kernel
 :А2block3_conv1/bias
/:-АА2block3_conv2/kernel
 :А2block3_conv2/bias
/:-АА2block3_conv3/kernel
 :А2block3_conv3/bias
/:-АА2block3_conv4/kernel
 :А2block3_conv4/bias
/:-АА2block4_conv1/kernel
 :А2block4_conv1/bias
/:-АА2block4_conv2/kernel
 :А2block4_conv2/bias
/:-АА2block4_conv3/kernel
 :А2block4_conv3/bias
/:-АА2block4_conv4/kernel
 :А2block4_conv4/bias
/:-АА2block5_conv1/kernel
 :А2block5_conv1/bias
/:-АА2block5_conv2/kernel
 :А2block5_conv2/bias
/:-АА2block5_conv3/kernel
 :А2block5_conv3/bias
/:-АА2block5_conv4/kernel
 :А2block5_conv4/bias
╢
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31"
trackable_list_wrapper
╓
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
18
19
20
21
22
23"
trackable_list_wrapper
H
╠0
═1
╬2
╧3
╨4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
*__inference_tablenet_layer_call_fn_1503256input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
*__inference_tablenet_layer_call_fn_1504268inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
*__inference_tablenet_layer_call_fn_1504367inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
*__inference_tablenet_layer_call_fn_1503822input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
E__inference_tablenet_layer_call_and_return_conditional_losses_1504605inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЦBУ
E__inference_tablenet_layer_call_and_return_conditional_losses_1504864inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
E__inference_tablenet_layer_call_and_return_conditional_losses_1503944input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
E__inference_tablenet_layer_call_and_return_conditional_losses_1504066input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ы
Й0
╤1
╥2
╙3
╘4
╒5
╓6
╫7
╪8
┘9
┌10
█11
▄12
▌13
▐14
▀15
р16
с17
т18
у19
ф20
х21
ц22
ч23
ш24
щ25
ъ26
ы27
ь28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Ф
╤0
╙1
╒2
╫3
┘4
█5
▌6
▀7
с8
у9
х10
ч11
щ12
ы13"
trackable_list_wrapper
Ф
╥0
╘1
╓2
╪3
┌4
▄5
▐6
р7
т8
ф9
ц10
ш11
ъ12
ь13"
trackable_list_wrapper
┐2╝╣
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╩B╟
%__inference_signature_wrapper_1504169input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
0
█0
▄1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
эnon_trainable_variables
юlayers
яmetrics
 Ёlayer_regularization_losses
ёlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
Ї
Єtrace_02╒
.__inference_block1_conv1_layer_call_fn_1505718в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЄtrace_0
П
єtrace_02Ё
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1505729в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zєtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
▌0
▐1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
Ї
∙trace_02╒
.__inference_block1_conv2_layer_call_fn_1505738в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
П
·trace_02Ё
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1505749в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z·trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
є
Аtrace_02╘
-__inference_block1_pool_layer_call_fn_1505754в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
О
Бtrace_02я
H__inference_block1_pool_layer_call_and_return_conditional_losses_1505759в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0
0
▀0
р1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
Ї
Зtrace_02╒
.__inference_block2_conv1_layer_call_fn_1505768в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0
П
Иtrace_02Ё
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1505779в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
с0
т1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
░__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses"
_generic_user_object
Ї
Оtrace_02╒
.__inference_block2_conv2_layer_call_fn_1505788в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0
П
Пtrace_02Ё
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1505799в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
│	variables
┤trainable_variables
╡regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses"
_generic_user_object
є
Хtrace_02╘
-__inference_block2_pool_layer_call_fn_1505804в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0
О
Цtrace_02я
H__inference_block2_pool_layer_call_and_return_conditional_losses_1505809в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0
0
у0
ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
Ї
Ьtrace_02╒
.__inference_block3_conv1_layer_call_fn_1505818в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0
П
Эtrace_02Ё
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1505829в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
х0
ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
└	variables
┴trainable_variables
┬regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
_generic_user_object
Ї
гtrace_02╒
.__inference_block3_conv2_layer_call_fn_1505838в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zгtrace_0
П
дtrace_02Ё
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1505849в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
ч0
ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
╟	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
Ї
кtrace_02╒
.__inference_block3_conv3_layer_call_fn_1505858в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0
П
лtrace_02Ё
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1505869в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
щ0
ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
╬	variables
╧trainable_variables
╨regularization_losses
╥__call__
+╙&call_and_return_all_conditional_losses
'╙"call_and_return_conditional_losses"
_generic_user_object
Ї
▒trace_02╒
.__inference_block3_conv4_layer_call_fn_1505878в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
П
▓trace_02Ё
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1505889в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
╒	variables
╓trainable_variables
╫regularization_losses
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
є
╕trace_02╘
-__inference_block3_pool_layer_call_fn_1505894в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
О
╣trace_02я
H__inference_block3_pool_layer_call_and_return_conditional_losses_1505899в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╣trace_0
0
ы0
ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
█	variables
▄trainable_variables
▌regularization_losses
▀__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
Ї
┐trace_02╒
.__inference_block4_conv1_layer_call_fn_1505908в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
П
└trace_02Ё
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1505919в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z└trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
э0
ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
т	variables
уtrainable_variables
фregularization_losses
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
Ї
╞trace_02╒
.__inference_block4_conv2_layer_call_fn_1505928в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
П
╟trace_02Ё
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1505939в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
я0
Ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
щ	variables
ъtrainable_variables
ыregularization_losses
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
Ї
═trace_02╒
.__inference_block4_conv3_layer_call_fn_1505948в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0
П
╬trace_02Ё
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1505959в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╬trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
ё0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
Ё	variables
ёtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
Ї
╘trace_02╒
.__inference_block4_conv4_layer_call_fn_1505968в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0
П
╒trace_02Ё
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1505979в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╒trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╓non_trainable_variables
╫layers
╪metrics
 ┘layer_regularization_losses
┌layer_metrics
ў	variables
°trainable_variables
∙regularization_losses
√__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
є
█trace_02╘
-__inference_block4_pool_layer_call_fn_1505984в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0
О
▄trace_02я
H__inference_block4_pool_layer_call_and_return_conditional_losses_1505989в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▄trace_0
0
є0
Ї1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▌non_trainable_variables
▐layers
▀metrics
 рlayer_regularization_losses
сlayer_metrics
¤	variables
■trainable_variables
 regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
Ї
тtrace_02╒
.__inference_block5_conv1_layer_call_fn_1505998в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zтtrace_0
П
уtrace_02Ё
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1506009в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zуtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
ї0
Ў1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
Ї
щtrace_02╒
.__inference_block5_conv2_layer_call_fn_1506018в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0
П
ъtrace_02Ё
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1506029в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zъtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
ў0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
Ї
Ёtrace_02╒
.__inference_block5_conv3_layer_call_fn_1506038в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
П
ёtrace_02Ё
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1506049в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zёtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
0
∙0
·1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
Ї
ўtrace_02╒
.__inference_block5_conv4_layer_call_fn_1506058в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0
П
°trace_02Ё
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1506069в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
є
■trace_02╘
-__inference_block5_pool_layer_call_fn_1506074в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
О
 trace_02я
H__inference_block5_pool_layer_call_and_return_conditional_losses_1506079в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
╢
█0
▄1
▌2
▐3
▀4
р5
с6
т7
у8
ф9
х10
ц11
ч12
ш13
щ14
ъ15
ы16
ь17
э18
ю19
я20
Ё21
ё22
Є23
є24
Ї25
ї26
Ў27
ў28
°29
∙30
·31"
trackable_list_wrapper
╞
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
316
417
518
619
720
821"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
(__inference_VGG-19_layer_call_fn_1502031input_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
(__inference_VGG-19_layer_call_fn_1504937inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
(__inference_VGG-19_layer_call_fn_1505010inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
(__inference_VGG-19_layer_call_fn_1502501input_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
C__inference_VGG-19_layer_call_and_return_conditional_losses_1505133inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
C__inference_VGG-19_layer_call_and_return_conditional_losses_1505256inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502592input_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502683input_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
тB▀
.__inference_block6_conv1_layer_call_fn_1505265inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1505276inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
ЎBє
1__inference_block6_dropout1_layer_call_fn_1505281inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
1__inference_block6_dropout1_layer_call_fn_1505286inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1505291inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1505303inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
тB▀
.__inference_block6_conv2_layer_call_fn_1505312inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1505323inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
ЎBє
1__inference_block6_dropout2_layer_call_fn_1505328inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
1__inference_block6_dropout2_layer_call_fn_1505333inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1505338inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1505350inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
щBц
5__inference_block7_conv1_column_layer_call_fn_1505359inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1505370inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
№B∙
7__inference_block7_dropout_column_layer_call_fn_1505375inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
7__inference_block7_dropout_column_layer_call_fn_1505380inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1505385inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1505397inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
сB▐
-__inference_conv7_table_layer_call_fn_1505406inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_conv7_table_layer_call_and_return_conditional_losses_1505417inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
щBц
5__inference_block8_conv1_column_layer_call_fn_1505426inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1505437inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
уBр
/__inference_up_sampling2d_layer_call_fn_1505442inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1505454inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_up_sampling2d_4_layer_call_fn_1505459inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1505471inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
эBъ
-__inference_concatenate_layer_call_fn_1505477inputs_0inputs_1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
H__inference_concatenate_layer_call_and_return_conditional_losses_1505484inputs_0inputs_1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
яBь
/__inference_concatenate_2_layer_call_fn_1505490inputs_0inputs_1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1505497inputs_0inputs_1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_up_sampling2d_1_layer_call_fn_1505502inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1505514inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_up_sampling2d_5_layer_call_fn_1505519inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1505531inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
яBь
/__inference_concatenate_1_layer_call_fn_1505537inputs_0inputs_1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1505544inputs_0inputs_1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
яBь
/__inference_concatenate_3_layer_call_fn_1505550inputs_0inputs_1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1505557inputs_0inputs_1"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_up_sampling2d_2_layer_call_fn_1505562inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1505574inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_up_sampling2d_6_layer_call_fn_1505579inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1505591inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_up_sampling2d_3_layer_call_fn_1505596inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1505608inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
хBт
1__inference_up_sampling2d_7_layer_call_fn_1505613inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1505625inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
тB▀
.__inference_table_output_layer_call_fn_1505634inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_table_output_layer_call_and_return_conditional_losses_1505667inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
уBр
/__inference_column_output_layer_call_fn_1505676inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
J__inference_column_output_layer_call_and_return_conditional_losses_1505709inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
А	variables
Б	keras_api

Вtotal

Гcount"
_tf_keras_metric
R
Д	variables
Е	keras_api

Жtotal

Зcount"
_tf_keras_metric
R
И	variables
Й	keras_api

Кtotal

Лcount"
_tf_keras_metric
c
М	variables
Н	keras_api

Оtotal

Пcount
Р
_fn_kwargs"
_tf_keras_metric
c
С	variables
Т	keras_api

Уtotal

Фcount
Х
_fn_kwargs"
_tf_keras_metric
4:2АА2Adam/m/block6_conv1/kernel
4:2АА2Adam/v/block6_conv1/kernel
%:#А2Adam/m/block6_conv1/bias
%:#А2Adam/v/block6_conv1/bias
4:2АА2Adam/m/block6_conv2/kernel
4:2АА2Adam/v/block6_conv2/kernel
%:#А2Adam/m/block6_conv2/bias
%:#А2Adam/v/block6_conv2/bias
;:9АА2!Adam/m/block7_conv1_column/kernel
;:9АА2!Adam/v/block7_conv1_column/kernel
,:*А2Adam/m/block7_conv1_column/bias
,:*А2Adam/v/block7_conv1_column/bias
3:1АА2Adam/m/conv7_table/kernel
3:1АА2Adam/v/conv7_table/kernel
$:"А2Adam/m/conv7_table/bias
$:"А2Adam/v/conv7_table/bias
;:9АА2!Adam/m/block8_conv1_column/kernel
;:9АА2!Adam/v/block8_conv1_column/kernel
,:*А2Adam/m/block8_conv1_column/bias
,:*А2Adam/v/block8_conv1_column/bias
3:1А
2Adam/m/table_output/kernel
3:1А
2Adam/v/table_output/kernel
$:"2Adam/m/table_output/bias
$:"2Adam/v/table_output/bias
4:2А
2Adam/m/column_output/kernel
4:2А
2Adam/v/column_output/kernel
%:#2Adam/m/column_output/bias
%:#2Adam/v/column_output/bias
0
█0
▄1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block1_conv1_layer_call_fn_1505718inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1505729inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
▌0
▐1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block1_conv2_layer_call_fn_1505738inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1505749inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
сB▐
-__inference_block1_pool_layer_call_fn_1505754inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_block1_pool_layer_call_and_return_conditional_losses_1505759inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
▀0
р1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block2_conv1_layer_call_fn_1505768inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1505779inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
с0
т1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block2_conv2_layer_call_fn_1505788inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1505799inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
сB▐
-__inference_block2_pool_layer_call_fn_1505804inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_block2_pool_layer_call_and_return_conditional_losses_1505809inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
у0
ф1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block3_conv1_layer_call_fn_1505818inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1505829inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
х0
ц1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block3_conv2_layer_call_fn_1505838inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1505849inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ч0
ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block3_conv3_layer_call_fn_1505858inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1505869inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
щ0
ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block3_conv4_layer_call_fn_1505878inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1505889inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
сB▐
-__inference_block3_pool_layer_call_fn_1505894inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_block3_pool_layer_call_and_return_conditional_losses_1505899inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ы0
ь1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block4_conv1_layer_call_fn_1505908inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1505919inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
э0
ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block4_conv2_layer_call_fn_1505928inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1505939inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
я0
Ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block4_conv3_layer_call_fn_1505948inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1505959inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ё0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block4_conv4_layer_call_fn_1505968inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1505979inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
сB▐
-__inference_block4_pool_layer_call_fn_1505984inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_block4_pool_layer_call_and_return_conditional_losses_1505989inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
є0
Ї1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block5_conv1_layer_call_fn_1505998inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1506009inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ї0
Ў1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block5_conv2_layer_call_fn_1506018inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1506029inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
ў0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block5_conv3_layer_call_fn_1506038inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1506049inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
∙0
·1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
.__inference_block5_conv4_layer_call_fn_1506058inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1506069inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
сB▐
-__inference_block5_pool_layer_call_fn_1506074inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_block5_pool_layer_call_and_return_conditional_losses_1506079inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
В0
Г1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
:  (2total
:  (2count
0
Ж0
З1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
:  (2total
:  (2count
0
К0
Л1"
trackable_list_wrapper
.
И	variables"
_generic_user_object
:  (2total
:  (2count
0
О0
П1"
trackable_list_wrapper
.
М	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
У0
Ф1"
trackable_list_wrapper
.
С	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperю
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502592ж@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Bв?
8в5
+К(
input_1         АА
p 

 
к "ЭвЩ
СЪН
-К*

tensor_0_0           А
-К*

tensor_0_1         А
-К*

tensor_0_2         А
Ъ ю
C__inference_VGG-19_layer_call_and_return_conditional_losses_1502683ж@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Bв?
8в5
+К(
input_1         АА
p

 
к "ЭвЩ
СЪН
-К*

tensor_0_0           А
-К*

tensor_0_1         А
-К*

tensor_0_2         А
Ъ э
C__inference_VGG-19_layer_call_and_return_conditional_losses_1505133е@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Aв>
7в4
*К'
inputs         АА
p 

 
к "ЭвЩ
СЪН
-К*

tensor_0_0           А
-К*

tensor_0_1         А
-К*

tensor_0_2         А
Ъ э
C__inference_VGG-19_layer_call_and_return_conditional_losses_1505256е@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Aв>
7в4
*К'
inputs         АА
p

 
к "ЭвЩ
СЪН
-К*

tensor_0_0           А
-К*

tensor_0_1         А
-К*

tensor_0_2         А
Ъ ┴
(__inference_VGG-19_layer_call_fn_1502031Ф@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Bв?
8в5
+К(
input_1         АА
p 

 
к "ЛЪЗ
+К(
tensor_0           А
+К(
tensor_1         А
+К(
tensor_2         А┴
(__inference_VGG-19_layer_call_fn_1502501Ф@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Bв?
8в5
+К(
input_1         АА
p

 
к "ЛЪЗ
+К(
tensor_0           А
+К(
tensor_1         А
+К(
tensor_2         А└
(__inference_VGG-19_layer_call_fn_1504937У@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Aв>
7в4
*К'
inputs         АА
p 

 
к "ЛЪЗ
+К(
tensor_0           А
+К(
tensor_1         А
+К(
tensor_2         А└
(__inference_VGG-19_layer_call_fn_1505010У@█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·Aв>
7в4
*К'
inputs         АА
p

 
к "ЛЪЗ
+К(
tensor_0           А
+К(
tensor_1         А
+К(
tensor_2         А┬
"__inference__wrapped_model_1501613ЫR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨8в5
.в+
)К&
input         АА
к "КкЖ
B
column_output1К.
column_output         АА
@
table_output0К-
table_output         АА╞
I__inference_block1_conv1_layer_call_and_return_conditional_losses_1505729y█▄9в6
/в,
*К'
inputs         АА
к "6в3
,К)
tensor_0         АА@
Ъ а
.__inference_block1_conv1_layer_call_fn_1505718n█▄9в6
/в,
*К'
inputs         АА
к "+К(
unknown         АА@╞
I__inference_block1_conv2_layer_call_and_return_conditional_losses_1505749y▌▐9в6
/в,
*К'
inputs         АА@
к "6в3
,К)
tensor_0         АА@
Ъ а
.__inference_block1_conv2_layer_call_fn_1505738n▌▐9в6
/в,
*К'
inputs         АА@
к "+К(
unknown         АА@Є
H__inference_block1_pool_layer_call_and_return_conditional_losses_1505759еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╠
-__inference_block1_pool_layer_call_fn_1505754ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╟
I__inference_block2_conv1_layer_call_and_return_conditional_losses_1505779z▀р9в6
/в,
*К'
inputs         АА@
к "7в4
-К*
tensor_0         ААА
Ъ б
.__inference_block2_conv1_layer_call_fn_1505768o▀р9в6
/в,
*К'
inputs         АА@
к ",К)
unknown         ААА╚
I__inference_block2_conv2_layer_call_and_return_conditional_losses_1505799{ст:в7
0в-
+К(
inputs         ААА
к "7в4
-К*
tensor_0         ААА
Ъ в
.__inference_block2_conv2_layer_call_fn_1505788pст:в7
0в-
+К(
inputs         ААА
к ",К)
unknown         АААЄ
H__inference_block2_pool_layer_call_and_return_conditional_losses_1505809еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╠
-__inference_block2_pool_layer_call_fn_1505804ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ─
I__inference_block3_conv1_layer_call_and_return_conditional_losses_1505829wуф8в5
.в+
)К&
inputs         @@А
к "5в2
+К(
tensor_0         @@А
Ъ Ю
.__inference_block3_conv1_layer_call_fn_1505818lуф8в5
.в+
)К&
inputs         @@А
к "*К'
unknown         @@А─
I__inference_block3_conv2_layer_call_and_return_conditional_losses_1505849wхц8в5
.в+
)К&
inputs         @@А
к "5в2
+К(
tensor_0         @@А
Ъ Ю
.__inference_block3_conv2_layer_call_fn_1505838lхц8в5
.в+
)К&
inputs         @@А
к "*К'
unknown         @@А─
I__inference_block3_conv3_layer_call_and_return_conditional_losses_1505869wчш8в5
.в+
)К&
inputs         @@А
к "5в2
+К(
tensor_0         @@А
Ъ Ю
.__inference_block3_conv3_layer_call_fn_1505858lчш8в5
.в+
)К&
inputs         @@А
к "*К'
unknown         @@А─
I__inference_block3_conv4_layer_call_and_return_conditional_losses_1505889wщъ8в5
.в+
)К&
inputs         @@А
к "5в2
+К(
tensor_0         @@А
Ъ Ю
.__inference_block3_conv4_layer_call_fn_1505878lщъ8в5
.в+
)К&
inputs         @@А
к "*К'
unknown         @@АЄ
H__inference_block3_pool_layer_call_and_return_conditional_losses_1505899еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╠
-__inference_block3_pool_layer_call_fn_1505894ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ─
I__inference_block4_conv1_layer_call_and_return_conditional_losses_1505919wыь8в5
.в+
)К&
inputs           А
к "5в2
+К(
tensor_0           А
Ъ Ю
.__inference_block4_conv1_layer_call_fn_1505908lыь8в5
.в+
)К&
inputs           А
к "*К'
unknown           А─
I__inference_block4_conv2_layer_call_and_return_conditional_losses_1505939wэю8в5
.в+
)К&
inputs           А
к "5в2
+К(
tensor_0           А
Ъ Ю
.__inference_block4_conv2_layer_call_fn_1505928lэю8в5
.в+
)К&
inputs           А
к "*К'
unknown           А─
I__inference_block4_conv3_layer_call_and_return_conditional_losses_1505959wяЁ8в5
.в+
)К&
inputs           А
к "5в2
+К(
tensor_0           А
Ъ Ю
.__inference_block4_conv3_layer_call_fn_1505948lяЁ8в5
.в+
)К&
inputs           А
к "*К'
unknown           А─
I__inference_block4_conv4_layer_call_and_return_conditional_losses_1505979wёЄ8в5
.в+
)К&
inputs           А
к "5в2
+К(
tensor_0           А
Ъ Ю
.__inference_block4_conv4_layer_call_fn_1505968lёЄ8в5
.в+
)К&
inputs           А
к "*К'
unknown           АЄ
H__inference_block4_pool_layer_call_and_return_conditional_losses_1505989еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╠
-__inference_block4_pool_layer_call_fn_1505984ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ─
I__inference_block5_conv1_layer_call_and_return_conditional_losses_1506009wєЇ8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ю
.__inference_block5_conv1_layer_call_fn_1505998lєЇ8в5
.в+
)К&
inputs         А
к "*К'
unknown         А─
I__inference_block5_conv2_layer_call_and_return_conditional_losses_1506029wїЎ8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ю
.__inference_block5_conv2_layer_call_fn_1506018lїЎ8в5
.в+
)К&
inputs         А
к "*К'
unknown         А─
I__inference_block5_conv3_layer_call_and_return_conditional_losses_1506049wў°8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ю
.__inference_block5_conv3_layer_call_fn_1506038lў°8в5
.в+
)К&
inputs         А
к "*К'
unknown         А─
I__inference_block5_conv4_layer_call_and_return_conditional_losses_1506069w∙·8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ю
.__inference_block5_conv4_layer_call_fn_1506058l∙·8в5
.в+
)К&
inputs         А
к "*К'
unknown         АЄ
H__inference_block5_pool_layer_call_and_return_conditional_losses_1506079еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╠
-__inference_block5_pool_layer_call_fn_1506074ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ┬
I__inference_block6_conv1_layer_call_and_return_conditional_losses_1505276uEF8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ь
.__inference_block6_conv1_layer_call_fn_1505265jEF8в5
.в+
)К&
inputs         А
к "*К'
unknown         А┬
I__inference_block6_conv2_layer_call_and_return_conditional_losses_1505323uUV8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ь
.__inference_block6_conv2_layer_call_fn_1505312jUV8в5
.в+
)К&
inputs         А
к "*К'
unknown         А┼
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1505291u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ ┼
L__inference_block6_dropout1_layer_call_and_return_conditional_losses_1505303u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ Я
1__inference_block6_dropout1_layer_call_fn_1505281j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         АЯ
1__inference_block6_dropout1_layer_call_fn_1505286j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         А┼
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1505338u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ ┼
L__inference_block6_dropout2_layer_call_and_return_conditional_losses_1505350u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ Я
1__inference_block6_dropout2_layer_call_fn_1505328j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         АЯ
1__inference_block6_dropout2_layer_call_fn_1505333j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         А╔
P__inference_block7_conv1_column_layer_call_and_return_conditional_losses_1505370uef8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ г
5__inference_block7_conv1_column_layer_call_fn_1505359jef8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╦
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1505385u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ ╦
R__inference_block7_dropout_column_layer_call_and_return_conditional_losses_1505397u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ е
7__inference_block7_dropout_column_layer_call_fn_1505375j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         Ае
7__inference_block7_dropout_column_layer_call_fn_1505380j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         А╔
P__inference_block8_conv1_column_layer_call_and_return_conditional_losses_1505437u~8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ г
5__inference_block8_conv1_column_layer_call_fn_1505426j~8в5
.в+
)К&
inputs         А
к "*К'
unknown         Ащ
J__inference_column_output_layer_call_and_return_conditional_losses_1505709Ъ╪┘JвG
@в=
;К8
inputs,                           А

к "FвC
<К9
tensor_0+                           
Ъ ├
/__inference_column_output_layer_call_fn_1505676П╪┘JвG
@в=
;К8
inputs,                           А

к ";К8
unknown+                           Ж
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1505544╖~в{
tвq
oЪl
=К:
inputs_0,                           А
+К(
inputs_1           А
к "5в2
+К(
tensor_0           А

Ъ р
/__inference_concatenate_1_layer_call_fn_1505537м~в{
tвq
oЪl
=К:
inputs_0,                           А
+К(
inputs_1           А
к "*К'
unknown           А
Ж
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1505497╖~в{
tвq
oЪl
=К:
inputs_0,                           А
+К(
inputs_1         А
к "5в2
+К(
tensor_0         А
Ъ р
/__inference_concatenate_2_layer_call_fn_1505490м~в{
tвq
oЪl
=К:
inputs_0,                           А
+К(
inputs_1         А
к "*К'
unknown         АЖ
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1505557╖~в{
tвq
oЪl
=К:
inputs_0,                           А
+К(
inputs_1           А
к "5в2
+К(
tensor_0           А

Ъ р
/__inference_concatenate_3_layer_call_fn_1505550м~в{
tвq
oЪl
=К:
inputs_0,                           А
+К(
inputs_1           А
к "*К'
unknown           А
Д
H__inference_concatenate_layer_call_and_return_conditional_losses_1505484╖~в{
tвq
oЪl
=К:
inputs_0,                           А
+К(
inputs_1         А
к "5в2
+К(
tensor_0         А
Ъ ▐
-__inference_concatenate_layer_call_fn_1505477м~в{
tвq
oЪl
=К:
inputs_0,                           А
+К(
inputs_1         А
к "*К'
unknown         А┴
H__inference_conv7_table_layer_call_and_return_conditional_losses_1505417uuv8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ы
-__inference_conv7_table_layer_call_fn_1505406juv8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╬
%__inference_signature_wrapper_1504169дR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
в 
7к4
2
input)К&
input         АА"КкЖ
B
column_output1К.
column_output         АА
@
table_output0К-
table_output         ААш
I__inference_table_output_layer_call_and_return_conditional_losses_1505667Ъ╧╨JвG
@в=
;К8
inputs,                           А

к "FвC
<К9
tensor_0+                           
Ъ ┬
.__inference_table_output_layer_call_fn_1505634П╧╨JвG
@в=
;К8
inputs,                           А

к ";К8
unknown+                           є
E__inference_tablenet_layer_call_and_return_conditional_losses_1503944йR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨@в=
6в3
)К&
input         АА
p 

 
к "РвМ
ДЪА
>К;

tensor_0_0+                           
>К;

tensor_0_1+                           
Ъ є
E__inference_tablenet_layer_call_and_return_conditional_losses_1504066йR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨@в=
6в3
)К&
input         АА
p

 
к "РвМ
ДЪА
>К;

tensor_0_0+                           
>К;

tensor_0_1+                           
Ъ ╨
E__inference_tablenet_layer_call_and_return_conditional_losses_1504605ЖR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
7в4
*К'
inputs         АА
p 

 
к "mвj
cЪ`
.К+

tensor_0_0         АА
.К+

tensor_0_1         АА
Ъ ╨
E__inference_tablenet_layer_call_and_return_conditional_losses_1504864ЖR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
7в4
*К'
inputs         АА
p

 
к "mвj
cЪ`
.К+

tensor_0_0         АА
.К+

tensor_0_1         АА
Ъ ╞
*__inference_tablenet_layer_call_fn_1503256ЧR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨@в=
6в3
)К&
input         АА
p 

 
к "Ъ|
<К9
tensor_0+                           
<К9
tensor_1+                           ╞
*__inference_tablenet_layer_call_fn_1503822ЧR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨@в=
6в3
)К&
input         АА
p

 
к "Ъ|
<К9
tensor_0+                           
<К9
tensor_1+                           ╟
*__inference_tablenet_layer_call_fn_1504268ШR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
7в4
*К'
inputs         АА
p 

 
к "Ъ|
<К9
tensor_0+                           
<К9
tensor_1+                           ╟
*__inference_tablenet_layer_call_fn_1504367ШR█▄▌▐▀рстуфхцчшщъыьэюяЁёЄєЇїЎў°∙·EFUVef~uv╪┘╧╨Aв>
7в4
*К'
inputs         АА
p

 
к "Ъ|
<К9
tensor_0+                           
<К9
tensor_1+                           Ў
L__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_1505514еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_up_sampling2d_1_layer_call_fn_1505502ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_up_sampling2d_2_layer_call_and_return_conditional_losses_1505574еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_up_sampling2d_2_layer_call_fn_1505562ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_up_sampling2d_3_layer_call_and_return_conditional_losses_1505608еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_up_sampling2d_3_layer_call_fn_1505596ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_up_sampling2d_4_layer_call_and_return_conditional_losses_1505471еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_up_sampling2d_4_layer_call_fn_1505459ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_up_sampling2d_5_layer_call_and_return_conditional_losses_1505531еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_up_sampling2d_5_layer_call_fn_1505519ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_up_sampling2d_6_layer_call_and_return_conditional_losses_1505591еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_up_sampling2d_6_layer_call_fn_1505579ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ў
L__inference_up_sampling2d_7_layer_call_and_return_conditional_losses_1505625еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╨
1__inference_up_sampling2d_7_layer_call_fn_1505613ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ї
J__inference_up_sampling2d_layer_call_and_return_conditional_losses_1505454еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╬
/__inference_up_sampling2d_layer_call_fn_1505442ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    