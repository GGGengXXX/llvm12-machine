; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@s_0 = constant [10 x i8] c"22376286\0A\00"
@s_1 = constant [2 x i8] c"\0A\00"
@s_2 = constant [11 x i8] c"globalVar=\00"
@s_3 = constant [2 x i8] c"\0A\00"
@s_4 = constant [11 x i8] c"globalVar=\00"
@s_5 = constant [2 x i8] c"\0A\00"
@s_6 = constant [17 x i8] c"calculateFunc()=\00"
@s_7 = constant [2 x i8] c"\0A\00"
@s_8 = constant [15 x i8] c"declareFunc()=\00"
@s_9 = constant [2 x i8] c"\0A\00"
@s_10 = constant [3 x i8] c"0\0A\00"
@s_11 = constant [3 x i8] c"1\0A\00"
@s_12 = constant [3 x i8] c"2\0A\00"
@s_13 = constant [6 x i8] c"sum1=\00"
@s_14 = constant [2 x i8] c"\0A\00"
@g_globalVar = dso_local global i32 0
@g_var6 = dso_local global i32 0
@g_globalVar1 = dso_local global i32 0
@g_globalVar2 = dso_local global i32 0
@g_vec = dso_local global [10 x i32] zeroinitializer
@g_vec1 = dso_local global [10 x i32] zeroinitializer
@g_const0 = dso_local global i32 0
@g_const12 = dso_local global [2 x i32] [i32 1, i32 2]
@g_const3 = dso_local global i32 3
@declareFunc_static_var_0 = internal global i32 0
@declareFunc_static_var_1 = internal global [10 x i32] zeroinitializer
@shortPath_static_var_0 = internal global i32 0
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

define dso_local void @f_declareFunc() {
declareFunc_block_label_0:
  %v_0 = alloca i32, align 4
  %v_1 = alloca i32, align 4
  store i32 1, i32* %v_1, align 4
  %v_2 = alloca i32, align 4
  store i32 1, i32* @declareFunc_static_var_0, align 4
  %v_3 = load i32, i32* @g_const0, align 4
  %v_4 = getelementptr inbounds [10 x i32], [10 x i32]* @declareFunc_static_var_1, i32 0, i32 0
  store i32 %v_3, i32* %v_4, align 4
  ret void
}

define dso_local i32 @f_shortPath(i32 %a_0) {
shortPath_block_label_0:
  %v_0 = alloca i32, align 4
  store i32 %a_0, i32* %v_0, align 4
  %v_1 = load i32, i32* @shortPath_static_var_0, align 4
  %v_2 = add i32 %v_1, 1
  store i32 %v_2, i32* @shortPath_static_var_0, align 4
  %v_3 = load i32, i32* @shortPath_static_var_0, align 4
  ret i32 %v_3
}

