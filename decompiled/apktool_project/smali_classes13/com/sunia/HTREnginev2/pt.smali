.class public final synthetic Lcom/sunia/HTREnginev2/pt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/pt;->e:I

    iput p2, p0, Lcom/sunia/HTREnginev2/pt;->f:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/pt;->e:I

    iget p0, p0, Lcom/sunia/HTREnginev2/pt;->f:I

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->c(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
