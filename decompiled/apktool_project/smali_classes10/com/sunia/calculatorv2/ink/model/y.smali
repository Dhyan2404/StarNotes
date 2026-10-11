.class public Lcom/sunia/calculatorv2/ink/model/y;
.super Lcom/sunia/calculatorv2/ink/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/f<",
        "Lcom/sunia/calculatorv2/ink/model/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/w;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/w;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/y;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/y;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/y;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/t8p;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/t8p;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/y;->f:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/y;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/y;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/util/Alternative<",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/w;",
            ">;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/y;->e:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "word"

    return-object p0
.end method