define dso_local i32 @f_caculateFunc(i32 %a_1, i32 %a_2, i32* %a_3) {
caculateFunc_block_label_0:
  %v_0 = alloca i32, align 4
  store i32 %a_1, i32* %v_0, align 4
  %v_1 = alloca i32, align 4
  store i32 %a_2, i32* %v_1, align 4
  %v_2 = load i32, i32* %v_0, align 4
  %v_3 = load i32, i32* %v_1, align 4
  %v_4 = icmp sgt i32 %v_2, %v_3
  br i1 %v_4, label %caculateFunc_block_label_1, label %caculateFunc_block_label_2

caculateFunc_block_label_1:                       ; preds = %caculateFunc_block_label_0
  ret i32 0

0:                                                ; No predecessors!
  br label %caculateFunc_block_label_2

caculateFunc_block_label_2:                       ; preds = %0, %caculateFunc_block_label_0
  %v_5 = load i32, i32* %v_0, align 4
  %v_6 = load i32, i32* %v_1, align 4
  %v_7 = icmp ne i32 %v_5, %v_6
  br i1 %v_7, label %caculateFunc_block_label_3, label %caculateFunc_block_label_4

caculateFunc_block_label_3:                       ; preds = %caculateFunc_block_label_2
  ret i32 0

1:                                                ; No predecessors!
  br label %caculateFunc_block_label_4

caculateFunc_block_label_4:                       ; preds = %1, %caculateFunc_block_label_2
  %v_8 = load i32, i32* %v_0, align 4
  %v_9 = getelementptr inbounds i32, i32* %a_3, i32 0
  %v_10 = load i32, i32* %v_9, align 4
  %v_11 = icmp ne i32 %v_8, %v_10
  br i1 %v_11, label %caculateFunc_block_label_5, label %caculateFunc_block_label_6

caculateFunc_block_label_5:                       ; preds = %caculateFunc_block_label_4
  %v_12 = getelementptr inbounds i32, i32* %a_3, i32 0
  %v_13 = load i32, i32* %v_12, align 4
  ret i32 %v_13

2:                                                ; No predecessors!
  br label %caculateFunc_block_label_6

caculateFunc_block_label_6:                       ; preds = %2, %caculateFunc_block_label_4
  %v_14 = alloca i32, align 4
  store i32 0, i32* %v_14, align 4
  br label %caculateFunc_block_label_7

caculateFunc_block_label_7:                       ; preds = %caculateFunc_block_label_19, %caculateFunc_block_label_12, %caculateFunc_block_label_6
  %v_15 = load i32, i32* %v_14, align 4
  %v_16 = load i32, i32* %v_0, align 4
  %v_17 = icmp sle i32 %v_15, %v_16
  br i1 %v_17, label %caculateFunc_block_label_8, label %caculateFunc_block_label_9

caculateFunc_block_label_8:                       ; preds = %caculateFunc_block_label_7
  %v_18 = load i32, i32* %v_1, align 4
  %v_19 = icmp eq i32 %v_18, 0
  br i1 %v_19, label %caculateFunc_block_label_10, label %caculateFunc_block_label_11

caculateFunc_block_label_9:                       ; preds = %caculateFunc_block_label_18, %caculateFunc_block_label_15, %caculateFunc_block_label_10, %caculateFunc_block_label_7
  %v_36 = load i32, i32* %v_1, align 4
  ret i32 %v_36

caculateFunc_block_label_10:                      ; preds = %caculateFunc_block_label_8
  br label %caculateFunc_block_label_9

3:                                                ; No predecessors!
  br label %caculateFunc_block_label_11

caculateFunc_block_label_11:                      ; preds = %3, %caculateFunc_block_label_8
  %v_20 = getelementptr inbounds i32, i32* %a_3, i32 0
  %v_21 = load i32, i32* %v_20, align 4
  %v_22 = icmp ne i32 0, %v_21
  br i1 %v_22, label %caculateFunc_block_label_12, label %caculateFunc_block_label_14

caculateFunc_block_label_12:                      ; preds = %caculateFunc_block_label_14, %caculateFunc_block_label_11
  %v_24 = load i32, i32* %v_14, align 4
  %v_25 = add i32 %v_24, 1
  store i32 %v_25, i32* %v_14, align 4
  br label %caculateFunc_block_label_7

4:                                                ; No predecessors!
  br label %caculateFunc_block_label_13

caculateFunc_block_label_13:                      ; preds = %caculateFunc_block_label_14, %4
  %v_26 = icmp ne i32 0, 0
  br i1 %v_26, label %caculateFunc_block_label_17, label %caculateFunc_block_label_16

caculateFunc_block_label_14:                      ; preds = %caculateFunc_block_label_11
  %v_23 = icmp ne i32 0, 1
  br i1 %v_23, label %caculateFunc_block_label_12, label %caculateFunc_block_label_13

caculateFunc_block_label_15:                      ; preds = %caculateFunc_block_label_17
  br label %caculateFunc_block_label_9

5:                                                ; No predecessors!
  br label %caculateFunc_block_label_16

caculateFunc_block_label_16:                      ; preds = %caculateFunc_block_label_17, %5, %caculateFunc_block_label_13
  %v_30 = icmp ne i32 0, 1
  br i1 %v_30, label %caculateFunc_block_label_18, label %caculateFunc_block_label_20

caculateFunc_block_label_17:                      ; preds = %caculateFunc_block_label_13
  %v_27 = load i32, i32* %v_0, align 4
  %v_28 = call i32 @f_shortPath(i32 %v_27)
  %v_29 = icmp ne i32 0, %v_28
  br i1 %v_29, label %caculateFunc_block_label_15, label %caculateFunc_block_label_16

caculateFunc_block_label_18:                      ; preds = %caculateFunc_block_label_20, %caculateFunc_block_label_16
  br label %caculateFunc_block_label_9

6:                                                ; No predecessors!
  br label %caculateFunc_block_label_19

caculateFunc_block_label_19:                      ; preds = %caculateFunc_block_label_20, %6
  %v_34 = load i32, i32* %v_14, align 4
  %v_35 = add i32 %v_34, 1
  store i32 %v_35, i32* %v_14, align 4
  br label %caculateFunc_block_label_7

caculateFunc_block_label_20:                      ; preds = %caculateFunc_block_label_16
  %v_31 = load i32, i32* %v_1, align 4
  %v_32 = call i32 @f_shortPath(i32 %v_31)
  %v_33 = icmp ne i32 0, %v_32
  br i1 %v_33, label %caculateFunc_block_label_18, label %caculateFunc_block_label_19
}

