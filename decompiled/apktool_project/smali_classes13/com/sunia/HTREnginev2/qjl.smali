.class public final synthetic Lcom/sunia/HTREnginev2/qjl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qjl;->e:Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qjl;->e:Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    check-cast p2, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->a(Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
