.class public final synthetic Lorg/apache/poi/ss/formula/functions/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$EvalConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    check-cast p2, Lorg/apache/poi/ss/formula/functions/DoubleList;

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$ConsumerFactory;->d(Lorg/apache/poi/ss/formula/eval/BlankEval;Lorg/apache/poi/ss/formula/functions/DoubleList;)V

    return-void
.end method