define dso_local i32 @f_sum(i32* %a_4, i32 %a_5) {
sum_block_label_0:
  %v_0 = alloca i32, align 4
  store i32 %a_5, i32* %v_0, align 4
  %v_1 = alloca i32, align 4
  store i32 0, i32* %v_1, align 4
  %v_2 = alloca i32, align 4
  %v_3 = alloca i32, align 4
  store i32 0, i32* %v_2, align 4
  br label %sum_block_label_1

sum_block_label_1:                                ; preds = %sum_block_label_2, %sum_block_label_0
  %v_4 = load i32, i32* %v_2, align 4
  %v_5 = load i32, i32* %v_0, align 4
  %v_6 = icmp slt i32 %v_4, %v_5
  br i1 %v_6, label %sum_block_label_2, label %sum_block_label_3

sum_block_label_2:                                ; preds = %sum_block_label_1
  %v_7 = load i32, i32* %v_1, align 4
  %v_8 = load i32, i32* %v_2, align 4
  %v_9 = getelementptr inbounds i32, i32* %a_4, i32 %v_8
  %v_10 = load i32, i32* %v_9, align 4
  %v_11 = add i32 %v_7, %v_10
  store i32 %v_11, i32* %v_1, align 4
  %v_12 = load i32, i32* %v_2, align 4
  %v_13 = add i32 %v_12, 1
  store i32 %v_13, i32* %v_2, align 4
  br label %sum_block_label_1

sum_block_label_3:                                ; preds = %sum_block_label_1
  %v_14 = icmp sgt i32 1, 2
  br i1 %v_14, label %sum_block_label_4, label %sum_block_label_5

sum_block_label_4:                                ; preds = %sum_block_label_3
  br label %sum_block_label_6

sum_block_label_5:                                ; preds = %sum_block_label_26, %sum_block_label_3
  %v_34 = load i32, i32* %v_1, align 4
  ret i32 %v_34

sum_block_label_6:                                ; preds = %sum_block_label_7, %sum_block_label_4
  %v_15 = load i32, i32* %v_2, align 4
  %v_16 = load i32, i32* %v_0, align 4
  %v_17 = icmp slt i32 %v_15, %v_16
  br i1 %v_17, label %sum_block_label_7, label %sum_block_label_8

sum_block_label_7:                                ; preds = %sum_block_label_6
  %v_18 = load i32, i32* %v_2, align 4
  %v_19 = add i32 %v_18, 1
  store i32 %v_19, i32* %v_2, align 4
  br label %sum_block_label_6

sum_block_label_8:                                ; preds = %sum_block_label_6
  br label %sum_block_label_9

sum_block_label_9:                                ; preds = %sum_block_label_9, %sum_block_label_8
  %v_20 = load i32, i32* %v_2, align 4
  %v_21 = add i32 %v_20, 1
  store i32 %v_21, i32* %v_2, align 4
  br label %sum_block_label_9

sum_block_label_10:                               ; No predecessors!
  br label %sum_block_label_11

sum_block_label_11:                               ; preds = %sum_block_label_11, %sum_block_label_10
  br label %sum_block_label_11

sum_block_label_12:                               ; No predecessors!
  store i32 0, i32* %v_2, align 4
  br label %sum_block_label_13

sum_block_label_13:                               ; preds = %sum_block_label_13, %sum_block_label_12
  %v_22 = load i32, i32* %v_2, align 4
  %v_23 = add i32 %v_22, 1
  store i32 %v_23, i32* %v_2, align 4
  br label %sum_block_label_13

sum_block_label_14:                               ; No predecessors!
  br label %sum_block_label_15

sum_block_label_15:                               ; preds = %sum_block_label_16, %sum_block_label_14
  %v_24 = load i32, i32* %v_2, align 4
  %v_25 = load i32, i32* %v_0, align 4
  %v_26 = icmp slt i32 %v_24, %v_25
  br i1 %v_26, label %sum_block_label_16, label %sum_block_label_17

sum_block_label_16:                               ; preds = %sum_block_label_15
  br label %sum_block_label_15

sum_block_label_17:                               ; preds = %sum_block_label_15
  store i32 0, i32* %v_2, align 4
  br label %sum_block_label_18

sum_block_label_18:                               ; preds = %sum_block_label_19, %sum_block_label_17
  %v_27 = load i32, i32* %v_2, align 4
  %v_28 = load i32, i32* %v_0, align 4
  %v_29 = icmp slt i32 %v_27, %v_28
  br i1 %v_29, label %sum_block_label_19, label %sum_block_label_20

sum_block_label_19:                               ; preds = %sum_block_label_18
  br label %sum_block_label_18

sum_block_label_20:                               ; preds = %sum_block_label_18
  store i32 0, i32* %v_2, align 4
  br label %sum_block_label_21

sum_block_label_21:                               ; preds = %sum_block_label_21, %sum_block_label_20
  br label %sum_block_label_21

sum_block_label_22:                               ; No predecessors!
  store i32 0, i32* %v_2, align 4
  store i32 0, i32* %v_3, align 4
  br label %sum_block_label_23

sum_block_label_23:                               ; preds = %sum_block_label_23, %sum_block_label_22
  br label %sum_block_label_23

sum_block_label_24:                               ; No predecessors!
  %v_30 = icmp sgt i32 1, 2
  br i1 %v_30, label %sum_block_label_25, label %sum_block_label_27

sum_block_label_25:                               ; preds = %sum_block_label_24
  br label %sum_block_label_26

sum_block_label_26:                               ; preds = %sum_block_label_27, %sum_block_label_25
  store i32 1, i32* %v_2, align 4
  %v_31 = sub i32 0, 1
  store i32 %v_31, i32* %v_2, align 4
  %v_32 = add i32 1, 1
  %v_33 = sub i32 0, %v_32
  store i32 %v_33, i32* %v_2, align 4
  store i32 1, i32* %v_2, align 4
  br label %sum_block_label_5

sum_block_label_27:                               ; preds = %sum_block_label_24
  br label %sum_block_label_26
}

