declare i32 @getint() 
declare void @putint(i32)
declare void @putch(i32) 
declare void @putstr(i8*)


@g_maxn = dso_local global i32 200004
@g_N = dso_local global i32 0
@g_V = dso_local global i32 0
@g_sum = dso_local global i32 1
@g_dp = dso_local global [2003 x i32] zeroinitializer


define dso_local i32 @f_max(i32 %a_0, i32 %a_1)
{
max_block_label_0:
	%v_0=alloca i32
	store i32 %a_0, i32* %v_0
	%v_1=alloca i32
	store i32 %a_1, i32* %v_1
	%v_2=load i32,i32* %v_0
	%v_3=load i32,i32* %v_1
	%v_4 = icmp sgt i32 %v_2, %v_3
	br i1 %v_4 , label %max_block_label_1, label %max_block_label_2
max_block_label_1:
	%v_5=load i32,i32* %v_0
	ret i32 %v_5
	br label %max_block_label_2
max_block_label_2:
	%v_6=load i32,i32* %v_1
	ret i32 %v_6
}

define dso_local i32 @main()
{
main_block_label_0:
	%v_0 = call i32 @getint() 
	store i32 %v_0, i32* @g_N
	%v_1 = call i32 @getint() 
	store i32 %v_1, i32* @g_V
	%v_2=alloca i32
	%v_3=alloca i32
	%v_4=alloca [200004 x i32]
	%v_5=alloca [200004 x i32]
	store i32 1, i32* %v_2
	br label %main_block_label_1
main_block_label_1:
	%v_6=load i32,i32* %v_2
	%v_7=load i32,i32* @g_N
	%v_8 = icmp sle i32 %v_6, %v_7
	br i1 %v_8 , label %main_block_label_2, label %main_block_label_3
main_block_label_2:
	%v_9=alloca i32
	%v_10 = call i32 @getint() 
	store i32 %v_10, i32* %v_9
	%v_11=alloca i32
	%v_12 = call i32 @getint() 
	store i32 %v_12, i32* %v_11
	%v_13=alloca i32
	%v_14 = call i32 @getint() 
	store i32 %v_14, i32* %v_13
	store i32 1, i32* %v_3
	br label %main_block_label_4
main_block_label_3:
	store i32 1, i32* %v_2
	br label %main_block_label_9
main_block_label_4:
	%v_15=load i32,i32* %v_3
	%v_16=load i32,i32* %v_13
	%v_17 = icmp sle i32 %v_15, %v_16
	br i1 %v_17 , label %main_block_label_5, label %main_block_label_6
main_block_label_5:
	%v_18=load i32,i32* @g_sum
	%v_19=load i32,i32* %v_3
	%v_20=load i32,i32* %v_9
	%v_21 = mul i32 %v_19, %v_20
	%v_22=load i32,i32* @g_sum
	%v_23 = getelementptr inbounds [200004 x i32], [200004 x i32]* %v_4, i32 0, i32 %v_22
	store i32 %v_21, i32* %v_23
	%v_24=load i32,i32* @g_sum
	%v_25=load i32,i32* %v_3
	%v_26=load i32,i32* %v_11
	%v_27 = mul i32 %v_25, %v_26
	%v_28=load i32,i32* @g_sum
	%v_29 = getelementptr inbounds [200004 x i32], [200004 x i32]* %v_5, i32 0, i32 %v_28
	store i32 %v_27, i32* %v_29
	%v_30=load i32,i32* @g_sum
	%v_31 = add i32 %v_30, 1
	store i32 %v_31, i32* @g_sum
	%v_32=load i32,i32* %v_13
	%v_33=load i32,i32* %v_3
	%v_34 = sub i32 %v_32, %v_33
	store i32 %v_34, i32* %v_13
	%v_35=load i32,i32* %v_3
	%v_36 = mul i32 %v_35, 2
	store i32 %v_36, i32* %v_3
	br label %main_block_label_4
main_block_label_6:
	%v_37=load i32,i32* %v_13
	%v_38 = icmp ne i32 0, %v_37
	br i1 %v_38 , label %main_block_label_7, label %main_block_label_8
main_block_label_7:
	%v_39=load i32,i32* @g_sum
	%v_40=load i32,i32* %v_13
	%v_41=load i32,i32* %v_9
	%v_42 = mul i32 %v_40, %v_41
	%v_43=load i32,i32* @g_sum
	%v_44 = getelementptr inbounds [200004 x i32], [200004 x i32]* %v_4, i32 0, i32 %v_43
	store i32 %v_42, i32* %v_44
	%v_45=load i32,i32* @g_sum
	%v_46=load i32,i32* %v_13
	%v_47=load i32,i32* %v_11
	%v_48 = mul i32 %v_46, %v_47
	%v_49=load i32,i32* @g_sum
	%v_50 = getelementptr inbounds [200004 x i32], [200004 x i32]* %v_5, i32 0, i32 %v_49
	store i32 %v_48, i32* %v_50
	%v_51=load i32,i32* @g_sum
	%v_52 = add i32 %v_51, 1
	store i32 %v_52, i32* @g_sum
	br label %main_block_label_8
main_block_label_8:
	%v_53=load i32,i32* %v_2
	%v_54 = add i32 %v_53, 1
	store i32 %v_54, i32* %v_2
	br label %main_block_label_1
main_block_label_9:
	%v_55=load i32,i32* %v_2
	%v_56=load i32,i32* @g_sum
	%v_57 = icmp sle i32 %v_55, %v_56
	br i1 %v_57 , label %main_block_label_10, label %main_block_label_11
main_block_label_10:
	%v_58=load i32,i32* @g_V
	store i32 %v_58, i32* %v_3
	br label %main_block_label_12
main_block_label_11:
	%v_86=load i32,i32* @g_V
	%v_87 = getelementptr inbounds [2003 x i32], [2003 x i32]* @g_dp, i32 0, i32 %v_86
	%v_88=load i32,i32* %v_87
	call void @putint(i32 %v_88)
	%v_89=load i32,i32* @g_V
	%v_90 = getelementptr inbounds [2003 x i32], [2003 x i32]* @g_dp, i32 0, i32 %v_89
	%v_91=load i32,i32* %v_90
	ret i32 0
main_block_label_12:
	%v_59=load i32,i32* %v_3
	%v_60=load i32,i32* %v_2
	%v_61 = getelementptr inbounds [200004 x i32], [200004 x i32]* %v_4, i32 0, i32 %v_60
	%v_62=load i32,i32* %v_61
	%v_63 = icmp sge i32 %v_59, %v_62
	br i1 %v_63 , label %main_block_label_13, label %main_block_label_14
main_block_label_13:
	%v_64=load i32,i32* %v_3
	%v_65=load i32,i32* %v_3
	%v_66 = getelementptr inbounds [2003 x i32], [2003 x i32]* @g_dp, i32 0, i32 %v_65
	%v_67=load i32,i32* %v_66
	%v_68=load i32,i32* %v_3
	%v_69=load i32,i32* %v_2
	%v_70 = getelementptr inbounds [200004 x i32], [200004 x i32]* %v_4, i32 0, i32 %v_69
	%v_71=load i32,i32* %v_70
	%v_72 = sub i32 %v_68, %v_71
	%v_73 = getelementptr inbounds [2003 x i32], [2003 x i32]* @g_dp, i32 0, i32 %v_72
	%v_74=load i32,i32* %v_73
	%v_75=load i32,i32* %v_2
	%v_76 = getelementptr inbounds [200004 x i32], [200004 x i32]* %v_5, i32 0, i32 %v_75
	%v_77=load i32,i32* %v_76
	%v_78 = add i32 %v_74, %v_77
	%v_79 = call i32 @f_max(i32 %v_67, i32 %v_78)
	%v_80=load i32,i32* %v_3
	%v_81 = getelementptr inbounds [2003 x i32], [2003 x i32]* @g_dp, i32 0, i32 %v_80
	store i32 %v_79, i32* %v_81
	%v_82=load i32,i32* %v_3
	%v_83 = sub i32 %v_82, 1
	store i32 %v_83, i32* %v_3
	br label %main_block_label_12
main_block_label_14:
	%v_84=load i32,i32* %v_2
	%v_85 = add i32 %v_84, 1
	store i32 %v_85, i32* %v_2
	br label %main_block_label_9
}

