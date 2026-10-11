.class public final synthetic Lcom/sunia/HTREnginev2/mon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mon;->e:Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mon;->e:Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    check-cast p2, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->a(Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