define dso_local i32 @main() {
main_block_label_0:
  call void @putstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @s_0, i64 0, i64 0))
  %v_0 = alloca i32, align 4
  store i32 0, i32* %v_0, align 4
  %v_1 = alloca [2 x i32], align 4
  %v_2 = getelementptr inbounds [2 x i32], [2 x i32]* %v_1, i32 0, i32 0
  store i32 1, i32* %v_2, align 4
  %v_3 = getelementptr inbounds [2 x i32], [2 x i32]* %v_1, i32 0, i32 1
  store i32 2, i32* %v_3, align 4
  %v_4 = alloca i32, align 4
  store i32 3, i32* %v_4, align 4
  %v_5 = alloca i32, align 4
  %v_6 = alloca i32, align 4
  %v_7 = alloca i32, align 4
  %v_8 = icmp ne i32 0, 1
  br i1 %v_8, label %main_block_label_1, label %main_block_label_3

main_block_label_1:                               ; preds = %main_block_label_3, %main_block_label_0
  store i32 1, i32* %v_5, align 4
  br label %main_block_label_2

main_block_label_2:                               ; preds = %main_block_label_3, %main_block_label_1
  %v_10 = load i32, i32* %v_0, align 4
  %v_11 = mul i32 %v_10, 1
  %v_12 = srem i32 %v_11, 4
  %v_13 = sdiv i32 %v_12, 2
  call void @putint(i32 %v_13)
  call void @putstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s_1, i64 0, i64 0))
  %v_14 = load i32, i32* %v_0, align 4
  %v_15 = mul i32 %v_14, 1
  %v_16 = srem i32 %v_15, 4
  %v_17 = sdiv i32 %v_16, 2
  %v_18 = icmp sge i32 1, 2
  br i1 %v_18, label %main_block_label_4, label %main_block_label_5

