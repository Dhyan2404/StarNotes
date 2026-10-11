.class public Lcom/sunia/calculatorv2/ink/model/q;
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

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/calculatorv2/ink/model/f;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/q;->e:Lcom/sunia/calculatorv2/ink/model/f;

    iput-object p2, p0, Lcom/sunia/calculatorv2/ink/model/q;->f:Lcom/sunia/calculatorv2/ink/model/f;

    iput-boolean p3, p0, Lcom/sunia/calculatorv2/ink/model/q;->h:Z

    iput-boolean p4, p0, Lcom/sunia/calculatorv2/ink/model/q;->i:Z

    return-void
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sunia/calculatorv2/ink/model/f;

    iget-object v1, p0, Lcom/sunia/calculatorv2/ink/model/q;->e:Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/q;->f:Lcom/sunia/calculatorv2/ink/model/f;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/model/q;->i:Z

    if-eqz p0, :cond_0

    const-string p0, "overscript"

    goto :goto_0

    :cond_0
    const-string p0, "superscript"

    :goto_0
    return-object p0
.end method

.method public l()Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/q;->e:Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method

.method public m()Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/q;->f:Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/model/q;->h:Z

    return p0
.end method

.method public o()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/calculatorv2/ink/model/q;->i:Z

    return p0
.end method
