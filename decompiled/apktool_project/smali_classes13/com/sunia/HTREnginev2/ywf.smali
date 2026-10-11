.class public final synthetic Lcom/sunia/HTREnginev2/ywf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ywf;->e:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ywf;->e:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->a(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
