.class public Lnet/sf/saxon/expr/parser/Evaluators;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CALL_EVALUATE_OPTIONAL_ITEM:I = 0x7

.field public static final CALL_EVALUATE_SINGLE_ITEM:I = 0x10

.field public static final EVALUATE_AND_MATERIALIZE_VARIABLE:I = 0x6

.field public static final EVALUATE_LITERAL:I = 0x0

.field public static final EVALUATE_SUPPLIED_PARAMETER:I = 0xe

.field public static final EVALUATE_VARIABLE:I = 0x1

.field public static final ITERATE_AND_MATERIALIZE:I = 0x8

.field public static final LAZY_TAIL_EXPRESSION:I = 0xa

.field public static final MAKE_CLOSURE:I = 0x3

.field public static final MAKE_INDEXED_VARIABLE:I = 0xc

.field public static final MAKE_MEMO_CLOSURE:I = 0x4

.field public static final MAKE_SINGLETON_CLOSURE:I = 0xd

.field public static final PROCESS:I = 0x9

.field public static final RETURN_EMPTY_SEQUENCE:I = 0x5

.field public static final SHARED_APPEND_EXPRESSION:I = 0xb

.field public static final STREAMING_ARGUMENT:I = 0xf

.field public static final UNDECIDED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEvaluator(I)Lnet/sf/saxon/expr/parser/Evaluator;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingleItem;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$StreamingArgument;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$StreamingArgument;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$SuppliedParameter;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SuppliedParameter;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SingletonClosure;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MakeIndexedVariable;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$SharedAppend;

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazyTail;

    return-object p0

    :pswitch_8
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Process;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Process;

    return-object p0

    :pswitch_9
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    return-object p0

    :pswitch_a
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$OptionalItem;

    return-object p0

    :pswitch_b
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    return-object p0

    :pswitch_c
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EmptySequenceEvaluator;

    return-object p0

    :pswitch_d
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$MemoClosureEvaluator;

    return-object p0

    :pswitch_e
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$LazySequence;

    return-object p0

    :pswitch_f
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Variable;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Variable;

    return-object p0

    :pswitch_10
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$Literal;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$Literal;

    return-object p0

    :pswitch_11
    sget-object p0, Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;->INSTANCE:Lnet/sf/saxon/expr/parser/Evaluator$EagerSequence;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