main_block_label_3:                               ; preds = %main_block_label_0
  %v_9 = icmp ne i32 0, 1
  br i1 %v_9, label %main_block_label_1, label %main_block_label_2

main_block_label_4:                               ; preds = %main_block_label_2
  %v_19 = alloca i32, align 4
  %v_20 = add i32 32, 2
  %v_21 = sub i32 %v_20, 1
  %v_22 = load i32, i32* @g_globalVar, align 4
  %v_23 = getelementptr inbounds [2 x i32], [2 x i32]* %v_1, i32 0, i32 1
  %v_24 = load i32, i32* %v_23, align 4
  %v_25 = srem i32 %v_24, 44
  %v_26 = add i32 42, %v_25
  %v_27 = mul i32 %v_22, %v_26
  %v_28 = add i32 %v_21, %v_27
  store i32 %v_28, i32* %v_19, align 4
  br label %main_block_label_5

main_block_label_5:                               ; preds = %main_block_label_4, %main_block_label_2
  %v_29 = alloca i32, align 4
  store i32 2342, i32* %v_29, align 4
  %v_30 = alloca i32, align 4
  store i32 2323, i32* %v_30, align 4
  %v_31 = alloca [2 x i32], align 4
  %v_32 = getelementptr inbounds [2 x i32], [2 x i32]* %v_31, i32 0, i32 0
  store i32 10, i32* %v_32, align 4
  %v_33 = getelementptr inbounds [2 x i32], [2 x i32]* %v_31, i32 0, i32 1
  store i32 10, i32* %v_33, align 4
  %v_34 = alloca i32, align 4
  store i32 1, i32* %v_34, align 4
  %v_35 = getelementptr inbounds [2 x i32], [2 x i32]* %v_31, i32 0, i32 0
  %v_36 = call i32 @f_sum(i32* %v_35, i32 2)
  store i32 %v_36, i32* %v_34, align 4
  %v_37 = load i32, i32* @g_globalVar, align 4
  call void @putstr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @s_2, i64 0, i64 0))
  call void @putint(i32 %v_37)
  call void @putstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s_3, i64 0, i64 0))
  %v_38 = load i32, i32* @g_globalVar, align 4
  %v_39 = load i32, i32* @g_globalVar1, align 4
  call void @putstr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @s_4, i64 0, i64 0))
  call void @putint(i32 %v_39)
  call void @putstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s_5, i64 0, i64 0))
  %v_40 = load i32, i32* @g_globalVar1, align 4
  %v_41 = alloca i32, align 4
  store i32 1, i32* %v_41, align 4
  %v_42 = load i32, i32* %v_29, align 4
  %v_43 = load i32, i32* %v_30, align 4
  %v_44 = getelementptr inbounds [2 x i32], [2 x i32]* %v_31, i32 0, i32 0
  %v_45 = call i32 @f_caculateFunc(i32 %v_42, i32 %v_43, i32* %v_44)
  store i32 %v_45, i32* %v_41, align 4
  %v_46 = load i32, i32* %v_41, align 4
  call void @putstr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @s_6, i64 0, i64 0))
  call void @putint(i32 %v_46)
  call void @putstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s_7, i64 0, i64 0))
  %v_47 = load i32, i32* %v_41, align 4
  call void @f_declareFunc()
  call void @putstr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @s_8, i64 0, i64 0))
  call void @putint(i32 0)
  call void @putstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s_9, i64 0, i64 0))
  call void @putstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @s_10, i64 0, i64 0))
  call void @putstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @s_11, i64 0, i64 0))
  call void @putstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @s_12, i64 0, i64 0))
  %v_49 = load i32, i32* %v_34, align 4
  call void @putstr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @s_13, i64 0, i64 0))
  call void @putint(i32 %v_49)
  call void @putstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @s_14, i64 0, i64 0))
  %v_50 = load i32, i32* %v_34, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getchar() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = load i8, i8* %1, align 1
  %4 = zext i8 %3 to i32
  ret i32 %4
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  br label %3

3:                                                ; preds = %6, %0
  %4 = call i32 @getchar()
  %5 = icmp ne i32 %4, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %3, !llvm.loop !6

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getarray(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %6, !llvm.loop !8

19:                                               ; preds = %6
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putint(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putarray(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %8, !llvm.loop !9

22:                                               ; preds = %8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putstr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %3)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
