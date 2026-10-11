.class public final synthetic Lcom/sunia/HTREnginev2/mao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;IIILorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mao;->a:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput p2, p0, Lcom/sunia/HTREnginev2/mao;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/mao;->c:I

    iput p4, p0, Lcom/sunia/HTREnginev2/mao;->d:I

    iput-object p5, p0, Lcom/sunia/HTREnginev2/mao;->e:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mao;->a:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget v1, p0, Lcom/sunia/HTREnginev2/mao;->b:I

    iget v2, p0, Lcom/sunia/HTREnginev2/mao;->c:I

    iget v3, p0, Lcom/sunia/HTREnginev2/mao;->d:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mao;->e:Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {v0, v1, v2, v3, p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->b(Lorg/apache/poi/ss/formula/WorkbookEvaluator;IIILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method
