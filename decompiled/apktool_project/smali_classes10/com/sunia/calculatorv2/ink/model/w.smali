.class public Lcom/sunia/calculatorv2/ink/model/w;
.super Lcom/sunia/calculatorv2/ink/model/g;
.source "SourceFile"


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/b;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Lcom/sunia/HTREnginev2/k;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sunia/calculatorv2/ink/model/g;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/model/w;->j:Lcom/sunia/HTREnginev2/k;

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/w;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/w;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/w;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/w;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/b;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/w;->i:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/w;->i:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/HTREnginev2/k;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/w;->j:Lcom/sunia/HTREnginev2/k;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/w;->h:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "character"

    return-object p0
.end method

.method public q(Lcom/sunia/HTREnginev2/k;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/w;->j:Lcom/sunia/HTREnginev2/k;

    return-void
.end method
