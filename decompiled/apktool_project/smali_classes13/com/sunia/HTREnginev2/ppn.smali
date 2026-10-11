.class public final synthetic Lcom/sunia/HTREnginev2/ppn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ppn;->e:Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;

    iput p2, p0, Lcom/sunia/HTREnginev2/ppn;->f:I

    iput p3, p0, Lcom/sunia/HTREnginev2/ppn;->g:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ppn;->e:Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;

    iget v1, p0, Lcom/sunia/HTREnginev2/ppn;->f:I

    iget p0, p0, Lcom/sunia/HTREnginev2/ppn;->g:I

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;->a(Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0
.end method
