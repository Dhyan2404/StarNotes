.class public final synthetic Lcom/sunia/HTREnginev2/nao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/apache/poi/ss/formula/OperationEvaluationContext;

.field public final synthetic c:[Lorg/apache/poi/ss/formula/ptg/Ptg;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nao;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nao;->b:Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/nao;->c:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nao;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nao;->b:Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nao;->c:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0, v1, p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->a(Ljava/lang/String;Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method
