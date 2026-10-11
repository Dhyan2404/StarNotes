.class public Lcom/sunia/calculatorv2/ink/model/k;
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


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/model/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/calculatorv2/ink/model/f;-><init>()V

    iput-object p1, p0, Lcom/sunia/calculatorv2/ink/model/k;->e:Lcom/sunia/calculatorv2/ink/model/f;

    return-void
.end method


# virtual methods
.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/k;->e:Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "operator"

    return-object p0
.end method

.method public l()Lcom/sunia/calculatorv2/ink/model/f;
    .locals 0

    iget-object p0, p0, Lcom/sunia/calculatorv2/ink/model/k;->e:Lcom/sunia/calculatorv2/ink/model/f;

    return-object p0
.end method
