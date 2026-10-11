.class public Lcom/sunia/calculatorv2/ink/model/h;
.super Lcom/sunia/calculatorv2/ink/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/calculatorv2/ink/model/f<",
        "Lcom/sunia/calculatorv2/ink/model/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lcom/sunia/calculatorv2/ink/model/f;

.field public final f:Lcom/sunia/calculatorv2/ink/model/f;

.field public final h:Lcom/sunia/calculatorv2/ink/model/r;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/h;->e:Lcom/sunia/calculatorv2/ink/model/f;

    iput-object p3, p0, Lcom/sunia/calculatorv2/ink/model/h;->h:Lcom/sunia/calculatorv2/ink/model/r;

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/model/h;->f:Lcom/sunia/calculatorv2/ink/model/f;

    return-void
.end method

.method public static q(Lcom/sunia/calculatorv2/ink/model/f;)Z
    .locals 3

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Lcom/sunia/calculatorv2/ink/model/h;->q(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result p0

    return p0

    :cond_1
    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fraction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sunia/calculatorv2/ink/model/f;

    iget-object v4, p0, Lcom/sunia/calculatorv2/ink/model/h;->e:Lcom/sunia/calculatorv2/ink/model/f;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/sunia/calculatorv2/ink/model/h;->f:Lcom/sunia/calculatorv2/ink/model/f;

    aput-object v3, v0, v2

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/h;->h:Lcom/sunia/calculatorv2/ink/model/r;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/h;->j()Ljava/lang/String;

    move-result-object v0

    const-string v4, "partialfractiondenominator"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Lcom/sunia/calculatorv2/ink/model/f;

    iget-object v1, p0, Lcom/sunia/calculatorv2/ink/model/h;->f:Lcom/sunia/calculatorv2/ink/model/f;

    aput-object v1, v0, v3

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/h;->h:Lcom/sunia/calculatorv2/ink/model/r;

    aput-object p0, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-array v0, v1, [Lcom/sunia/calculatorv2/ink/model/f;

    iget-object v1, p0, Lcom/sunia/calculatorv2/ink/model/h;->e:Lcom/sunia/calculatorv2/ink/model/f;

    aput-object v1, v0, v3

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/h;->h:Lcom/sunia/calculatorv2/ink/model/r;

    aput-object p0, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/h;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/h;->e:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/model/h;->q(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "partialfractiondenominator"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/calculatorv2/ink/model/h;->f:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0}, Lcom/sunia/calculatorv2/ink/model/h;->q(Lcom/sunia/calculatorv2/ink/model/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "partialfractionnumerator"

    goto :goto_0

    :cond_1
    const-string v0, "fraction"

    :goto_0
    iput-object v0, p0, Lcom/sunia/calculatorv2/ink/model/h;->i:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/h;->i:Ljava/lang/String;

    return-object p0
.end method

.method public l()Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/h;->f:Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method

.method public m()Lcom/sunia/calculatorv2/ink/model/r;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/h;->h:Lcom/sunia/calculatorv2/ink/model/r;

    return-object p0
.end method

.method public n()Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/h;->e:Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method
